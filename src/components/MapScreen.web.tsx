import React, { useState, useMemo } from 'react';
import {
  View, Text, StyleSheet, ScrollView, TouchableOpacity,
  TextInput, ActivityIndicator, useWindowDimensions,
} from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useLocations } from '../hooks/useLocations';
import {
  Colors, Fonts, Spacing, CategoryColors, Category,
} from '../constants/theme';
import { LocationCard } from './LocationCard';

const CATEGORY_FILTERS: { label: string; value: Category | 'all' }[] = [
  { label: 'ALL',             value: 'all' },
  { label: 'HAUNTED',         value: 'haunted' },
  { label: 'ABANDONED',       value: 'abandoned' },
  { label: 'FOLKLORE',        value: 'folklore' },
  { label: 'PARANORMAL',      value: 'paranormal' },
  { label: 'STRANGE HISTORY', value: 'strange_history' },
];

const STATE_FILTERS = [
  { label: 'ALL STATES', value: 'ALL' },
  { label: 'QLD',        value: 'QLD' },
  { label: 'NSW',        value: 'NSW' },
  { label: 'VIC',        value: 'VIC' },
  { label: 'SA',         value: 'SA'  },
  { label: 'WA',         value: 'WA'  },
  { label: 'NT',         value: 'NT'  },
  { label: 'TAS',        value: 'TAS' },
];

export default function WebAtlasScreen() {
  const { width } = useWindowDimensions();
  const isWide      = width >= 780;
  const isVeryWide  = width >= 1280;

  const [activeCategory, setActiveCategory] = useState<Category | 'all'>('all');
  const [activeState,    setActiveState]    = useState('ALL');
  const [searchQuery,    setSearchQuery]    = useState('');

  const category    = activeCategory === 'all' ? undefined : activeCategory;
  const stateFilter = activeState    === 'ALL' ? undefined : activeState;

  const { locations, loading } = useLocations(category, null, null, stateFilter);

  const displayLocations = useMemo(() => {
    const q = searchQuery.trim().toLowerCase();
    if (!q) return locations;
    return locations.filter(l =>
      l.name.toLowerCase().includes(q) ||
      l.tagline.toLowerCase().includes(q) ||
      (l.state ?? '').toLowerCase().includes(q)
    );
  }, [locations, searchQuery]);

  const colStyle = isVeryWide ? styles.cell3 : isWide ? styles.cell2 : styles.cell1;

  return (
    <ScrollView style={styles.scroll} contentContainerStyle={styles.content}>

      {/* ── Hero ─────────────────────────────────────────────── */}
      <View style={styles.hero}>
        <Text style={styles.heroGlyph}>◈</Text>
        <Text style={styles.heroEyebrow}>FIELD GUIDE TO THE UNCANNY</Text>
        <Text style={[styles.heroTitle, { fontSize: width < 420 ? 50 : 68 }]}>
          {'Hollow\nAtlas'}
        </Text>
        <View style={styles.sep}>
          <View style={styles.sepLine} />
          <View style={styles.sepDot} />
          <View style={styles.sepLine} />
        </View>
        <Text style={styles.heroTagline}>
          Haunted places. Abandoned sites.{'\n'}
          Folklore, paranormal & strange history across Australia.
        </Text>
        <Text style={styles.heroStates}>QLD · NSW · VIC · SA · WA · NT · TAS</Text>
      </View>

      {/* ── Sticky controls ──────────────────────────────────── */}
      <View style={styles.stickyWrap as any}>
        <View style={[styles.controls, isWide && styles.controlsWide]}>

          {/* Search */}
          <View style={styles.searchRow}>
            <Feather name="search" size={14} color={Colors.textMuted} />
            <TextInput
              style={styles.searchInput as any}
              value={searchQuery}
              onChangeText={setSearchQuery}
              placeholder="SEARCH THE ATLAS…"
              placeholderTextColor={Colors.textMuted}
              autoCorrect={false}
              autoCapitalize="none"
            />
            {searchQuery.length > 0 && (
              <TouchableOpacity onPress={() => setSearchQuery('')} hitSlop={{ top: 8, bottom: 8, left: 8, right: 8 }}>
                <Feather name="x" size={14} color={Colors.textMuted} />
              </TouchableOpacity>
            )}
          </View>

          {/* Category chips */}
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRow}>
            {CATEGORY_FILTERS.map(f => {
              const isActive = activeCategory === f.value;
              const chipColor = f.value === 'all' ? Colors.amber : CategoryColors[f.value as Category];
              return (
                <TouchableOpacity
                  key={f.value}
                  style={[
                    styles.chip,
                    isActive && { borderColor: chipColor, backgroundColor: chipColor + '1A' },
                  ]}
                  onPress={() => setActiveCategory(f.value)}
                  activeOpacity={0.7}
                >
                  {isActive && (
                    <View style={[styles.chipDot, { backgroundColor: chipColor }]} />
                  )}
                  <Text style={[styles.chipText, isActive && { color: chipColor }]}>
                    {f.label}
                  </Text>
                </TouchableOpacity>
              );
            })}
          </ScrollView>

          {/* State chips */}
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRow}>
            {STATE_FILTERS.map(s => {
              const isActive = activeState === s.value;
              return (
                <TouchableOpacity
                  key={s.value}
                  style={[
                    styles.chip, styles.stateChip,
                    isActive && { borderColor: Colors.amberDim, backgroundColor: Colors.amberDim + '1A' },
                  ]}
                  onPress={() => setActiveState(s.value)}
                  activeOpacity={0.7}
                >
                  {isActive && <View style={[styles.chipDot, { backgroundColor: Colors.amberDim }]} />}
                  <Text style={[styles.chipText, isActive && { color: Colors.amberDim }]}>
                    {s.label}
                  </Text>
                </TouchableOpacity>
              );
            })}
          </ScrollView>

          {/* Count */}
          <View style={styles.countRow}>
            {loading
              ? <ActivityIndicator size="small" color={Colors.amberDim} />
              : (
                <Text style={styles.countText}>
                  {displayLocations.length}
                  {searchQuery ? ' RESULTS' : ' LOCATIONS IN ATLAS'}
                </Text>
              )
            }
          </View>
        </View>
      </View>

      {/* ── Grid ─────────────────────────────────────────────── */}
      <View style={[styles.gridWrap, isWide && styles.gridWrapWide]}>
        {!loading && displayLocations.length === 0 ? (
          <View style={styles.empty}>
            <Text style={styles.emptyGlyph}>◈</Text>
            <Text style={styles.emptyTitle}>
              {searchQuery ? 'No matches found.' : 'Nothing recorded here.'}
            </Text>
            <Text style={styles.emptyBody}>
              {searchQuery
                ? `No locations match "${searchQuery}". Try a broader term.`
                : 'The Atlas has no entries for this filter.'}
            </Text>
          </View>
        ) : (
          <View style={[styles.grid, (isWide || isVeryWide) && styles.gridFlex]}>
            {displayLocations.map(location => (
              <View key={location.id} style={colStyle}>
                <LocationCard location={location} style={styles.cardReset} />
              </View>
            ))}
          </View>
        )}
      </View>

    </ScrollView>
  );
}

