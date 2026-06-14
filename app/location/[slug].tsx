import React, { useState } from 'react';
import { View, Text, ScrollView, TouchableOpacity, StyleSheet, Share, Image, Platform, Linking } from 'react-native';
import { useLocalSearchParams, Stack } from 'expo-router';
import { LinearGradient } from 'expo-linear-gradient';
import { Feather } from '@expo/vector-icons';
import { useLocation } from '../../src/hooks/useLocations';
import { useBookmarks } from '../../src/hooks/useBookmarks';
import { AtlasSpeaksBlock } from '../../src/components/AtlasSpeaksBlock';
import { AtmosphericDivider } from '../../src/components/AtmosphericDivider';
import { CategoryBadge } from '../../src/components/CategoryBadge';
import { Colors, Fonts, Spacing, CategoryColors } from '../../src/constants/theme';

const headerBg: Record<string, string> = {
  haunted:        '#1C0908',
  abandoned:      '#091309',
  folklore:       '#08090F',
  paranormal:     '#120A14',
  strange_history:'#0E0D06',
};

export default function LocationScreen() {
  const { slug } = useLocalSearchParams<{ slug: string }>();
  const { location, loading } = useLocation(slug);
  const { bookmarkedIds, toggleBookmark } = useBookmarks();
  const [bookmarkLoading, setBookmarkLoading] = useState(false);
  const [imageError, setImageError] = useState(false);

  if (loading || !location) {
    return (
      <View style={styles.loading}>
        <Stack.Screen options={{ title: '', headerTransparent: true }} />
        <Text style={styles.loadingText}>Consulting the archive...</Text>
      </View>
    );
  }

  const isBookmarked = bookmarkedIds.has(location.id);
  const catColor = CategoryColors[location.category] || Colors.amber;
  const bgColor = headerBg[location.category] || '#0C0A07';

  const handleBookmark = async () => {
    setBookmarkLoading(true);
    await toggleBookmark(location.id, location);
    setBookmarkLoading(false);
  };

  const handleShare = async () => {
    await Share.share({
      message: `${location.name} — "${location.tagline}"\n\nFound on Hollow Atlas.`,
      title: location.name,
    });
  };

  const handleDirections = () => {
    const { latitude, longitude } = location;
    const label = encodeURIComponent(location.name);

    const nativeUrl = Platform.OS === 'ios'
      ? `maps://?daddr=${latitude},${longitude}&q=${label}`
      : `geo:${latitude},${longitude}?q=${latitude},${longitude}(${label})`;

    const fallbackUrl =
      `https://www.google.com/maps/dir/?api=1&destination=${latitude},${longitude}`;

    Linking.openURL(nativeUrl).catch(() => Linking.openURL(fallbackUrl));
  };

  const coordStr = `${Math.abs(location.latitude).toFixed(4)}°${location.latitude < 0 ? 'S' : 'N'}  ${Math.abs(location.longitude).toFixed(4)}°${location.longitude < 0 ? 'W' : 'E'}`;

  return (
    <>
      {/* Transparent nav bar so header bleeds into status bar */}
      <Stack.Screen options={{
        title: '',
        headerTransparent: true,
        headerTintColor: Colors.textSecondary,
      }} />

      <ScrollView style={styles.container} showsVerticalScrollIndicator={false}>

        {/* ── Cinematic header ─────────────────────────────── */}
        <View style={[styles.header, { backgroundColor: bgColor }]}>

          {/* Photo — fills header when available */}
          {location.cover_image_url && !imageError && (
            <Image
              source={{ uri: location.cover_image_url }}
              style={{ position: 'absolute', top: 0, left: 0, right: 0, height: 320 }}
              resizeMode="cover"
              onError={() => setImageError(true)}
            />
          )}

          {/* Dark overlay: heavier over photo, subtle glow over plain bg */}
          <View style={[
            StyleSheet.absoluteFillObject,
            {
              backgroundColor: location.cover_image_url
                ? 'rgba(12,10,7,0.55)'
                : catColor + '18',
            },
          ]} />

          {/* Top-left badge */}
          <View style={styles.headerTop}>
            <CategoryBadge category={location.category} />
          </View>

          {/* Name + tagline pinned to bottom */}
          <View style={styles.headerBottom}>
            <Text style={styles.headerName}>{location.name}</Text>
            <Text style={styles.headerTagline}>{location.tagline}</Text>
          </View>

          {/* Gradient fade into content */}
          <LinearGradient
            colors={['transparent', Colors.bg]}
            locations={[0.55, 1]}
            style={styles.headerFade}
          />
        </View>

        {/* ── Content ──────────────────────────────────────── */}
        <View style={styles.content}>

          {/* Meta row */}
          <View style={styles.metaRow}>
            {location.distance_label && (
              <>
                <Text style={styles.metaItem}>{location.distance_label}</Text>
                <Text style={styles.metaDot}>·</Text>
              </>
            )}
            <Text style={styles.metaItem}>{location.report_count} REPORTS</Text>
            {location.verified && (
              <>
                <Text style={styles.metaDot}>·</Text>
                <Feather name="check-circle" size={10} color={catColor} />
                <Text style={[styles.metaItem, { color: catColor, marginLeft: 3 }]}>VERIFIED</Text>
              </>
            )}
          </View>

          {/* Coordinates — instrument readout */}
          <View style={styles.coordRow}>
            <View style={[styles.coordBox, { borderColor: catColor + '30' }]}>
              <Text style={styles.coordLabel}>LAT</Text>
              <Text style={styles.coordValue}>
                {Math.abs(location.latitude).toFixed(4)}° {location.latitude < 0 ? 'S' : 'N'}
              </Text>
            </View>
            <View style={[styles.coordBox, { borderColor: catColor + '30' }]}>
              <Text style={styles.coordLabel}>LNG</Text>
              <Text style={styles.coordValue}>
                {Math.abs(location.longitude).toFixed(4)}° {location.longitude < 0 ? 'W' : 'E'}
              </Text>
            </View>
          </View>

          <AtmosphericDivider color={catColor} style={{ marginTop: 4, marginBottom: 4 }} />

          {/* Body text */}
          <Text style={styles.body}>{location.body}</Text>

          {/* Atlas speaks */}
          {location.ai_narrator && (
            <AtlasSpeaksBlock text={location.ai_narrator} accentColor={catColor} />
          )}

          {/* Actions */}
          <View style={styles.actions}>
            <TouchableOpacity
              style={[
                styles.actionBtn,
                styles.ghostBtn,
                { borderColor: isBookmarked ? catColor + '80' : catColor + '40' },
              ]}
              onPress={handleBookmark}
              disabled={bookmarkLoading}
              activeOpacity={0.7}
            >
              <Feather
                name="bookmark"
                size={13}
                color={isBookmarked ? catColor : Colors.textMuted}
              />
              <Text style={[styles.actionLabel, isBookmarked && { color: catColor }]}>
                {isBookmarked ? 'SAVED' : 'BOOKMARK'}
              </Text>
            </TouchableOpacity>

            <TouchableOpacity
              style={[styles.actionBtn, styles.ghostBtn, { borderColor: catColor + '40' }]}
              onPress={handleDirections}
              activeOpacity={0.7}
            >
              <Feather name="navigation" size={13} color={catColor} />
              <Text style={[styles.actionLabel, { color: catColor }]}>NAVIGATE</Text>
            </TouchableOpacity>

            <TouchableOpacity
              style={[styles.actionBtn, { backgroundColor: catColor }]}
              onPress={handleShare}
              activeOpacity={0.8}
            >
              <Feather name="share-2" size={13} color={Colors.bg} />
              <Text style={[styles.actionLabel, { color: Colors.bg }]}>SHARE</Text>
            </TouchableOpacity>
          </View>

        </View>
      </ScrollView>
    </>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: Colors.bg,
  },
  loading: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: Colors.bg,
  },
  loadingText: {
    fontFamily: Fonts.displayItalic,
    fontSize: 16,
    color: Colors.textMuted,
  },

  // ── Header ─────────────────────────────────────────────
  header: {
    height: 320,
    paddingTop: 100,           // room for the transparent nav bar
    justifyContent: 'space-between',
  },
  glow: {
    position: 'absolute',
    top: 0, left: 0, right: 0, bottom: 0,
  },
  headerTop: {
    paddingHorizontal: Spacing.lg,
  },
  headerBottom: {
    paddingHorizontal: Spacing.lg,
    paddingBottom: 48,          // extra space before the gradient starts eating it
    zIndex: 2,
  },
  headerName: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 34,
    color: Colors.textPrimary,
    lineHeight: 40,
    marginBottom: 8,
  },
  headerTagline: {
    fontFamily: Fonts.displayItalic,
    fontSize: 16,
    color: Colors.textSecondary,
    lineHeight: 22,
  },
  headerFade: {
    position: 'absolute',
    bottom: 0, left: 0, right: 0,
    height: 120,
  },

  // ── Content ────────────────────────────────────────────
  content: {
    paddingHorizontal: Spacing.lg,
    paddingBottom: 52,
  },
  metaRow: {
    flexDirection: 'row',
    alignItems: 'center',
    flexWrap: 'wrap',
    gap: 6,
    marginBottom: 6,
  },
  metaItem: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 1.2,
  },
  metaDot: {
    fontFamily: Fonts.ui,
    fontSize: 9,
    color: Colors.textMuted,
  },
  coordRow: {
    flexDirection: 'row',
    gap: 8,
    marginBottom: Spacing.sm,
  },
  coordBox: {
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    paddingHorizontal: 10,
    paddingVertical: 6,
    flex: 1,
  },
  coordLabel: {
    fontFamily: Fonts.uiBold,
    fontSize: 7.5,
    color: Colors.textMuted,
    letterSpacing: 2,
    marginBottom: 2,
  },
  coordValue: {
    fontFamily: Fonts.ui,
    fontSize: 11,
    color: Colors.textSecondary,
    letterSpacing: 0.8,
  },
  body: {
    fontFamily: Fonts.display,
    fontSize: 17,
    color: Colors.textPrimary,
    lineHeight: 30,
  },

  // ── Actions ────────────────────────────────────────────
  actions: {
    flexDirection: 'row',
    gap: 10,
    marginTop: Spacing.xl,
  },
  actionBtn: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    gap: 7,
    paddingVertical: 13,
  },
  ghostBtn: {
    borderWidth: 1,
  },
  actionLabel: {
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    color: Colors.textMuted,
    letterSpacing: 1.2,
  },
});
