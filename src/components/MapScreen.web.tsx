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
  { label: 'ALL',            value: 'all' },
  { label: 'HAUNTED',        value: 'haunted' },
  { label: 'ABANDONED',      value: 'abandoned' },
  { label: 'FOLKLORE',       value: 'folklore' },
  { label: 'PARANORMAL',     value: 'paranormal' },
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
  const isWide = width >= 780;

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
      l.name.toLowerCase().includes(q) || l.tagline.toLowerCase().includes(q)
    );
  }, [locations, searchQuery]);

  return (
    <ScrollView style={styles.scroll} contentContainerStyle={styles.content}>
      <View style={[styles.inner, isWide && styles.innerWide]}>

        {/* ── Atmospheric hero ──────────────────────────────── */}
        <View style={styles.hero}>
          <Text style={styles.heroSymbol}>◈</Text>
          <Text style={styles.heroEyebrow}>FIELD GUIDE TO THE UNCANNY</Text>
          <Text style={styles.heroTitle}>{'Hollow\nAtlas'}</Text>
          <View style={styles.heroSep}>
            <View style={styles.heroSepLine} />
            <View style={styles.heroSepDot} />
            <View style={styles.heroSepLine} />
          </View>
          <Text style={styles.heroTagline}>
            Haunted places. Abandoned sites.{'\n'}
            Folklore, paranormal & strange history across Australia.
          </Text>
          <Text style={styles.heroStates}>QLD · NSW · VIC · SA · WA · NT · TAS</Text>
        </View>

        {/* ── Controls ──────────────────────────────────────── */}
        <View style={styles.controls}>
          <View style={styles.searchRow}>
            <Feather name="search" size={13} color={Colors.textMuted} />
            <TextInput
              style={styles.searchInput as any}
              value={searchQuery}
              onChangeText={setSearchQuery}
              placeholder="SEARCH THE ATLAS..."
              placeholderTextColor={Colors.textMuted}
              autoCorrect={false}
              autoCapitalize="none"
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

          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRow}>
            {CATEGORY_FILTERS.map(f => {
              const isActive = activeCategory === f.value;
              const chipColor = f.value === 'all'
                ? Colors.amberDim
                : CategoryColors[f.value as Category];
              return (
                <TouchableOpacity
                  key={f.value}
                  style={[styles.chip, isActive && { borderColor: chipColor, backgroundColor: chipColor + '22' }]}
                  onPress={() => setActiveCategory(f.value)}
                  activeOpacity={0.7}
                >
                  {isActive && f.value !== 'all' && (
                    <View style={[styles.chipDot, { backgroundColor: chipColor }]} />
                  )}
                  <Text style={[styles.chipText, isActive && { color: chipColor }]}>{f.label}</Text>
                </TouchableOpacity>
              );
            })}
          </ScrollView>

          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRow}>
            {STATE_FILTERS.map(s => {
              const isActive = activeState === s.value;
              return (
                <TouchableOpacity
                  key={s.value}
                  style={[
                    styles.chip, styles.stateChip,
                    isActive && { borderColor: Colors.amber, backgroundColor: Colors.amber + '22' },
                  ]}
                  onPress={() => setActiveState(s.value)}
                  activeOpacity={0.7}
                >
                  {isActive && <View style={[styles.chipDot, { backgroundColor: Colors.amber }]} />}
                  <Text style={[styles.chipText, isActive && { color: Colors.amber }]}>{s.label}</Text>
                </TouchableOpacity>
              );
            })}
          </ScrollView>

          <View style={styles.countRow}>
            {loading
              ? <ActivityIndicator size="small" color={Colors.amberDim} />
              : <Text style={styles.countText}>
                  {displayLocations.length}{searchQuery ? ' RESULTS' : ' LOCATIONS IN ATLAS'}
                </Text>
            }
          </View>
        </View>

        {/* ── Location grid ─────────────────────────────────── */}
        <View style={styles.listWrap}>
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
            <View style={[styles.grid, isWide && styles.gridWide]}>
              {displayLocations.map(location => (
                <View key={location.id} style={isWide ? styles.gridCell : styles.gridCellFull}>
                  <LocationCard location={location} style={styles.cardReset} />
                </View>
              ))}
            </View>
          )}
        </View>

      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  scroll: { flex: 1, backgroundColor: Colors.bg },
  content: { flexGrow: 1, alignItems: 'center', paddingBottom: 80 },
  inner: { width: '100%' },
  innerWide: { maxWidth: 1080 },

  hero: {
    alignItems: 'center',
    paddingTop: 72, paddingBottom: 52, paddingHorizontal: Spacing.xl,
    borderBottomWidth: 1, borderBottomColor: Colors.border,
  },
  heroSymbol: { fontFamily: Fonts.uiBold, fontSize: 22, color: Colors.amberDim, letterSpacing: 6, marginBottom: 18 },
  heroEyebrow: { fontFamily: Fonts.uiBold, fontSize: 8.5, color: Colors.amberDim, letterSpacing: 3.2, marginBottom: 14 },
  heroTitle: { fontFamily: Fonts.displaySemiBold, fontSize: 62, color: Colors.textPrimary, lineHeight: 66, textAlign: 'center', letterSpacing: 1 },
  heroSep: { flexDirection: 'row', alignItems: 'center', gap: 14, marginVertical: 28, width: 180 },
  heroSepLine: { flex: 1, height: 1, backgroundColor: Colors.amber + '40' },
  heroSepDot: { width: 5, height: 5, borderRadius: 2.5, backgroundColor: Colors.amberDim },
  heroTagline: { fontFamily: Fonts.displayItalic, fontSize: 17, color: Colors.textSecondary, textAlign: 'center', lineHeight: 28, marginBottom: 12 },
  heroStates: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted, letterSpacing: 1.8, textAlign: 'center' },

  controls: {
    paddingHorizontal: Spacing.lg, paddingTop: Spacing.lg, paddingBottom: Spacing.md,
    gap: 10, borderBottomWidth: 1, borderBottomColor: Colors.border,
  },
  searchRow: {
    flexDirection: 'row', alignItems: 'center',
    backgroundColor: Colors.surface1, borderWidth: 1, borderColor: Colors.border,
    paddingHorizontal: 12, paddingVertical: 10, gap: 10,
  },
  searchInput: {
    flex: 1, fontFamily: Fonts.uiBold, fontSize: 10,
    color: Colors.textPrimary, letterSpacing: 1.2, padding: 0,
    outlineStyle: 'none',
  },
  chipRow: { gap: 8, paddingVertical: 2 },
  chip: {
    flexDirection: 'row', alignItems: 'center', gap: 5,
    backgroundColor: Colors.surface1, borderWidth: 1, borderColor: Colors.border,
    paddingHorizontal: 11, paddingVertical: 6,
  },
  stateChip: { paddingVertical: 4, paddingHorizontal: 9 },
  chipDot: { width: 5, height: 5, borderRadius: 3 },
  chipText: { fontFamily: Fonts.uiBold, fontSize: 9, color: Colors.textMuted, letterSpacing: 1.3 },
  countRow: { alignItems: 'flex-start', paddingTop: 2, minHeight: 20 },
  countText: { fontFamily: Fonts.uiBold, fontSize: 8.5, color: Colors.textMuted, letterSpacing: 1.4 },

  listWrap: { paddingHorizontal: Spacing.lg, paddingTop: Spacing.lg },
  grid: { gap: 0 },
  gridWide: { flexDirection: 'row', flexWrap: 'wrap', gap: 14 },
  gridCell: { width: '48.5%' },
  gridCellFull: { width: '100%' },
  cardReset: { marginBottom: 0 },

  empty: { alignItems: 'center', paddingTop: 80, paddingHorizontal: 40 },
  emptyGlyph: { fontSize: 22, color: Colors.amberDim, marginBottom: 16 },
  emptyTitle: { fontFamily: Fonts.displaySemiBold, fontSize: 20, color: Colors.textSecondary, textAlign: 'center', marginBottom: 10 },
  emptyBody: { fontFamily: Fonts.display, fontSize: 15, color: Colors.textMuted, textAlign: 'center', lineHeight: 24 },
});
