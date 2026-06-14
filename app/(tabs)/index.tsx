import React, { useState, useRef, useEffect, useCallback, useMemo } from 'react';
import {
  View, Text, StyleSheet, TouchableOpacity,
  Animated, ActivityIndicator, ScrollView,
  TextInput,
} from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';
import MapView, { Marker, PROVIDER_GOOGLE, Region } from 'react-native-maps';
import { Feather } from '@expo/vector-icons';
import { useRouter } from 'expo-router';
import { useLocations, Bounds } from '../../src/hooks/useLocations';
import { useUserLocation } from '../../src/context/UserLocationContext';
import { Location } from '../../src/types';
import {
  Colors, Fonts, CategoryColors, CategoryLabels,
  Spacing, Category,
} from '../../src/constants/theme';
import { MapMarker } from '../../src/components/MapMarker';
import { PrimaryButton } from '../../src/components/PrimaryButton';

// ── Category filter chips ─────────────────────────────────────────────────────
const CATEGORY_FILTERS: { label: string; value: Category | 'all' }[] = [
  { label: 'ALL',            value: 'all' },
  { label: 'HAUNTED',        value: 'haunted' },
  { label: 'ABANDONED',      value: 'abandoned' },
  { label: 'FOLKLORE',       value: 'folklore' },
  { label: 'PARANORMAL',     value: 'paranormal' },
  { label: 'STRANGE HISTORY',value: 'strange_history' },
];

// ── State filter chips ────────────────────────────────────────────────────────
const STATE_FILTERS: { label: string; value: string }[] = [
  { label: 'ALL STATES',          value: 'ALL' },
  { label: 'QUEENSLAND',          value: 'QLD' },
  { label: 'NEW SOUTH WALES',     value: 'NSW' },
  { label: 'VICTORIA',            value: 'VIC' },
  { label: 'SOUTH AUSTRALIA',     value: 'SA'  },
  { label: 'WESTERN AUSTRALIA',   value: 'WA'  },
  { label: 'NORTHERN TERRITORY',  value: 'NT'  },
  { label: 'TASMANIA',            value: 'TAS' },
];

// Map region to fly to when a state is selected
const STATE_REGIONS: Record<string, Region> = {
  ALL: { latitude: -31.0, longitude: 128.0, latitudeDelta: 28, longitudeDelta: 28 },
  QLD: { latitude: -22.0, longitude: 144.5, latitudeDelta: 16, longitudeDelta: 16 },
  NSW: { latitude: -32.5, longitude: 147.5, latitudeDelta: 9,  longitudeDelta: 9  },
  VIC: { latitude: -37.1, longitude: 144.5, latitudeDelta: 5,  longitudeDelta: 5  },
  SA:  { latitude: -32.0, longitude: 136.0, latitudeDelta: 12, longitudeDelta: 12 },
  WA:  { latitude: -26.0, longitude: 121.0, latitudeDelta: 18, longitudeDelta: 18 },
  NT:  { latitude: -19.5, longitude: 133.5, latitudeDelta: 14, longitudeDelta: 14 },
  TAS: { latitude: -42.0, longitude: 146.5, latitudeDelta: 6,  longitudeDelta: 6  },
};

// ── Map style ─────────────────────────────────────────────────────────────────
const DARK_MAP_STYLE = [
  { elementType: 'geometry', stylers: [{ color: '#0d0b08' }] },
  { elementType: 'labels.text.fill', stylers: [{ color: '#5c5248' }] },
  { elementType: 'labels.text.stroke', stylers: [{ color: '#0c0a07' }] },
  { featureType: 'administrative', elementType: 'geometry.stroke', stylers: [{ color: '#1a1510' }] },
  { featureType: 'road', elementType: 'geometry', stylers: [{ color: '#221c12' }] },
  { featureType: 'road', elementType: 'labels.text.fill', stylers: [{ color: '#5c5248' }] },
  { featureType: 'water', elementType: 'geometry', stylers: [{ color: '#060810' }] },
  { featureType: 'water', elementType: 'labels.text.fill', stylers: [{ color: '#3d3d3d' }] },
  { featureType: 'poi', stylers: [{ visibility: 'off' }] },
  { featureType: 'transit', stylers: [{ visibility: 'off' }] },
  { featureType: 'landscape', elementType: 'geometry', stylers: [{ color: '#0f0d09' }] },
];

