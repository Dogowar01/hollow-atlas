import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { Colors, Fonts, Spacing } from '../constants/theme';

interface Props {
  text: string;
  accentColor?: string;
}

export function AtlasSpeaksBlock({ text, accentColor = Colors.amber }: Props) {
  return (
    <View style={[styles.block, { borderColor: accentColor + '38' }]}>
      {/* Transmission header */}
      <View style={[
        styles.header,
        { borderBottomColor: accentColor + '22', backgroundColor: accentColor + '09' },
      ]}>
        {/* Ascending signal bars */}
        <View style={styles.signalBars}>
          <View style={[styles.bar, { height: 4, backgroundColor: accentColor, opacity: 0.35 }]} />
          <View style={[styles.bar, { height: 7, backgroundColor: accentColor, opacity: 0.65 }]} />
          <View style={[styles.bar, { height: 10, backgroundColor: accentColor }]} />
        </View>
        <Text style={[styles.label, { color: accentColor }]}>THE ATLAS SPEAKS</Text>
      </View>

      {/* Quote body */}
      <View style={styles.quoteBody}>
        <Text style={[styles.openQuote, { color: accentColor + '38' }]}>"</Text>
        <Text style={styles.text}>{text}</Text>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  block: {
    backgroundColor: Colors.surface1,
    borderWidth: 1,
    marginVertical: Spacing.lg,
    overflow: 'hidden',
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
    paddingHorizontal: Spacing.md,
    paddingVertical: 9,
    borderBottomWidth: 1,
  },
  signalBars: {
    flexDirection: 'row',
    alignItems: 'flex-end',
    gap: 2,
  },
  bar: {
    width: 3,
    borderRadius: 1,
  },
  label: {
    fontFamily: Fonts.uiBold,
    fontSize: 8.5,
    letterSpacing: 2,
  },
  quoteBody: {
    padding: Spacing.md,
    paddingTop: 10,
  },
  openQuote: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 56,
    lineHeight: 42,
    marginLeft: -3,
  },
  text: {
    fontFamily: Fonts.displayItalic,
    fontSize: 16.5,
    color: Colors.textSecondary,
    lineHeight: 29,
  },
});
