import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { Category, CategoryColors, CategoryLabels, Colors, Fonts } from '../constants/theme';

interface Props {
  category: Category;
  size?: 'sm' | 'md';
}

export function CategoryBadge({ category, size = 'md' }: Props) {
  const color = CategoryColors[category];
  return (
    <View style={[
      styles.badge,
      { borderColor: color + '45', borderLeftColor: color, borderLeftWidth: 3 },
      size === 'sm' && styles.sm,
    ]}>
      <Text style={[styles.label, { color }, size === 'sm' && styles.labelSm]}>
        {CategoryLabels[category]}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  badge: {
    borderWidth: 1,
    alignSelf: 'flex-start',
  },
  sm: {},
  label: {
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    letterSpacing: 1.4,
    paddingVertical: 3,
    paddingHorizontal: 8,
  },
  labelSm: {
    fontSize: 8.5,
    paddingVertical: 2,
    paddingHorizontal: 6,
  },
});