const DEFAULT_REGION: Region = {
  latitude: -31.0,
  longitude: 128.0,
  latitudeDelta: 28,
  longitudeDelta: 28,
};

// ── Clustering ────────────────────────────────────────────────────────────────
// Clustering activates above this latitudeDelta (~150 km view).
// Below it, individual compact dots are clear enough.
const CLUSTER_THRESHOLD = 1.5;

interface LocationCluster {
  id: string;
  latitude: number;
  longitude: number;
  count: number;
  items: Location[];
}

/**
 * Pure JS grid-based clustering. Divides the world into cells of `cellSize`
 * degrees; locations sharing a cell are merged into a cluster.
 */
function buildClusters(
  locations: Location[],
  latitudeDelta: number,
): { clusters: LocationCluster[]; singles: Location[] } {
  // Aim for roughly a 6×6 grid over the visible area
  const cellSize = Math.max(latitudeDelta / 6, 0.05);
  const cells = new Map<string, Location[]>();

  for (const loc of locations) {
    const cx = Math.floor(loc.longitude / cellSize);
    const cy = Math.floor(loc.latitude  / cellSize);
    const key = `${cx},${cy}`;
    const arr = cells.get(key) ?? [];
    arr.push(loc);
    cells.set(key, arr);
  }

  const clusters: LocationCluster[] = [];
  const singles: Location[] = [];

  for (const [key, group] of cells) {
    if (group.length === 1) {
      singles.push(group[0]);
    } else {
      const lat = group.reduce((s, l) => s + l.latitude,  0) / group.length;
      const lng = group.reduce((s, l) => s + l.longitude, 0) / group.length;
      clusters.push({ id: key, latitude: lat, longitude: lng, count: group.length, items: group });
    }
  }

  return { clusters, singles };
}

// ── Cluster marker component ──────────────────────────────────────────────────
function ClusterMarker({ count }: { count: number }) {
  const outer = count >= 30 ? 56 : count >= 15 ? 48 : count >= 7 ? 40 : 34;
  const inner = outer - 14;
  return (
    <View pointerEvents="none" style={[clusterStyles.outer, { width: outer, height: outer, borderRadius: outer / 2 }]}>
      <View style={[clusterStyles.inner, { width: inner, height: inner, borderRadius: inner / 2 }]}>
        <Text style={clusterStyles.count}>{count}</Text>
      </View>
    </View>
  );
}

const clusterStyles = StyleSheet.create({
  outer: {
    backgroundColor: Colors.amber + '1A',
    borderWidth: 1.5,
    borderColor: Colors.amber + '80',
    alignItems: 'center',
    justifyContent: 'center',
  },
  inner: {
    backgroundColor: Colors.amber + '28',
    alignItems: 'center',
    justifyContent: 'center',
  },
  count: {
    fontFamily: Fonts.uiBold,
    fontSize: 12,
    color: Colors.amber,
    letterSpacing: 0.5,
  },
});

// ── Helpers ───────────────────────────────────────────────────────────────────
function regionToBounds(region: Region, padding = 0.15): Bounds {
  const latPad = region.latitudeDelta * padding;
  const lonPad = region.longitudeDelta * padding;
  return {
    north: region.latitude + region.latitudeDelta / 2 + latPad,
    south: region.latitude - region.latitudeDelta / 2 - latPad,
    east:  region.longitude + region.longitudeDelta / 2 + lonPad,
    west:  region.longitude - region.longitudeDelta / 2 - lonPad,
  };
}

