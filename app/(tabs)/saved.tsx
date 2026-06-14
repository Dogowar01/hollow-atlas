import React from 'react';
import {
  View, Text, FlatList, TouchableOpacity,
  StyleSheet, ActivityIndicator,
} from 'react-native';
import { useRouter } from 'expo-router';
import { Feather } from '@expo/vector-icons';
import { useAuth } from '../../src/context/AuthContext';
import { useBookmarks } from '../../src/hooks/useBookmarks';
import { LocationCard } from '../../src/components/LocationCard';
import { Colors, Fonts, Spacing } from '../../src/constants/theme';

export default function SavedScreen() {
  const router  = useRouter();
  const { user } = useAuth();
  const { bookmarkedLocations, loading } = useBookmarks();

  return (
    <View style={styles.container}>
      <FlatList
        data={bookmarkedLocations}
        keyExtractor={l => l.id}
        contentContainerStyle={styles.list}
        showsVerticalScrollIndicator={false}

        ListHeaderComponent={
          <>
            {/* ── Sign-in nudge for guests ─────────────────────── */}
            {!user && (
              <TouchableOpacity
                style={styles.nudge}
                onPress={() => router.push('/auth/login' as any)}
                activeOpacity={0.75}
              >
                <Feather name="user" size={11} color={Colors.amberDim} />
                <Text style={styles.nudgeText}>
                  Sign in to sync bookmarks across devices
                </Text>
                <Feather name="chevron-right" size={11} color={Colors.amberDim} />
              </TouchableOpacity>
            )}

            {/* ── Count line ──────────────────────────────────── */}
            {!loading && bookmarkedLocations.length > 0 && (
              <Text style={styles.count}>
                {bookmarkedLocations.length}{' '}
                SAVED LOCATION{bookmarkedLocations.length !== 1 ? 'S' : ''}
              </Text>
            )}
          </>
        }

        renderItem={({ item }) => <LocationCard location={item} />}

        ListEmptyComponent={
          loading
            ? (
              <View style={styles.centred}>
                <ActivityIndicator color={Colors.amberDim} />
              </View>
            )
            : (
              <View style={styles.centred}>
                <Text style={styles.emptyGlyph}>◈</Text>
                <Text style={styles.emptyHeading}>Your archive is empty.</Text>
                <Text style={styles.emptyBody}>
                  Open any location and tap{' '}
                  <Text style={styles.emptyHighlight}>BOOKMARK</Text>{' '}
                  to save it here. No sign-in required.
                </Text>
                <TouchableOpacity
                  style={styles.exploreBtn}
                  onPress={() => router.push('/' as any)}
                  activeOpacity={0.8}
                >
                  <Text style={styles.exploreBtnText}>EXPLORE THE MAP  →</Text>
                </TouchableOpacity>
              </View>
            )
        }
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.bg },

  list: {
    padding: Spacing.base,
    paddingBottom: 40,
    flexGrow: 1,
  },

  // Guest nudge banner
  nudge: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
    backgroundColor: Colors.surface1,
    borderWidth: 1,
    borderColor: Colors.border,
    paddingHorizontal: Spacing.md,
    paddingVertical: 10,
    marginBottom: Spacing.md,
  },
  nudgeText: {
    flex: 1,
    fontFamily: Fonts.ui,
    fontSize: 10,
    color: Colors.textMuted,
    letterSpacing: 0.6,
  },

  count: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    color: Colors.textMuted,
    letterSpacing: 1.4,
    marginBottom: Spacing.md,
  },

  // Empty / loading state
  centred: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    paddingTop: 80,
    paddingHorizontal: Spacing.xxl,
  },
  emptyGlyph: {
    fontSize: 22,
    color: Colors.amberDim,
    marginBottom: 16,
  },
  emptyHeading: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 22,
    color: Colors.textPrimary,
    marginBottom: 10,
    textAlign: 'center',
  },
  emptyBody: {
    fontFamily: Fonts.displayItalic,
    fontSize: 15,
    color: Colors.textSecondary,
    textAlign: 'center',
    lineHeight: 24,
    marginBottom: Spacing.xl,
  },
  emptyHighlight: {
    fontFamily: Fonts.uiBold,
    fontSize: 12,
    color: Colors.amber,
    letterSpacing: 1,
  },
  exploreBtn: {
    borderWidth: 1,
    borderColor: Colors.amber,
    paddingHorizontal: 20,
    paddingVertical: 11,
  },
  exploreBtnText: {
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    color: Colors.amber,
    letterSpacing: 1.5,
  },
});
