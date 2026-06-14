import React, { useState, useMemo } from 'react';
import {
  View, Text, FlatList, TouchableOpacity,
  StyleSheet, TextInput, ActivityIndicator,
} from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useLocations } from '../../src/hooks/useLocations';
import { useUserLocation } from '../../src/context/UserLocationContext';
import { LocationCard } from '../../src/components/LocationCard';
import { haversineKm } from '../../src/utils/distance';
import {
  Colors, Fonts, Spacing, CategoryLabels, CategoryColors, Category,
} from '../../src/constants/theme';

const CATEGORIES = [
  'all', 'haunted', 'abandoned', 'folklore', 'paranormal', 'strange_history',
] as const;
type FilterCat = typeof CATEGORIES[number];

export default function DiscoverScreen() {
  const [activeCategory, setActiveCategory] = useState<FilterCat>('all');
  const [searchQuery, setSearchQuery] = useState('');
  const { coords } = useUserLocation();

  const { locations, loading } = useLocations(
    activeCategory === 'all' ? undefined : activeCategory,
    coords,
  );

  // Filter by search query, then sort by distance (if GPS available) or report_count
  const results = useMemo(() => {
    let data = locations;

    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase();
      data = data.filter(l =>
        l.name.toLowerCase().includes(q) ||
        l.tagline.toLowerCase().includes(q)
      );
    }

    return [...data].sort((a, b) => {
      if (coords) {
        const dA = haversineKm(coords.latitude, coords.longitude, a.latitude, a.longitude);
        const dB = haversineKm(coords.latitude, coords.longitude, b.latitude, b.longitude);
        return dA - dB;
      }
      return b.report_count - a.report_count;
    });
  }, [locations, searchQuery, coords]);

  const isSearching = searchQuery.trim().length > 0;

  return (
    <View style={styles.container}>

      {/* ── Search bar ─────────────────────────────────────────── */}
      <View style={styles.searchRow}>
        <Feather name="search" size={13} color={Colors.textMuted} />
        <TextInput
          style={styles.searchInput}
          placeholder="Search the Atlas..."
          placeholderTextColor={Colors.textMuted}
          value={searchQuery}
          onChangeText={setSearchQuery}
          returnKeyType="search"
          autoCorrect={false}
        />
        {isSearching && (
          <TouchableOpacity onPress={() => setSearchQuery('')} hitSlop={{ top: 8, bottom: 8, left: 8, right: 8 }}>
            <Feather name="x" size={13} color={Colors.textMuted} />
          </TouchableOpacity>
        )}
      </View>

      {/* ── Category filters ───────────────────────────────────── */}
      <FlatList
        horizontal
        data={CATEGORIES}
        keyExtractor={c => c}
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={styles.catRow}
        renderItem={({ item: cat }) => {
          const isActive = activeCategory === cat;
          const color = cat === 'all' ? Colors.amber : CategoryColors[cat as Category];
          const label = cat === 'all' ? 'ALL' : CategoryLabels[cat as Category];
          return (
            <TouchableOpacity
              style={[
                styles.catPill,
                isActive && { borderColor: color, backgroundColor: color + '20' },
              ]}
              onPress={() => setActiveCategory(cat)}
              activeOpacity={0.7}
            >
              {isActive && cat !== 'all' && (
                <View style={[styles.catDot, { backgroundColor: color }]} />
              )}
              <Text style={[styles.catLabel, isActive && { color }]}>{label}</Text>
            </TouchableOpacity>
          );
        }}
      />

      <View style={styles.divider} />

      {/* ── Result count header ────────────────────────────────── */}
      {!loading && results.length > 0 && (
        <View style={styles.countHeader}>
          <Text style={styles.countText}>
            {results.length} {results.length === 1 ? 'LOCATION' : 'LOCATIONS'}
            {coords ? '  ·  NEAREST FIRST' : '  ·  BY REPORTS'}
          </Text>
        </View>
      )}

      {/* ── List ───────────────────────────────────────────────── */}
      <FlatList
        data={results}
        keyExtractor={l => l.id}
        contentContainerStyle={styles.list}
        showsVerticalScrollIndicator={false}
        renderItem={({ item }) => <LocationCard location={item} />}
        ListEmptyComponent={
          loading
            ? <LoadingState />
            : <EmptyState isSearching={isSearching} category={activeCategory} />
        }
      />
    </View>
  );
}

