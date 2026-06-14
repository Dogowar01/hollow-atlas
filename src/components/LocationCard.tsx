import React from 'react';
import { View, Text, TouchableOpacity, StyleSheet, Image } from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useRouter } from 'expo-router';
import { Location } from '../types';
import { Colors, Fonts, Spacing, CategoryColors } from '../constants/theme';
import { CategoryBadge } from './CategoryBadge';

interface Props {
  location: Location;
  style?: object;
}

const cardBg: Record<string, string> = {
  haunted:        '#170808',
  abandoned:      '#081208',
  folklore:       '#080810',
  paranormal:     '#10080F',
  strange_history:'#0E0D06',
};

export function LocationCard({ location, style }: Props) {
  const router = useRouter();
  const catColor = CategoryColors[location.category];
  const hasImage = !!location.cover_image_url;

  return (
    <TouchableOpacity
      style={[styles.card, { borderLeftColor: catColor + '60' }, style]}
      onPress={() => router.push(`/location/${location.slug || location.id}` as any)}
      activeOpacity={0.75}
    >
      {/* ── Header band ─────────────────────────────────────── */}
      <View style={styles.header}>
        {hasImage ? (
          <Image
            source={{ uri: location.cover_image_url! }}
            style={{ position: 'absolute', top: 0, left: 0, right: 0, height: 110 }}
            resizeMode="cover"
          />
        ) : (
          <View style={[StyleSheet.absoluteFillObject,
            { backgroundColor: cardBg[location.category] || Colors.bg }]} />
        )}

        {/* Dark overlay — heavier when image present to keep badge readable */}
        <View style={[
          StyleSheet.absoluteFillObject,
          { backgroundColor: hasImage ? 'rgba(12,10,7,0.52)' : catColor + '14' },
        ]} />

        {/* Category badge + verified */}
        <View style={styles.headerMeta}>
          <CategoryBadge category={location.category} size="sm" />
          {location.verified && (
            <View style={styles.verifiedRow}>
              <Feather name="check-circle" size={9} color={catColor} />
              <Text style={[styles.verifiedText, { color: catColor }]}>VERIFIED</Text>
            </View>
          )}
        </View>
      </View>

      {/* ── Text body ───────────────────────────────────────── */}
      <View style={styles.body}>
        <Text style={styles.name} numberOfLines={2}>{location.name}</Text>
        <Text style={styles.tagline} numberOfLines={2}>{location.tagline}</Text>

        <View style={styles.metaRow}>
          {location.distance_label && (
            <View style={styles.metaItem}>
              <Feather name="navigation" size={9} color={Colors.textMuted} />
              <Text style={styles.metaText}>{location.distance_label}</Text>
            </View>
          )}
          <View style={styles.metaItem}>
            <Feather name="file-text" size={9} color={Colors.textMuted} />
            <Text style={styles.metaText}>{location.report_count} REPORTS</Text>
          </View>
        </View>
      </View>
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  card: {
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderColor: Colors.border,
    borderLeftWidth: 3,
    marginBottom: Spacing.md,
    overflow: 'hidden',
  },
  header: {
    height: 110,
    justifyContent: 'flex-end',
    padding: Spacing.sm,
    overflow: 'hidden',
  },
  headerMeta: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-end',
  },
  verifiedRow: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 4,
  },
  verifiedText: {
    fontFamily: Fonts.uiBold,
    fontSize: 8,
    letterSpacing: 0.8,
  },
  body: {
    padding: Spacing.md,
  },
  name: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 20,
    color: Colors.textPrimary,
    lineHeight: 24,
    marginBottom: 5,
  },
  tagline: {
    fontFamily: Fonts.displayItalic,
    fontSize: 13,
    color: Colors.textSecondary,
    lineHeight: 19,
    marginBottom: 10,
  },
  metaRow: {
    flexDirection: 'row',
    gap: 14,
  },
  metaItem: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 5,
  },
  metaText: {
    fontFamily: Fonts.ui,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 0.8,
  },
});
