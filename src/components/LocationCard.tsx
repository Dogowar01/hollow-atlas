import React from 'react';
import { View, Text, TouchableOpacity, StyleSheet, Image } from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useRouter } from 'expo-router';
import { Location } from '../types';
import { Colors, Fonts, Spacing, CategoryColors, CategoryDarkBg, CategoryLabels } from '../constants/theme';

interface Props {
  location: Location;
  style?: object;
}

function ThreatBars({ count, color }: { count: number; color: string }) {
  const level = count >= 40 ? 5 : count >= 22 ? 4 : count >= 10 ? 3 : count >= 4 ? 2 : 1;
  return (
    <View style={bars.row}>
      {[1, 2, 3, 4, 5].map(i => (
        <View
          key={i}
          style={[bars.bar, {
            height: 4 + i * 2,
            backgroundColor: i <= level ? color : Colors.surface3,
            opacity: i <= level ? 0.7 + i * 0.06 : 0.4,
          }]}
        />
      ))}
    </View>
  );
}

function caseRef(id: string) {
  return id.replace(/-/g, '').slice(0, 6).toUpperCase();
}

export function LocationCard({ location, style }: Props) {
  const router  = useRouter();
  const catColor = CategoryColors[location.category];
  const darkBg   = CategoryDarkBg[location.category] || Colors.bg;
  const hasImage = !!location.cover_image_url;

  return (
    <TouchableOpacity
      style={[styles.card, { borderLeftColor: catColor }, style]}
      onPress={() => router.push(`/location/${location.slug || location.id}` as any)}
      activeOpacity={0.72}
    >
      {/* Cover image */}
      <View style={[styles.cover, { backgroundColor: darkBg }]}>
        {hasImage && (
          <Image
            source={{ uri: location.cover_image_url! }}
            style={StyleSheet.absoluteFillObject}
            resizeMode="cover"
          />
        )}
        <View style={[StyleSheet.absoluteFillObject, styles.coverOverlay,
          { backgroundColor: hasImage ? 'rgba(8,7,5,0.52)' : catColor + '16' }
        ]} />

        {/* Category label — top left */}
        <View style={[styles.categoryTag, { borderColor: catColor + '60', backgroundColor: darkBg + 'DD' }]}>
          <View style={[styles.categoryDot, { backgroundColor: catColor }]} />
          <Text style={[styles.categoryText, { color: catColor }]}>
            {CategoryLabels[location.category]}
          </Text>
        </View>

        {/* Verified — top right */}
        {location.verified && (
          <View style={styles.verifiedTag}>
            <Feather name="check" size={8} color={Colors.amberDim} />
          </View>
        )}
      </View>

      {/* 1px accent line */}
      <View style={[styles.accent, { backgroundColor: catColor }]} />

      {/* Body */}
      <View style={styles.body}>

        {/* Case ref + state */}
        <View style={styles.caseRow}>
          <Text style={styles.caseRef}>CASE #{caseRef(location.id)}</Text>
          {location.state && (
            <Text style={styles.state}>{location.state}</Text>
          )}
        </View>

        <Text style={styles.name} numberOfLines={2}>{location.name}</Text>
        <Text style={styles.tagline} numberOfLines={2}>{location.tagline}</Text>

        {/* Threat meter + report count */}
        <View style={styles.footer}>
          <ThreatBars count={location.report_count} color={catColor} />
          <Text style={styles.reportCount}>{location.report_count} REPORTS</Text>
        </View>
      </View>
    </TouchableOpacity>
  );
}

const bars = StyleSheet.create({
  row: { flexDirection: 'row', alignItems: 'flex-end', gap: 2 },
  bar: { width: 3, borderRadius: 1 },
});

const styles = StyleSheet.create({
  card: {
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderLeftWidth: 3,
    borderColor: Colors.border,
    marginBottom: Spacing.md,
    overflow: 'hidden',
  },

  // ── Cover ──────────────────────────────────────
  cover: { height: 155, overflow: 'hidden', position: 'relative' },
  coverOverlay: { ...StyleSheet.absoluteFillObject as any },
  categoryTag: {
    position: 'absolute',
    top: 10, left: 10,
    flexDirection: 'row', alignItems: 'center', gap: 5,
    borderWidth: 1,
    paddingHorizontal: 7, paddingVertical: 3,
  },
  categoryDot: { width: 5, height: 5, borderRadius: 2.5 },
  categoryText: { fontFamily: Fonts.uiBold, fontSize: 8, letterSpacing: 1.5 },
  verifiedTag: {
    position: 'absolute', top: 10, right: 10,
    width: 18, height: 18,
    borderWidth: 1, borderColor: Colors.amberDim + '70',
    alignItems: 'center', justifyContent: 'center',
    backgroundColor: Colors.surface1 + 'CC',
  },

  accent: { height: 1, opacity: 0.5 },

  // ── Body ───────────────────────────────────────
  body: { paddingHorizontal: Spacing.base, paddingTop: 12, paddingBottom: 14 },

  caseRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  caseRef: {
    fontFamily: Fonts.uiBold,
    fontSize: 8,
    color: Colors.textMuted,
    letterSpacing: 2,
  },
  state: {
    fontFamily: Fonts.uiBold,
    fontSize: 8,
    color: Colors.amberDim,
    letterSpacing: 1.8,
  },

  name: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 22,
    color: Colors.textPrimary,
    lineHeight: 27,
    marginBottom: 5,
  },
  tagline: {
    fontFamily: Fonts.displayItalic,
    fontSize: 13.5,
    color: Colors.textSecondary,
    lineHeight: 20,
    marginBottom: 12,
  },

  footer: { flexDirection: 'row', alignItems: 'center', gap: 10 },
  reportCount: {
    fontFamily: Fonts.uiBold,
    fontSize: 8.5,
    color: Colors.textMuted,
    letterSpacing: 1.2,
  },
});
