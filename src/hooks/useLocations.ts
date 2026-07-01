import { useState, useEffect } from 'react';
import { Location } from '../types';
import { supabase } from '../lib/supabase';
import { MOCK_LOCATIONS } from '../data/mockLocations';
import { haversineKm, formatDistance } from '../utils/distance';
import { Coords } from '../context/UserLocationContext';

const USE_MOCK = !process.env.EXPO_PUBLIC_SUPABASE_URL;

export interface Bounds {
  north: number;
  south: number;
  east: number;
  west: number;
}

function injectDistances(locations: Location[], userCoords: Coords | null | undefined): Location[] {
  if (!userCoords) return locations;
  return locations.map(l => ({
    ...l,
    distance_label: formatDistance(
      haversineKm(userCoords.latitude, userCoords.longitude, l.latitude, l.longitude)
    ),
  }));
}

function filterArchive(
  category?: string,
  state?: string | null,
  bounds?: Bounds | null,
): Location[] {
  let data = MOCK_LOCATIONS;

  if (category && category !== 'all') {
    data = data.filter(l => l.category === category);
  }
  if (state && state !== 'ALL') {
    data = data.filter(l => l.state === state);
  }
  if (bounds) {
    data = data.filter(l =>
      l.latitude >= bounds.south && l.latitude <= bounds.north &&
      l.longitude >= bounds.west && l.longitude <= bounds.east
    );
  }
  return data;
}

export function useLocations(
  category?: string,
  userCoords?: Coords | null,
  bounds?: Bounds | null,
  state?: string | null,
) {
  const [locations, setLocations] = useState<Location[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [offline, setOffline] = useState(false);

  useEffect(() => {
    async function fetchLocations() {
      setLoading(true);
      try {
        if (USE_MOCK) {
          setLocations(injectDistances(filterArchive(category, state, bounds), userCoords));
          setOffline(true);
        } else {
          let query = supabase
            .from('locations')
            .select('*')
            .eq('status', 'active')
            .order('report_count', { ascending: false });

          if (category && category !== 'all') {
            query = query.eq('category', category);
          }
          if (state && state !== 'ALL') {
            query = query.eq('state', state);
          }
          if (bounds) {
            query = query
              .gte('latitude', bounds.south)
              .lte('latitude', bounds.north)
              .gte('longitude', bounds.west)
              .lte('longitude', bounds.east);
          }

          const { data, error } = await query;
          if (error) throw error;
          setLocations(injectDistances(data || [], userCoords));
          setOffline(false);
          setError(null);
        }
      } catch (e: any) {
        // The archive is unreachable (paused project, no network) — fall back
        // to the bundled field archive so the app keeps working.
        setLocations(injectDistances(filterArchive(category, state, bounds), userCoords));
        setOffline(true);
        setError(e.message);
      } finally {
        setLoading(false);
      }
    }

    fetchLocations();
  }, [category, state, userCoords?.latitude, userCoords?.longitude, bounds?.north, bounds?.south, bounds?.east, bounds?.west]);

  return { locations, loading, error, offline };
}

export function useLocation(slug: string) {
  const [location, setLocation] = useState<Location | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetch() {
      const fromArchive = () =>
        MOCK_LOCATIONS.find(l => l.slug === slug || l.id === slug) || null;

      if (USE_MOCK) {
        setLocation(fromArchive());
        setLoading(false);
        return;
      }

      try {
        const { data, error } = await supabase
          .from('locations')
          .select('*')
          .eq('slug', slug)
          .single();

        setLocation(error || !data ? fromArchive() : data);
      } catch {
        setLocation(fromArchive());
      }
      setLoading(false);
    }
    fetch();
  }, [slug]);

  return { location, loading };
}
