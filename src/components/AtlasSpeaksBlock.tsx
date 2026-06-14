import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { Colors, Fonts, Spacing } from '../constants/theme';

interface Props {
  text: string;
  accentColor?: string;
}

export function AtlasSpeaksBlock({ text, accentColor = Colors.amber }: Props) {
  return (
    <View style={[styles.block, { borderLeftColor: accentColor }]}>
      <Text style={[styles.label, { color: accentColor }]}>◈ THE ATLAS SPEAKS</Text>
      <Text style={styles.text}>"{text}"</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  block: {
    backgroundColor: Colors.surface2,
    borderLeftWidth: 3,
    borderWidth: 1,
    borderColor: 'rgba(200,130,10,0.18)',
    padding: Spacing.base,
    marginVertical: Spacing.lg,
  },
  label: {
    fontFamily: Fonts.uiBold,
    fontSize: 9,
    letterSpacing: 1.6,
    marginBottom: Spacing.sm,
  },
  text: {
    fontFamily: Fonts.displayItalic,
    fontSize: 16,
    color: Colors.textSecondary,
    lineHeight: 26,
  },
});
