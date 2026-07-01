import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { Colors, Fonts } from '../constants/theme';

interface Props {
  style?: object;
}

/**
 * Shown when the live archive (Supabase) is unreachable and the app is
 * serving the bundled field archive instead.
 */
export function ArchiveBanner({ style }: Props) {
  return (
    <View style={[styles.banner, style]}>
      <View style={styles.pulse} />
      <Text style={styles.text}>
        LIVE SIGNAL LOST — READING FROM THE BOUND ARCHIVE
      </Text>
      <Text style={styles.glyph}>◈</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  banner: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
    backgroundColor: Colors.amberDim + '14',
    borderWidth: 1,
    borderColor: Colors.amberDim + '40',
    borderLeftWidth: 3,
    borderLeftColor: Colors.amberDim,
    paddingHorizontal: 12,
    paddingVertical: 8,
  },
  pulse: {
    width: 5,
    height: 5,
    borderRadius: 2.5,
    backgroundColor: Colors.amber,
    opacity: 0.8,
  },
  text: {
    flex: 1,
    fontFamily: Fonts.uiBold,
    fontSize: 8.5,
    color: Colors.amberDim,
    letterSpacing: 1.4,
  },
  glyph: {
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    color: Colors.amberDim,
    opacity: 0.7,
  },
});
