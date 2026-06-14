import React, { useState, useMemo } from 'react';
import {
  View, Text, StyleSheet, ScrollView, TouchableOpacity,
  TextInput, ActivityIndicator, useWindowDimensions,
} from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useLocations } from '../hooks/useLocations';
import { Colors, Fonts, Spacing, CategoryColors, Category } from '../constants/theme';
import { LocationCard } from './LocationCard';

const CATEGORIES: { label: string; value: Category | 'all' }[] = [
  { label: 'ALL',             value: 'all' },
  { label: 'HAUNTED',         value: 'haunted' },
  { label: 'ABANDONED',       value: 'abandoned' },
  { label: 'FOLKLORE',        value: 'folklore' },
  { label: 'PARANORMAL',      value: 'paranormal' },
  { label: 'STRANGE HISTORY', value: 'strange_history' },
];

const STATES = [
  { label: 'ALL', value: 'ALL' },
  { label: 'QLD', value: 'QLD' },
  { label: 'NSW', value: 'NSW' },
  { label: 'VIC', value: 'VIC' },
  { label: 'SA',  value: 'SA'  },
  { label: 'WA',  value: 'WA'  },
  { label: 'NT',  value: 'NT'  },
  { label: 'TAS', value: 'TAS' },
];

export default function WebAtlasScreen() {
  const { width } = useWindowDimensions();
  const isWide     = width >= 780;
  const isVeryWide = width >= 1280;

  const [activeCategory, setActiveCategory] = useState<Category | 'all'>('all');
  const [activeState,    setActiveState]    = useState('ALL');
  const [searchQuery,    setSearchQuery]    = useState('');

  const category    = activeCategory === 'all' ? undefined : activeCategory;
  const stateFilter = activeState    === 'ALL' ? undefined : activeState;

  const { locations, loading, error } = useLocations(category, null, null, stateFilter);

  const display = useMemo(() => {
    const q = searchQuery.trim().toLowerCase();
    if (!q) return locations;
    return locations.filter(l =>
      l.name.toLowerCase().includes(q) ||
      l.tagline.toLowerCase().includes(q) ||
      (l.state ?? '').toLowerCase() === q
    );
  }, [locations, searchQuery]);

  const colStyle = isVeryWide ? styles.cell3 : isWide ? styles.cell2 : styles.cell1;

  return (
    <ScrollView style={styles.scroll} contentContainerStyle={styles.content}>

      {/* ── Hero ────────────────────────────────────────────── */}
      <View style={styles.hero}>
        <Text style={styles.transmissionLine}>◈ ── SIGNAL ACQUIRED ── ◈</Text>
        <Text style={styles.eyebrow}>RESTRICTED — PARANORMAL FIELD DOCUMENTATION</Text>

        <Text style={[
          styles.title,
          { fontSize: width < 420 ? 52 : 72 } as any,
        ]}>
          {'Hollow\nAtlas'}
        </Text>

        {/* Tick-mark separator */}
        <View style={styles.sep}>
          <View style={styles.sepLine} />
          <Text style={styles.sepTick}>│</Text>
          <Text style={styles.sepGlyph}>◈</Text>
          <Text style={styles.sepTick}>│</Text>
          <View style={styles.sepLine} />
        </View>

        <Text style={styles.tagline}>
          Haunted sites. Abandoned structures.{'\n'}
          Folklore, paranormal phenomena &amp; strange history{'\n'}
          documented across Australia.
        </Text>

        <View style={styles.stateRow}>
          {['QLD', 'NSW', 'VIC', 'SA', 'WA', 'NT', 'TAS'].map((s, i) => (
            <React.Fragment key={s}>
              {i > 0 && <View style={styles.stateDivider} />}
              <Text style={styles.stateLabel}>{s}</Text>
            </React.Fragment>
          ))}
        </View>
      </View>

      {/* ── Sticky controls ─────────────────────────────────── */}
      <View style={styles.stickyWrap as any}>
        <View style={[styles.controls, isWide && styles.controlsWide]}>

          {/* Error banner */}
          {error && (
            <View style={styles.errorBanner}>
              <Feather name="alert-triangle" size={11} color={Colors.haunted} />
              <Text style={styles.errorText}>SIGNAL LOST — {error.toUpperCase()}</Text>
            </View>
          )}

          {/* Search */}
          <View style={styles.searchRow}>
            <Feather name="search" size={13} color={Colors.textMuted} />
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
                <Feather name="x" size={13} color={Colors.textMuted} />
              </TouchableOpacity>
            )}
          </View>

          {/* Category chips */}
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRow}>
            {CATEGORIES.map(f => {
              const active = activeCategory === f.value;
              const color  = f.value === 'all' ? Colors.amber : CategoryColors[f.value as Category];
              return (
                <TouchableOpacity
                  key={f.value}
                  style={[styles.chip, active && { borderColor: color, backgroundColor: color + '18' }]}
                  onPress={() => setActiveCategory(f.value)}
                  activeOpacity={0.7}
                >
                  {active && <View style={[styles.chipDot, { backgroundColor: color }]} />}
                  <Text style={[styles.chipText, active && { color }]}>{f.label}</Text>
                </TouchableOpacity>
              );
            })}
          </ScrollView>

          {/* State chips */}
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRow}>
            {STATES.map(s => {
              const active = activeState === s.value;
              return (
                <TouchableOpacity
                  key={s.value}
                  style={[styles.chip, styles.stateChip,
                    active && { borderColor: Colors.amberDim, backgroundColor: Colors.amberDim + '18' },
                  ]}
                  onPress={() => setActiveState(s.value)}
                  activeOpacity={0.7}
                >
                  {active && <View style={[styles.chipDot, { backgroundColor: Colors.amberDim }]} />}
                  <Text style={[styles.chipText, active && { color: Colors.amberDim }]}>{s.label}</Text>
                </TouchableOpacity>
              );
            })}
          </ScrollView>

          {/* Count */}
          <View style={styles.countRow}>
            {loading
              ? <ActivityIndicator size="small" color={Colors.amberDim} />
              : (
                <View style={styles.countInner}>
                  <View style={[styles.countPulse, { backgroundColor: display.length > 0 ? Colors.abandoned : Colors.crimson }]} />
                  <Text style={styles.countText}>
                    {display.length} {searchQuery ? 'RESULTS' : 'ACTIVE CASES'}
                  </Text>
                </View>
              )
            }
          </View>
        </View>
      </View>

      {/* ── Grid ────────────────────────────────────────────── */}
      <View style={[styles.gridWrap, isWide && styles.gridWrapWide]}>
        {!loading && display.length === 0 ? (
          <View style={styles.empty}>
            <Text style={styles.emptyGlyph}>◈</Text>
            <Text style={styles.emptyTitle}>
              {error
                ? 'CONNECTION FAILED'
                : searchQuery
                  ? 'NO RESULTS FOUND'
                  : 'NO CASES ON RECORD'
              }
            </Text>
            <Text style={styles.emptyBody}>
              {error
                ? 'The archive is unreachable. Your Supabase project may be paused — visit dashboard.supabase.com to resume it.'
                : searchQuery
                  ? `Nothing matching "${searchQuery}" in the archive.`
                  : 'No active cases match this filter.'
              }
            </Text>
          </View>
        ) : (
          <View style={[(isWide || isVeryWide) && styles.gridFlex]}>
            {display.map(loc => (
              <View key={loc.id} style={colStyle}>
                <LocationCard location={loc} style={styles.cardReset} />
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

  // ── Hero ──────────────────────────────────────────────────
  hero: {
    width: '100%',
    maxWidth: 1100,
    alignItems: 'center',
    paddingTop: 88,
    paddingBottom: 60,
    paddingHorizontal: Spacing.xl,
    borderBottomWidth: 1,
    borderBottomColor: Colors.borderEmphasis,
  },
  transmissionLine: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.amberDim,
    letterSpacing: 3,
    marginBottom: 18,
    opacity: 0.8,
  },
  eyebrow: {
    fontFamily: Fonts.uiBold,
    fontSize: 8,
    color: Colors.crimson,
    letterSpacing: 2.8,
    marginBottom: 20,
    opacity: 0.85,
  },
  title: {
    fontFamily: Fonts.displaySemiBold,
    color: Colors.textPrimary,
    lineHeight: 80,
    textAlign: 'center',
    letterSpacing: 2,
    textShadowColor: 'rgba(200, 130, 10, 0.35)',
    textShadowOffset: { width: 0, height: 0 },
    textShadowRadius: 40,
  } as any,

  sep: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
    marginVertical: 30,
    width: 280,
  },
  sepLine: { flex: 1, height: 1, backgroundColor: Colors.border },
  sepTick: { fontFamily: Fonts.ui, fontSize: 10, color: Colors.amberDim + '80' },
  sepGlyph: { fontFamily: Fonts.uiBold, fontSize: 14, color: Colors.amberDim, letterSpacing: 2 },

  tagline: {
    fontFamily: Fonts.displayItalic,
    fontSize: 17,
    color: Colors.textSecondary,
    textAlign: 'center',
    lineHeight: 28,
    marginBottom: 24,
  },

  stateRow: { flexDirection: 'row', alignItems: 'center', gap: 0 },
  stateLabel: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 2,
    paddingHorizontal: 6,
  },
  stateDivider: { width: 1, height: 10, backgroundColor: Colors.amberDim + '40' },

  // ── Sticky controls ───────────────────────────────────────
  stickyWrap: {
    width: '100%',
    position: 'sticky',
    top: 0,
    zIndex: 10,
    backgroundColor: Colors.surface1,
    borderBottomWidth: 1,
    borderBottomColor: Colors.borderEmphasis,
    alignItems: 'center',
  },
  controls: {
    width: '100%',
    paddingHorizontal: Spacing.lg,
    paddingTop: 12,
    paddingBottom: 10,
    gap: 9,
  },
  controlsWide: { maxWidth: 1100 },

  errorBanner: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
    backgroundColor: Colors.crimson + '18',
    borderWidth: 1,
    borderColor: Colors.crimson + '40',
    paddingHorizontal: 10,
    paddingVertical: 7,
  },
  errorText: {
    fontFamily: Fonts.uiBold,
    fontSize: 8.5,
    color: Colors.haunted,
    letterSpacing: 1.2,
    flex: 1,
  },

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

  chipRow: { gap: 6, paddingVertical: 1 },
  chip: {
    flexDirection: 'row', alignItems: 'center', gap: 5,
    backgroundColor: Colors.surface2,
    borderWidth: 1, borderColor: Colors.border,
    paddingHorizontal: 11, paddingVertical: 6,
  },
  stateChip: { paddingVertical: 5, paddingHorizontal: 9 },
  chipDot: { width: 5, height: 5, borderRadius: 2.5 },
  chipText: { fontFamily: Fonts.uiBold, fontSize: 9, color: Colors.textMuted, letterSpacing: 1.3 },

  countRow: { minHeight: 18, justifyContent: 'center' },
  countInner: { flexDirection: 'row', alignItems: 'center', gap: 7 },
  countPulse: { width: 5, height: 5, borderRadius: 2.5, opacity: 0.85 },
  countText: { fontFamily: Fonts.uiBold, fontSize: 8.5, color: Colors.textMuted, letterSpacing: 1.6 },

  // ── Grid ─────────────────────────────────────────────────
  gridWrap: { width: '100%', paddingHorizontal: Spacing.base, paddingTop: Spacing.xl },
  gridWrapWide: { maxWidth: 1100 },
  gridFlex: { flexDirection: 'row', flexWrap: 'wrap', gap: 14 },
  cell1: { width: '100%' },
  cell2: { width: '48.9%' },
  cell3: { width: '32.2%' },
  cardReset: { marginBottom: 0 },

  // ── Empty ────────────────────────────────────────────────
  empty: { alignItems: 'center', paddingTop: 80, paddingHorizontal: 40 },
  emptyGlyph: { fontFamily: Fonts.uiBold, fontSize: 28, color: Colors.amberDim, marginBottom: 20, opacity: 0.6 },
  emptyTitle: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 22,
    color: Colors.textSecondary,
    textAlign: 'center',
    letterSpacing: 2,
    marginBottom: 14,
  },
  emptyBody: {
    fontFamily: Fonts.displayItalic,
    fontSize: 16,
    color: Colors.textMuted,
    textAlign: 'center',
    lineHeight: 26,
    maxWidth: 420,
  },
});