// ── Screen ────────────────────────────────────────────────────────────────────
export default function MapScreen() {
  const router = useRouter();
  const { coords, permissionDenied } = useUserLocation();

  const [activeCategory, setActiveCategory] = useState<Category | 'all'>('all');
  const [activeState,    setActiveState]    = useState<string>('ALL');
  const [searchQuery,    setSearchQuery]    = useState('');
  const [bounds,         setBounds]         = useState<Bounds>(() => regionToBounds(DEFAULT_REGION));
  const [latitudeDelta,  setLatitudeDelta]  = useState(DEFAULT_REGION.latitudeDelta);
  const [selectedLocation, setSelectedLocation] = useState<Location | null>(null);

  // Show compact dots (no labels) until zoomed to roughly a 50 km view
  const compactMarkers = latitudeDelta > 0.5;

  const category    = activeCategory === 'all' ? undefined : activeCategory;
  const stateFilter = activeState    === 'ALL' ? undefined : activeState;

  const { locations, loading } = useLocations(category, coords, null, stateFilter);

  // Client-side search filter
  const displayLocations = useMemo(() => {
    const q = searchQuery.trim().toLowerCase();
    if (!q) return locations;
    return locations.filter(l =>
      l.name.toLowerCase().includes(q) ||
      l.tagline.toLowerCase().includes(q)
    );
  }, [locations, searchQuery]);

  // Cluster when zoomed out beyond threshold; below it individual dots are fine
  const { clusters, singles } = useMemo(() => {
    if (latitudeDelta <= CLUSTER_THRESHOLD) {
      return { clusters: [] as LocationCluster[], singles: displayLocations };
    }
    return buildClusters(displayLocations, latitudeDelta);
  }, [displayLocations, latitudeDelta]);

  // Viewport culling — only pass markers that are actually on screen to the map.
  // Without this, zooming in past CLUSTER_THRESHOLD hands ALL 300+ locations to
  // react-native-maps as individual custom-view markers, which overloads the native
  // snapshot renderer and causes crashes during pan/zoom gestures.
  const visibleSingles = useMemo(() => {
    // Clustering handles the zoomed-out case; culling is only critical when every
    // location becomes its own marker (latitudeDelta <= CLUSTER_THRESHOLD).
    if (latitudeDelta > CLUSTER_THRESHOLD) return singles;
    return singles.filter(l =>
      l.latitude  >= bounds.south &&
      l.latitude  <= bounds.north &&
      l.longitude >= bounds.west  &&
      l.longitude <= bounds.east
    );
  }, [singles, bounds, latitudeDelta]);

  const visibleClusters = useMemo(() =>
    clusters.filter(c =>
      c.latitude  >= bounds.south &&
      c.latitude  <= bounds.north &&
      c.longitude >= bounds.west  &&
      c.longitude <= bounds.east
    ),
  [clusters, bounds]);

  const mapRef              = useRef<MapView>(null);
  const cardAnim            = useRef(new Animated.Value(0)).current;
  const introAnim           = useRef(new Animated.Value(1)).current;
  const centeredRef         = useRef(false);
  const lastMarkerPressTime = useRef(0);
  const regionTimer         = useRef<ReturnType<typeof setTimeout> | null>(null);
  const [tracksViewChanges, setTracksViewChanges] = useState(false);
  const [mapReady,          setMapReady]          = useState(false);
  const [showIntro,         setShowIntro]         = useState(false);

  // Check if first run
  useEffect(() => {
    AsyncStorage.getItem('hollow_atlas_intro_seen').then(val => {
      if (!val) setShowIntro(true);
    });
  }, []);

  const dismissIntro = async () => {
    await AsyncStorage.setItem('hollow_atlas_intro_seen', '1');
    Animated.timing(introAnim, { toValue: 0, duration: 500, useNativeDriver: true })
      .start(() => setShowIntro(false));
  };

  const jumpToAll = () => {
    setActiveState('ALL');
    mapRef.current?.animateToRegion(STATE_REGIONS.ALL, 800);
  };

  // Centre on user once when GPS first arrives
  useEffect(() => {
    if (coords && !centeredRef.current) {
      centeredRef.current = true;
      const region = {
        latitude:  coords.latitude,
        longitude: coords.longitude,
        latitudeDelta:  0.15,
        longitudeDelta: 0.15,
      };
      mapRef.current?.animateToRegion(region, 800);
      setBounds(regionToBounds(region));
    }
  }, [coords]);

  // Thaw marker snapshots when the map becomes ready, data set changes,
  // compact mode switches, or selection changes. Starting frozen (false) and
  // only thawing briefly prevents the initial load freeze where 30+ cluster
  // markers all try to snapshot simultaneously during Google Maps init.
  useEffect(() => {
    if (!mapReady) return;
    setTracksViewChanges(true);
    if (displayLocations.length === 0) return;
    const t = setTimeout(() => setTracksViewChanges(false), 600);
    return () => clearTimeout(t);
  }, [mapReady, displayLocations, compactMarkers, selectedLocation?.id]);

  // Debounced region handler — programmatic animations (handleClusterPress,
  // handleStatePress) can fire onRegionChangeComplete several times during the
  // animation. Without debouncing each event triggers a full marker reconciliation.
  const handleRegionChangeComplete = useCallback((region: Region) => {
    if (regionTimer.current) clearTimeout(regionTimer.current);
    regionTimer.current = setTimeout(() => {
      setBounds(regionToBounds(region));
      setLatitudeDelta(region.latitudeDelta);
    }, 150);
  }, []);

  const handleCategoryPress = (value: Category | 'all') => {
    setActiveCategory(value);
    if (selectedLocation) {
      Animated.timing(cardAnim, { toValue: 0, duration: 150, useNativeDriver: true })
        .start(({ finished }) => { if (finished) setSelectedLocation(null); });
    }
  };

  const handleStatePress = (value: string) => {
    setActiveState(value);
    setSearchQuery('');
    if (selectedLocation) {
      Animated.timing(cardAnim, { toValue: 0, duration: 150, useNativeDriver: true })
        .start(({ finished }) => { if (finished) setSelectedLocation(null); });
    }
    mapRef.current?.animateToRegion(STATE_REGIONS[value], 900);
  };

  const handleMarkerPress = useCallback((location: Location) => {
    lastMarkerPressTime.current = Date.now();
    setSelectedLocation(location);
    Animated.spring(cardAnim, { toValue: 1, useNativeDriver: true, tension: 80 }).start();
  }, [cardAnim]);

  // Tapping a cluster zooms to fit all of its items
  const handleClusterPress = useCallback((cluster: LocationCluster) => {
    lastMarkerPressTime.current = Date.now();
    const lats = cluster.items.map(l => l.latitude);
    const lngs = cluster.items.map(l => l.longitude);
    const minLat = Math.min(...lats);
    const maxLat = Math.max(...lats);
    const minLng = Math.min(...lngs);
    const maxLng = Math.max(...lngs);
    // Padding so the outermost markers aren't right at the edge
    const latPad = Math.max((maxLat - minLat) * 0.5, 0.5);
    const lngPad = Math.max((maxLng - minLng) * 0.5, 0.5);
    mapRef.current?.animateToRegion({
      latitude:       (minLat + maxLat) / 2,
      longitude:      (minLng + maxLng) / 2,
      latitudeDelta:  maxLat - minLat + latPad,
      longitudeDelta: maxLng - minLng + lngPad,
    }, 500);
  }, []);

  const handleClose = useCallback(() => {
    Animated.timing(cardAnim, { toValue: 0, duration: 200, useNativeDriver: true })
      .start(({ finished }) => { if (finished) setSelectedLocation(null); });
  }, [cardAnim]);

  const handleMapPress = () => {
    if (Date.now() - lastMarkerPressTime.current < 300) return;
    handleClose();
  };

  const handleLocateMe = () => {
    if (!coords) return;
    const region = {
      latitude:       coords.latitude,
      longitude:      coords.longitude,
      latitudeDelta:  0.08,
      longitudeDelta: 0.08,
    };
    mapRef.current?.animateToRegion(region, 600);
  };

  const cardTranslate = cardAnim.interpolate({
    inputRange:  [0, 1],
    outputRange: [300, 0],
  });

  return (
    <View style={styles.container}>
      <MapView
        ref={mapRef}
        style={styles.map}
        provider={PROVIDER_GOOGLE}
        customMapStyle={DARK_MAP_STYLE}
        initialRegion={DEFAULT_REGION}
        showsUserLocation={!permissionDenied}
        showsMyLocationButton={false}
        onPress={handleMapPress}
        onRegionChangeComplete={handleRegionChangeComplete}
        onMapReady={() => setMapReady(true)}
      >
        {/* Hold off all markers until Google Maps has fully initialised.
            Rendering custom-view Markers during SDK init causes the 30+
            simultaneous native snapshots that freeze the app on open. */}
        {mapReady && visibleClusters.map(cluster => (
          <Marker
            key={`cluster-${cluster.id}`}
            coordinate={{ latitude: cluster.latitude, longitude: cluster.longitude }}
            onPress={() => handleClusterPress(cluster)}
            tracksViewChanges={tracksViewChanges}
            anchor={{ x: 0.5, y: 0.5 }}
          >
            <ClusterMarker count={cluster.count} />
          </Marker>
        ))}

        {/* ── Individual markers (viewport-culled) ────────── */}
        {mapReady && visibleSingles.map(location => {
          const isSelected = selectedLocation?.id === location.id;
          return (
            <Marker
              key={location.id}
              coordinate={{ latitude: location.latitude, longitude: location.longitude }}
              onPress={() => handleMarkerPress(location)}
              // Keep tracking enabled for the selected marker so the dot-size change
              // (10→14px) is captured by the native snapshot — freezing it while
              // selected causes a native view inconsistency and crashes.
              tracksViewChanges={tracksViewChanges || isSelected}
              anchor={{ x: 0.5, y: compactMarkers ? 0.5 : 1 }}
            >
              <MapMarker
                name={location.name}
                category={location.category}
                selected={isSelected}
                compact={compactMarkers}
              />
            </Marker>
          );
        })}
      </MapView>

      {/* ── Top controls ───────────────────────────────────── */}
      <View style={styles.topBar}>

        {/* Search bar */}
        <View style={styles.searchRow}>
          <Feather name="search" size={13} color={Colors.textMuted} style={styles.searchIcon} />
          <TextInput
            style={styles.searchInput}
            value={searchQuery}
            onChangeText={setSearchQuery}
            placeholder="SEARCH LOCATIONS..."
            placeholderTextColor={Colors.textMuted}
            autoCorrect={false}
            autoCapitalize="none"
            returnKeyType="search"
          />
          {searchQuery.length > 0 && (
            <TouchableOpacity
              onPress={() => setSearchQuery('')}
              hitSlop={{ top: 8, bottom: 8, left: 8, right: 8 }}
            >
              <Feather name="x" size={13} color={Colors.textMuted} />
            </TouchableOpacity>
          )}
        </View>

        {/* State chips */}
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={styles.stateRow}
        >
          {STATE_FILTERS.map(s => {
            const isActive = activeState === s.value;
            return (
              <TouchableOpacity
                key={s.value}
                style={[
                  styles.chip,
                  styles.stateChip,
                  isActive && { borderColor: Colors.amber, backgroundColor: Colors.amber + '22' },
                ]}
                onPress={() => handleStatePress(s.value)}
                activeOpacity={0.7}
              >
                {isActive && (
                  <View style={[styles.chipDot, { backgroundColor: Colors.amber }]} />
                )}
                <Text style={[styles.chipText, isActive && { color: Colors.amber }]}>
                  {s.label}
                </Text>
              </TouchableOpacity>
            );
          })}
        </ScrollView>

        {/* Category chips */}
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={styles.filterRow}
        >
          {CATEGORY_FILTERS.map(f => {
            const isActive = activeCategory === f.value;
            const chipColor = f.value === 'all'
              ? Colors.amberDim
              : CategoryColors[f.value as Category];

            return (
              <TouchableOpacity
                key={f.value}
                style={[
                  styles.chip,
                  isActive && { borderColor: chipColor, backgroundColor: chipColor + '22' },
                ]}
                onPress={() => handleCategoryPress(f.value)}
                activeOpacity={0.7}
              >
                {isActive && f.value !== 'all' && (
                  <View style={[styles.chipDot, { backgroundColor: chipColor }]} />
                )}
                <Text style={[
                  styles.chipText,
                  isActive && { color: chipColor },
                ]}>
                  {f.label}
                </Text>
              </TouchableOpacity>
            );
          })}
        </ScrollView>

        {/* Count pill */}
        <View style={styles.countPill}>
          {loading
            ? <ActivityIndicator size="small" color={Colors.amberDim} />
            : <Text style={styles.countText}>
                {displayLocations.length}{searchQuery ? ' RESULTS' : ' IN ATLAS'}
              </Text>
          }
        </View>
      </View>

      {/* ── Empty state ─────────────────────────────────────── */}
      {!loading && displayLocations.length === 0 && !showIntro && (
        <View style={styles.emptyOverlay}>
          <Text style={styles.emptyGlyph}>◈</Text>
          <Text style={styles.emptyTitle}>
            {searchQuery ? 'No matches found.' : 'Nothing recorded here.'}
          </Text>
          <Text style={styles.emptyBody}>
            {searchQuery
              ? `No locations match "${searchQuery}".`
              : 'The Atlas has no entries for this area yet.'}
          </Text>
          {!searchQuery && (
            <TouchableOpacity style={styles.emptyBtn} onPress={jumpToAll} activeOpacity={0.8}>
              <Text style={styles.emptyBtnText}>VIEW ALL STATES →</Text>
            </TouchableOpacity>
          )}
        </View>
      )}

      {/* ── Locate me ──────────────────────────────────────── */}
      {coords && (
        <TouchableOpacity style={styles.locateBtn} onPress={handleLocateMe} activeOpacity={0.8}>
          <Feather name="crosshair" size={16} color={Colors.amber} />
        </TouchableOpacity>
      )}

      {/* ── Selected location card ─────────────────────────── */}
      {selectedLocation && (
        <Animated.View style={[styles.card, { transform: [{ translateY: cardTranslate }] }]}>
          <View style={styles.cardHeader}>
            <View style={styles.cardHeaderText}>
              <View style={styles.cardMeta}>
                <Text style={[styles.catLabel, { color: CategoryColors[selectedLocation.category] }]}>
                  {CategoryLabels[selectedLocation.category]}
                </Text>
                {selectedLocation.state && (
                  <Text style={styles.distLabel}> · {selectedLocation.state}</Text>
                )}
                {selectedLocation.distance_label && (
                  <Text style={styles.distLabel}> · {selectedLocation.distance_label}</Text>
                )}
              </View>
              <Text style={styles.cardName}>{selectedLocation.name}</Text>
              <Text style={styles.cardTagline}>{selectedLocation.tagline}</Text>
            </View>
            <TouchableOpacity onPress={handleClose} style={styles.closeBtn}>
              <Text style={styles.closeTxt}>✕</Text>
            </TouchableOpacity>
          </View>
          <View style={styles.cardFooter}>
            <Text style={styles.repCount}>
              {selectedLocation.report_count} REPORTS{selectedLocation.verified ? '  ✓ VERIFIED' : ''}
            </Text>
            <PrimaryButton
              label="READ THE ACCOUNT →"
              onPress={() => {
                handleClose();
                router.push(`/location/${selectedLocation.slug || selectedLocation.id}` as any);
              }}
            />
          </View>
        </Animated.View>
      )}

      {/* ── First-run intro overlay ─────────────────────────── */}
      {showIntro && (
        <Animated.View style={[styles.intro, { opacity: introAnim }]}>
          <View style={styles.introInner}>
            <Text style={styles.introEyebrow}>FIELD GUIDE TO THE UNCANNY</Text>
            <Text style={styles.introTitle}>Hollow Atlas</Text>
            <Text style={styles.introTagline}>
              Haunted places. Abandoned sites.{'\n'}Folklore, paranormal, strange history.
            </Text>

            <View style={styles.introDivider} />

            <Text style={styles.introBody}>
              Tap any marker on the map to read the account of a location.
              Filter by state or category. Search by name.
            </Text>
            <Text style={styles.introBody2}>
              Queensland · New South Wales · Victoria · South Australia · Western Australia · Northern Territory · Tasmania
            </Text>

            <TouchableOpacity style={styles.introBtn} onPress={dismissIntro} activeOpacity={0.85}>
              <Text style={styles.introBtnText}>BEGIN EXPLORING  →</Text>
            </TouchableOpacity>
          </View>
        </Animated.View>
      )}
    </View>
  );
}

