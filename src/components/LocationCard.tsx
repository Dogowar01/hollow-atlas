import React from 'react';
import { View, Text, TouchableOpacity, StyleSheet, Image } from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useRouter } from 'expo-router';
import { Location } from '../types';
import { Colors, Fonts, Spacing, CategoryColors, CategoryDarkBg } from '../constants/theme';
import { CategoryBadge } from './CategoryBadge';

interface Props {
  location: Location;
  style?: object;
}

function SignalBars({ count, color }: { count: number; color: string }) {
  const filled = count >= 40 ? 5 : count >= 22 ? 4 : count >= 10 ? 3 : count >= 4 ? 2 : 1;
  return (
    <View style={signal.wrapper}>
      {([1, 2, 3, 4, 5] as const).map(i => (
        <View
          key={i}
          style={[
            signal.bar,
            {
              height: 3 + i * 2,
              backgroundColor: color,
              opacity: i <= filled ? 0.28 + i * 0.14 : 0.1,
            },
          ]}
        />
      ))}
    </View>
  );
}

export function LocationCard({ location, style }: Props) {
  const router = useRouter();
  const catColor = CategoryColors[location.category];
  const darkBg = CategoryDarkBg[location.category] || Colors.bg;
  const hasImage = !!location.cover_image_url;

  return (
    <TouchableOpacity
      style={[styles.card, { borderLeftColor: catColor }, style]}
      onPress={() => router.push(`/location/${location.slug || location.id}` as any)}
      activeOpacity={0.72}
    >
      {/* Image / tinted header */}
      <View style={[styles.header, { backgroundColor: darkBg }]}>
        {hasImage && (
          <Image
            source={{ uri: location.cover_image_url! }}
            style={StyleSheet.absoluteFillObject}
            resizeMode="cover"
          />
        )}
        {/* Overlay */}
        <View style={[StyleSheet.absoluteFillObject, {
          backgroundColor: hasImage ? 'rgba(12,10,7,0.48)' : catColor + '14',
        }]} />
        {/* Scrim at top so badge is readable */}
        <View style={styles.headerScrim} />

        <View style={styles.headerFooter}>
          <CategoryBadge category={location.category} size="sm" />
          {location.verified && (
            <View style={styles.verifiedRow}>
              <Feather name="check-circle" size={9} color={catColor} />
              <Text style={[styles.verifiedText, { color: catColor }]}>VERIFIED</Text>
            </View>
          )}
        </View>
      </View>

      {/* Thin category accent line below image */}
      <View style={[styles.accentLine, { backgroundColor: catColor + '60' }]} />

      {/* Body */}
      <View style={styles.body}>
        <Text style={styles.name} numberOfLines={2}>{location.name}</Text>
        <Text style={styles.tagline} numberOfLines={2}>{location.tagline}</Text>

        <View style={styles.metaRow}>
          <SignalBars count={location.report_count} color={catColor} />
          <Text style={styles.metaText}>{location.report_count} REPORTS</Text>
          {location.state && (
            <>
              <Text style={styles.metaDot}>·</Text>
              <Text style={styles.metaText}>{location.state}</Text>
            </>
          )}
          {location.distance_label && (
            <>
              <Text style={styles.metaDot}>·</Text>
              <Text style={styles.metaText}>{location.distance_label}</Text>
            </>
          )}
        </View>
      </View>
    </TouchableOpacity>
  );
}

const signal = StyleSheet.create({
  wrapper: { flexDirection: 'row', alignItems: 'flex-end', gap: 2 },
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
  header: {
    height: 152,
    justifyContent: 'flex-end',
    padding: Spacing.sm,
    overflow: 'hidden',
  },
  headerScrim: {
    position: 'absolute',
    top: 0, left: 0, right: 0,
    height: 48,
    backgroundColor: 'rgba(0,0,0,0.22)',
  },
  headerFooter: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-end',
  },
  verifiedRow: { flexDirection: 'row', alignItems: 'center', gap: 4 },
  verifiedText: { fontFamily: Fonts.uiBold, fontSize: 8, letterSpacing: 0.8 },

  accentLine: { height: 1 },

  body: {
    padding: Spacing.base,
    paddingTop: 14,
    paddingBottom: Spacing.base,
  },
  name: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 22,
    color: Colors.textPrimary,
    lineHeight: 27,
    marginBottom: 6,
  },
  tagline: {
    fontFamily: Fonts.displayItalic,
    fontSize: 13.5,
    color: Colors.textSecondary,
    lineHeight: 20,
    marginBottom: 12,
  },
  metaRow: { flexDirection: 'row', alignItems: 'center', gap: 8 },
  metaText: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted, letterSpacing: 0.8 },
  metaDot: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted },
});
