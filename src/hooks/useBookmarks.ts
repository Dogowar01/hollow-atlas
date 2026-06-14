import { useState, useEffect, useCallback } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { supabase } from '../lib/supabase';
import { useAuth } from '../context/AuthContext';
import { Location } from '../types';

// ── Guest (local) bookmarks ───────────────────────────────────────────────────
// When no user is signed in, bookmarks are persisted to AsyncStorage.
// Signing in does NOT auto-merge — the guest set is kept until the user
// explicitly signs in; that is a future sync feature.

const GUEST_KEY = 'hollow_atlas_bookmarks_v1';

async function loadGuestLocations(): Promise<Location[]> {
  try {
    const raw = await AsyncStorage.getItem(GUEST_KEY);
    return raw ? JSON.parse(raw) : [];
  } catch {
    return [];
  }
}

async function saveGuestLocations(locations: Location[]): Promise<void> {
  try {
    await AsyncStorage.setItem(GUEST_KEY, JSON.stringify(locations));
  } catch {
    // Storage failure is non-fatal
  }
}

// ── Hook ──────────────────────────────────────────────────────────────────────

export function useBookmarks() {
  const { user } = useAuth();
  const [bookmarkedIds,       setBookmarkedIds]       = useState<Set<string>>(new Set());
  const [bookmarkedLocations, setBookmarkedLocations] = useState<Location[]>([]);
  const [loading,             setLoading]             = useState(true);

  // Load bookmarks whenever auth state changes
  useEffect(() => {
    let cancelled = false;
    setLoading(true);

    if (user) {
      // ── Signed-in: fetch from Supabase ──────────────────────
      supabase
        .from('bookmarks')
        .select('location_id, locations(*)')
        .eq('user_id', user.id)
        .then(({ data }) => {
          if (cancelled) return;
          if (data) {
            const locs = data
              .map((b: any) => b.locations as unknown as Location)
              .filter(Boolean);
            setBookmarkedIds(new Set(data.map((b: any) => b.location_id as string)));
            setBookmarkedLocations(locs);
          }
          setLoading(false);
        });
    } else {
      // ── Guest: load from AsyncStorage ──────────────────────
      loadGuestLocations().then(locs => {
        if (cancelled) return;
        setBookmarkedLocations(locs);
        setBookmarkedIds(new Set(locs.map(l => l.id)));
        setLoading(false);
      });
    }

    return () => { cancelled = true; };
  }, [user]);

  // ── Toggle ────────────────────────────────────────────────────────────────
  // `location` is required for guest mode (we store the full object locally).
  // For signed-in users the Supabase relation resolves the full object,
  // but we accept it here too so optimistic UI can update immediately.

  const toggleBookmark = useCallback(async (
    locationId: string,
    location?: Location,
  ): Promise<boolean> => {
    const isBookmarked = bookmarkedIds.has(locationId);

    if (user) {
      // ── Signed-in path ──────────────────────────────────────
      if (isBookmarked) {
        await supabase.from('bookmarks').delete()
          .eq('user_id', user.id)
          .eq('location_id', locationId);
        setBookmarkedIds(prev => {
          const next = new Set(prev); next.delete(locationId); return next;
        });
        setBookmarkedLocations(prev => prev.filter(l => l.id !== locationId));
      } else {
        await supabase.from('bookmarks').insert({
          user_id: user.id,
          location_id: locationId,
        });
        setBookmarkedIds(prev => new Set([...prev, locationId]));
        if (location) {
          setBookmarkedLocations(prev => [location, ...prev]);
        }
      }
    } else {
      // ── Guest path ──────────────────────────────────────────
      let next: Location[];
      if (isBookmarked) {
        next = bookmarkedLocations.filter(l => l.id !== locationId);
      } else if (location) {
        next = [location, ...bookmarkedLocations];
      } else {
        // No location object provided — can't add to guest store
        return false;
      }
      await saveGuestLocations(next);
      setBookmarkedLocations(next);
      setBookmarkedIds(new Set(next.map(l => l.id)));
    }

    return !isBookmarked;
  }, [user, bookmarkedIds, bookmarkedLocations]);

  return { bookmarkedIds, bookmarkedLocations, toggleBookmark, loading };
}