// ── Styles ────────────────────────────────────────────────────────────────────
const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.bg },
  map: { flex: 1 },

  // Top bar
  topBar: {
    position: 'absolute',
    top: Spacing.base,
    left: 0,
    right: 0,
  },

  // Search
  searchRow: {
    flexDirection: 'row',
    alignItems: 'center',
    marginHorizontal: Spacing.base,
    marginBottom: 6,
    backgroundColor: Colors.surface1 + 'EE',
    borderWidth: 1,
    borderColor: Colors.border,
    paddingHorizontal: 11,
    paddingVertical: 8,
    gap: 8,
  },
  searchIcon: {
    flexShrink: 0,
  },
  searchInput: {
    flex: 1,
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    color: Colors.textPrimary,
    letterSpacing: 1.2,
    padding: 0,
    margin: 0,
  },

  // State chips
  stateRow: {
    paddingHorizontal: Spacing.base,
    gap: 6,
    paddingBottom: 6,
  },
  stateChip: {
    paddingVertical: 4,
    paddingHorizontal: 9,
  },

  // Category chips
  filterRow: {
    paddingHorizontal: Spacing.base,
    gap: 8,
    paddingBottom: 6,
  },
  chip: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 5,
    backgroundColor: Colors.surface1 + 'EE',
    borderWidth: 1,
    borderColor: Colors.border,
    paddingHorizontal: 11,
    paddingVertical: 6,
  },
  chipDot: {
    width: 5,
    height: 5,
    borderRadius: 3,
  },
  chipText: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 1.3,
  },
  countPill: {
    alignSelf: 'center',
    marginTop: 4,
    backgroundColor: Colors.surface1 + 'BB',
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderWidth: 1,
    borderColor: Colors.border,
    minWidth: 50,
    alignItems: 'center',
  },
  countText: {
    fontFamily: Fonts.uiBold,
    fontSize: 8.5,
    color: Colors.textMuted,
    letterSpacing: 1.4,
  },

  // Locate button
  locateBtn: {
    position: 'absolute',
    bottom: 24,
    right: Spacing.base,
    width: 42,
    height: 42,
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderColor: Colors.borderEmphasis,
    alignItems: 'center',
    justifyContent: 'center',
  },

  // Location card
  card: {
    position: 'absolute',
    bottom: 0, left: 0, right: 0,
    backgroundColor: Colors.surface2,
    borderTopWidth: 1,
    borderTopColor: Colors.border,
    padding: Spacing.lg,
    paddingBottom: 28,
  },
  cardHeader: { flexDirection: 'row', justifyContent: 'space-between', marginBottom: Spacing.md },
  cardHeaderText: { flex: 1, marginRight: Spacing.sm },
  cardMeta: { flexDirection: 'row', alignItems: 'center', marginBottom: 7, flexWrap: 'wrap' },
  catLabel: { fontFamily: Fonts.uiBold, fontSize: 9.5, letterSpacing: 1.4 },
  distLabel: { fontFamily: Fonts.ui, fontSize: 9.5, color: Colors.textMuted, letterSpacing: 1 },
  cardName: {
    fontFamily: Fonts.displaySemiBold, fontSize: 22,
    color: Colors.textPrimary, lineHeight: 26, marginBottom: 5,
  },
  cardTagline: {
    fontFamily: Fonts.displayItalic, fontSize: 14,
    color: Colors.textSecondary, lineHeight: 20,
  },
  closeBtn: { padding: 4, alignSelf: 'flex-start' },
  closeTxt: { color: Colors.textMuted, fontSize: 15 },
  cardFooter: { flexDirection: 'row', alignItems: 'center', justifyContent: 'space-between' },
  repCount: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted, letterSpacing: 0.9 },

  // Empty state
  emptyOverlay: {
    position: 'absolute',
    top: '35%',
    left: Spacing.xl,
    right: Spacing.xl,
    backgroundColor: Colors.surface2 + 'F0',
    borderWidth: 1,
    borderColor: Colors.border,
    padding: Spacing.xl,
    alignItems: 'center',
  },
  emptyGlyph: {
    fontSize: 20,
    color: Colors.amberDim,
    marginBottom: 12,
  },
  emptyTitle: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 18,
    color: Colors.textSecondary,
    marginBottom: 8,
    textAlign: 'center',
  },
  emptyBody: {
    fontFamily: Fonts.display,
    fontSize: 14,
    color: Colors.textMuted,
    textAlign: 'center',
    lineHeight: 21,
    marginBottom: 18,
  },
  emptyBtn: {
    borderWidth: 1,
    borderColor: Colors.amber,
    paddingHorizontal: 16,
    paddingVertical: 9,
  },
  emptyBtnText: {
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    color: Colors.amber,
    letterSpacing: 1.3,
  },

  // First-run intro
  intro: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: Colors.bg,
    justifyContent: 'center',
    padding: Spacing.xl,
    zIndex: 100,
  },
  introInner: {
    alignItems: 'center',
  },
  introEyebrow: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.amberDim,
    letterSpacing: 2.5,
    marginBottom: 16,
  },
  introTitle: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 52,
    color: Colors.textPrimary,
    lineHeight: 56,
    marginBottom: 12,
  },
  introTagline: {
    fontFamily: Fonts.displayItalic,
    fontSize: 18,
    color: Colors.textSecondary,
    textAlign: 'center',
    lineHeight: 26,
  },
  introDivider: {
    width: 40,
    height: 1,
    backgroundColor: Colors.amber + '50',
    marginVertical: 28,
  },
  introBody: {
    fontFamily: Fonts.display,
    fontSize: 16,
    color: Colors.textSecondary,
    textAlign: 'center',
    lineHeight: 26,
    marginBottom: 10,
  },
  introBody2: {
    fontFamily: Fonts.ui,
    fontSize: 10,
    color: Colors.textMuted,
    textAlign: 'center',
    letterSpacing: 0.8,
    marginBottom: 40,
  },
  introBtn: {
    backgroundColor: Colors.amber,
    paddingHorizontal: 28,
    paddingVertical: 14,
  },
  introBtnText: {
    fontFamily: Fonts.uiBold,
    fontSize: 12,
    color: Colors.bg,
    letterSpacing: 1.8,
  },
});
