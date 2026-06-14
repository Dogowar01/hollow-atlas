import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { Colors, Fonts, Spacing } from '../constants/theme';

interface Props {
  color?: string;
  style?: object;
}

export function AtmosphericDivider({ color = Colors.amberDim, style }: Props) {
  return (
    <View style={[styles.wrapper, style]}>
      <View style={[styles.line, { backgroundColor: color + '55' }]} />
      <Text style={[styles.glyph, { color }]}>◈</Text>
      <View style={[styles.line, { backgroundColor: color + '55' }]} />
    </View>
  );
}

const styles = StyleSheet.create({
  wrapper: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 12,
    marginVertical: Spacing.lg,
  },
  line: {
    flex: 1,
    height: 1,
  },
  glyph: {
    fontFamily: Fonts.uiBold,
    fontSize: 13,
  },
});