// ── Loading state ─────────────────────────────────────────────────────────────
function LoadingState() {
  return (
    <View style={emptyStyles.wrapper}>
      <ActivityIndicator color={Colors.amberDim} style={{ marginBottom: 14 }} />
      <Text style={emptyStyles.italic}>Consulting the archive...</Text>
    </View>
  );
}

// ── Empty state ───────────────────────────────────────────────────────────────
function EmptyState({ isSearching, category }: { isSearching: boolean; category: FilterCat }) {
  if (isSearching) {
    return (
      <View style={emptyStyles.wrapper}>
        <Text style={emptyStyles.glyph}>◈</Text>
        <Text style={emptyStyles.title}>Nothing in the archive.</Text>
        <Text style={emptyStyles.body}>
          No locations match that search. Try a broader term, or clear the query to browse all entries.
        </Text>
      </View>
    );
  }

  if (category !== 'all') {
    const label = CategoryLabels[category as Category];
    return (
      <View style={emptyStyles.wrapper}>
        <Text style={emptyStyles.glyph}>◈</Text>
        <Text style={emptyStyles.title}>No {label.toLowerCase()} sites yet.</Text>
        <Text style={emptyStyles.body}>
          This category has no entries in the current region. Switch to ALL to see everything, or help
          grow the Atlas by submitting a location you know.
        </Text>
      </View>
    );
  }

  return (
    <View style={emptyStyles.wrapper}>
      <Text style={emptyStyles.glyph}>◈</Text>
      <Text style={emptyStyles.title}>The archive is quiet here.</Text>
      <Text style={emptyStyles.body}>
        No locations have been recorded in this area. The Atlas is growing — check back, or submit
        a site you know.
      </Text>
    </View>
  );
}

// ── Styles ────────────────────────────────────────────────────────────────────
const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.bg },

  searchRow: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderColor: Colors.border,
    margin: Spacing.base,
    marginBottom: 0,
    paddingHorizontal: Spacing.md,
    paddingVertical: 10,
  },
  searchInput: {
    flex: 1,
    fontFamily: Fonts.displayItalic,
    fontSize: 15,
    color: Colors.textPrimary,
  },

  catRow: {
    paddingHorizontal: Spacing.base,
    paddingVertical: Spacing.md,
    gap: 8,
  },
  catPill: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 5,
    borderWidth: 1,
    borderColor: Colors.border,
    paddingHorizontal: 11,
    paddingVertical: 5,
  },
  catDot: {
    width: 5,
    height: 5,
    borderRadius: 3,
  },
  catLabel: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 1.1,
  },

  divider: { height: 1, backgroundColor: Colors.border },

  countHeader: {
    paddingHorizontal: Spacing.base,
    paddingVertical: 8,
  },
  countText: {
    fontFamily: Fonts.uiBold,
    fontSize: 8.5,
    color: Colors.textMuted,
    letterSpacing: 1.3,
  },

  list: { paddingHorizontal: Spacing.base, paddingTop: Spacing.sm, paddingBottom: 32 },
});

const emptyStyles = StyleSheet.create({
  wrapper: {
    alignItems: 'center',
    paddingTop: 60,
    paddingHorizontal: 32,
  },
  glyph: {
    fontSize: 22,
    color: Colors.amberDim,
    marginBottom: 16,
  },
  title: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 20,
    color: Colors.textSecondary,
    textAlign: 'center',
    marginBottom: 12,
  },
  italic: {
    fontFamily: Fonts.displayItalic,
    fontSize: 15,
    color: Colors.textMuted,
    textAlign: 'center',
  },
  body: {
    fontFamily: Fonts.display,
    fontSize: 15,
    color: Colors.textMuted,
    textAlign: 'center',
    lineHeight: 24,
  },
});