const styles = StyleSheet.create({
  scroll: { flex: 1, backgroundColor: Colors.bg },
  content: { flexGrow: 1, alignItems: 'center', paddingBottom: 100 },

  // ── Hero ────────────────────────────────────────────────────
  hero: {
    width: '100%',
    alignItems: 'center',
    paddingTop: 80,
    paddingBottom: 56,
    paddingHorizontal: Spacing.xl,
    borderBottomWidth: 1,
    borderBottomColor: Colors.borderEmphasis,
    maxWidth: 1100,
  },
  heroGlyph: {
    fontFamily: Fonts.uiBold,
    fontSize: 26,
    color: Colors.amber,
    letterSpacing: 8,
    marginBottom: 20,
    opacity: 0.7,
  },
  heroEyebrow: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.amberDim,
    letterSpacing: 3.5,
    marginBottom: 16,
  },
  heroTitle: {
    fontFamily: Fonts.displaySemiBold,
    color: Colors.textPrimary,
    lineHeight: 74,
    textAlign: 'center',
    letterSpacing: 1.5,
  },
  sep: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 16,
    marginVertical: 28,
    width: 240,
  },
  sepLine: { flex: 1, height: 1, backgroundColor: Colors.amber + '35' },
  sepDot: { width: 5, height: 5, borderRadius: 2.5, backgroundColor: Colors.amberDim },
  heroTagline: {
    fontFamily: Fonts.displayItalic,
    fontSize: 18,
    color: Colors.textSecondary,
    textAlign: 'center',
    lineHeight: 30,
    marginBottom: 16,
  },
  heroStates: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 2.2,
    textAlign: 'center',
  },

  // ── Sticky controls ─────────────────────────────────────────
  stickyWrap: {
    width: '100%',
    position: 'sticky',
    top: 0,
    zIndex: 10,
    backgroundColor: Colors.surface1,
    borderBottomWidth: 1,
    borderBottomColor: Colors.border,
    alignItems: 'center',
  },
  controls: {
    width: '100%',
    paddingHorizontal: Spacing.lg,
    paddingTop: 14,
    paddingBottom: 12,
    gap: 10,
  },
  controlsWide: { maxWidth: 1100 },
  searchRow: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderColor: Colors.borderEmphasis,
    paddingHorizontal: 14,
    paddingVertical: 11,
    gap: 10,
  },
  searchInput: {
    flex: 1,
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    color: Colors.textPrimary,
    letterSpacing: 1.4,
    padding: 0,
    outlineStyle: 'none',
  },
  chipRow: { gap: 7, paddingVertical: 1 },
  chip: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 5,
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderColor: Colors.border,
    paddingHorizontal: 12,
    paddingVertical: 7,
  },
  stateChip: { paddingVertical: 5, paddingHorizontal: 10 },
  chipDot: { width: 5, height: 5, borderRadius: 2.5 },
  chipText: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 1.3,
  },
  countRow: { alignItems: 'flex-start', paddingTop: 1, minHeight: 18 },
  countText: {
    fontFamily: Fonts.uiBold,
    fontSize: 8.5,
    color: Colors.textMuted,
    letterSpacing: 1.6,
  },

  // ── Grid ────────────────────────────────────────────────────
  gridWrap: {
    width: '100%',
    paddingHorizontal: Spacing.base,
    paddingTop: Spacing.xl,
  },
  gridWrapWide: { maxWidth: 1100 },
  grid: {},
  gridFlex: { flexDirection: 'row', flexWrap: 'wrap', gap: 14 },
  cell1: { width: '100%' },
  cell2: { width: '48.9%' },
  cell3: { width: '32.2%' },
  cardReset: { marginBottom: 0 },

  // ── Empty ───────────────────────────────────────────────────
  empty: { alignItems: 'center', paddingTop: 80, paddingHorizontal: 40 },
  emptyGlyph: {
    fontFamily: Fonts.uiBold,
    fontSize: 24,
    color: Colors.amberDim,
    marginBottom: 18,
  },
  emptyTitle: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 22,
    color: Colors.textSecondary,
    textAlign: 'center',
    marginBottom: 10,
  },
  emptyBody: {
    fontFamily: Fonts.displayItalic,
    fontSize: 16,
    color: Colors.textMuted,
    textAlign: 'center',
    lineHeight: 26,
  },
});
