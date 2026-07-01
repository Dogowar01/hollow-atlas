import React, { useEffect, useRef } from 'react';
import { View, StyleSheet } from 'react-native';
import { useRouter } from 'expo-router';
import { Location } from '../types';
import { Colors, CategoryColors, CategoryLabels } from '../constants/theme';

// Web-only component (imported by MapScreen.web.tsx). Leaflet is loaded from
// CDN at runtime so it never executes during static (SSR) export and needs no
// Metro bundling support.

const LEAFLET_VERSION = '1.9.4';
const LEAFLET_JS = `https://unpkg.com/leaflet@${LEAFLET_VERSION}/dist/leaflet.js`;
const LEAFLET_CSS = `https://unpkg.com/leaflet@${LEAFLET_VERSION}/dist/leaflet.css`;

const AUSTRALIA_CENTER: [number, number] = [-27.5, 134.0];
const AUSTRALIA_ZOOM = 4;

let leafletPromise: Promise<any> | null = null;

function loadLeaflet(): Promise<any> {
  if (leafletPromise) return leafletPromise;
  leafletPromise = new Promise((resolve, reject) => {
    const w = window as any;
    if (w.L) { resolve(w.L); return; }

    const css = document.createElement('link');
    css.rel = 'stylesheet';
    css.href = LEAFLET_CSS;
    document.head.appendChild(css);

    const script = document.createElement('script');
    script.src = LEAFLET_JS;
    script.onload = () => resolve(w.L);
    script.onerror = () => { leafletPromise = null; reject(new Error('Leaflet failed to load')); };
    document.head.appendChild(script);
  });
  return leafletPromise;
}

// Dark, themed overrides for Leaflet chrome — injected once.
function injectMapTheme() {
  if (document.getElementById('hollow-map-theme')) return;
  const style = document.createElement('style');
  style.id = 'hollow-map-theme';
  style.textContent = `
    .hollow-map .leaflet-container { background: ${Colors.mapWater}; font-family: Rajdhani_500Medium, sans-serif; }
    .hollow-map .leaflet-control-zoom a {
      background: ${Colors.surface2}; color: ${Colors.amberDim};
      border: 1px solid ${Colors.borderEmphasis}; border-radius: 0;
    }
    .hollow-map .leaflet-control-zoom a:hover { color: ${Colors.amberBright}; background: ${Colors.surface3}; }
    .hollow-map .leaflet-control-attribution {
      background: rgba(8,7,5,0.75); color: ${Colors.textMuted}; font-size: 9px;
    }
    .hollow-map .leaflet-control-attribution a { color: ${Colors.textMuted}; }
    .hollow-map .leaflet-popup-content-wrapper {
      background: ${Colors.surface2}; color: ${Colors.textPrimary};
      border: 1px solid ${Colors.borderEmphasis}; border-radius: 0;
      box-shadow: 0 8px 30px rgba(0,0,0,0.7);
    }
    .hollow-map .leaflet-popup-tip { background: ${Colors.surface2}; border: 1px solid ${Colors.borderEmphasis}; }
    .hollow-map .leaflet-popup-content { margin: 14px 16px; }
    .hollow-map .hollow-popup-cat {
      font-family: Rajdhani_700Bold, sans-serif; font-size: 8px; letter-spacing: 2px; margin-bottom: 6px;
    }
    .hollow-map .hollow-popup-name {
      font-family: CormorantGaramond_600SemiBold, serif; font-size: 19px;
      color: ${Colors.textPrimary}; line-height: 1.15; margin-bottom: 5px;
    }
    .hollow-map .hollow-popup-tagline {
      font-family: CormorantGaramond_400Regular_Italic, serif; font-size: 13px;
      color: ${Colors.textSecondary}; line-height: 1.4; margin-bottom: 10px;
    }
    .hollow-map .hollow-popup-open {
      display: inline-block; cursor: pointer;
      font-family: Rajdhani_700Bold, sans-serif; font-size: 9px; letter-spacing: 1.5px;
      color: ${Colors.amber}; border: 1px solid ${Colors.amber}66;
      padding: 6px 12px; background: transparent;
    }
    .hollow-map .hollow-popup-open:hover { background: ${Colors.amber}1A; }
  `;
  document.head.appendChild(style);
}

