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

const CORNER = 14;
const WEIGHT = 1.5;

function CornerBrackets({ color }: { color: string }) {
  return (
    <>
      <View style={[corners.tl, { borderColor: color }]} />
      <View style={[corners.tr, { borderColor: color }]} />
      <View style={[corners.bl, { borderColor: color }]} />
      <View style={[corners.br, { borderColor: color }]} />
    </>
  );
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
      style={[styles.card, style]}
      onPress={() => router.push(`/location/${location.slug || location.id}` as any)}
      activeOpacity={0.75}
    >
      <CornerBrackets color={catColor + '65'} />

      {/* Header band */}
      <View style={[styles.header, { backgroundColor: darkBg }]}>
        {hasImage && (
          <Image
            source={{ uri: location.cover_image_url! }}
            style={StyleSheet.absoluteFillObject}
            resizeMode="cover"
          />
        )}
        <View style={[StyleSheet.absoluteFillObject, {
          backgroundColor: hasImage ? 'rgba(12,10,7,0.54)' : catColor + '0E',
        }]} />

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

      {/* Body */}
      <View style={styles.body}>
        <Text style={styles.name} numberOfLines={2}>{location.name}</Text>
        <Text style={styles.tagline} numberOfLines={2}>{location.tagline}</Text>

        <View style={styles.metaRow}>
          <SignalBars count={location.report_count} color={catColor} />
          <Text style={styles.metaText}>{location.report_count} REPORTS</Text>
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

const corners = StyleSheet.create({
  tl: { position: 'absolute', top: 7, left: 7, width: CORNER, height: CORNER, borderTopWidth: WEIGHT, borderLeftWidth: WEIGHT, zIndex: 2 },
  tr: { position: 'absolute', top: 7, right: 7, width: CORNER, height: CORNER, borderTopWidth: WEIGHT, borderRightWidth: WEIGHT, zIndex: 2 },
  bl: { position: 'absolute', bottom: 7, left: 7, width: CORNER, height: CORNER, borderBottomWidth: WEIGHT, borderLeftWidth: WEIGHT, zIndex: 2 },
  br: { position: 'absolute', bottom: 7, right: 7, width: CORNER, height: CORNER, borderBottomWidth: WEIGHT, borderRightWidth: WEIGHT, zIndex: 2 },
});

const signal = StyleSheet.create({
  wrapper: { flexDirection: 'row', alignItems: 'flex-end', gap: 2 },
  bar: { width: 3, borderRadius: 1 },
});

const styles = StyleSheet.create({
  card: {
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderColor: Colors.border,
    marginBottom: Spacing.md,
    overflow: 'hidden',
    position: 'relative',
  },
  header: {
    height: 96,
    justifyContent: 'flex-end',
    padding: Spacing.sm,
    overflow: 'hidden',
  },
  headerMeta: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-end',
  },
  verifiedRow: { flexDirection: 'row', alignItems: 'center', gap: 4 },
  verifiedText: { fontFamily: Fonts.uiBold, fontSize: 8, letterSpacing: 0.8 },
  body: { padding: Spacing.md, paddingBottom: Spacing.base },
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
  metaRow: { flexDirection: 'row', alignItems: 'center', gap: 8 },
  metaText: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted, letterSpacing: 0.8 },
  metaDot: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted },
});