interface Props {
  locations: Location[];
  height?: number;
}

export function WebMap({ locations, height = 480 }: Props) {
  const router = useRouter();
  const containerRef = useRef<HTMLDivElement | null>(null);
  const mapRef = useRef<any>(null);
  const markerLayerRef = useRef<any>(null);
  const routerRef = useRef(router);
  routerRef.current = router;

  // Init map once
  useEffect(() => {
    let cancelled = false;

    loadLeaflet().then(L => {
      if (cancelled || !containerRef.current || mapRef.current) return;
      injectMapTheme();

      const map = L.map(containerRef.current, {
        center: AUSTRALIA_CENTER,
        zoom: AUSTRALIA_ZOOM,
        minZoom: 3,
        maxZoom: 17,
        scrollWheelZoom: false, // don't hijack page scroll — zoom via controls/pinch
        attributionControl: true,
      });

      L.tileLayer('https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png', {
        attribution: '&copy; OpenStreetMap &copy; CARTO',
        subdomains: 'abcd',
      }).addTo(map);

      markerLayerRef.current = L.layerGroup().addTo(map);
      mapRef.current = map;
      syncMarkers(L);
    }).catch(() => {
      // Leaflet CDN unreachable — the section simply stays dark.
    });

    return () => {
      cancelled = true;
      if (mapRef.current) {
        mapRef.current.remove();
        mapRef.current = null;
        markerLayerRef.current = null;
      }
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  // Sync markers whenever locations change
  useEffect(() => {
    const L = (window as any).L;
    if (L && mapRef.current) syncMarkers(L);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [locations]);

  function syncMarkers(L: any) {
    const layer = markerLayerRef.current;
    if (!layer) return;
    layer.clearLayers();

    locations.forEach(loc => {
      const color = CategoryColors[loc.category] || Colors.amber;
      const radius = loc.report_count >= 800 ? 9 : loc.report_count >= 300 ? 7.5 : 6;

      // Soft outer glow
      L.circleMarker([loc.latitude, loc.longitude], {
        radius: radius + 6,
        color: 'transparent',
        fillColor: color,
        fillOpacity: 0.16,
        interactive: false,
      }).addTo(layer);

      const marker = L.circleMarker([loc.latitude, loc.longitude], {
        radius,
        color,
        weight: 1.5,
        opacity: 0.9,
        fillColor: color,
        fillOpacity: 0.45,
      }).addTo(layer);

      const popupEl = document.createElement('div');

      const cat = document.createElement('div');
      cat.className = 'hollow-popup-cat';
      cat.style.color = color;
      cat.textContent = `● ${CategoryLabels[loc.category] || String(loc.category).toUpperCase()}`;
      popupEl.appendChild(cat);

      const name = document.createElement('div');
      name.className = 'hollow-popup-name';
      name.textContent = loc.name;
      popupEl.appendChild(name);

      const tagline = document.createElement('div');
      tagline.className = 'hollow-popup-tagline';
      tagline.textContent = loc.tagline;
      popupEl.appendChild(tagline);

      const open = document.createElement('span');
      open.className = 'hollow-popup-open';
      open.textContent = 'OPEN RECORD  →';
      open.addEventListener('click', () => {
        routerRef.current.push(`/location/${loc.slug || loc.id}` as any);
      });
      popupEl.appendChild(open);

      marker.bindPopup(popupEl, { maxWidth: 260, closeButton: false });
    });
  }

  return (
    <View style={[styles.frame, { height }]}>
      <div
        ref={containerRef}
        className="hollow-map"
        style={{ position: 'absolute', top: 0, left: 0, right: 0, bottom: 0 }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  frame: {
    width: '100%',
    backgroundColor: Colors.mapWater,
    borderWidth: 1,
    borderColor: Colors.borderEmphasis,
    overflow: 'hidden',
  },
});
