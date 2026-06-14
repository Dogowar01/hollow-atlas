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
    <View style={[styles.badge, { borderColor: color + '50' }, size === 'sm' && styles.sm]}>
      <Text style={[styles.label, { color }, size === 'sm' && styles.labelSm]}>
        {CategoryLabels[category]}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  badge: {
    borderWidth: 1,
    paddingHorizontal: 8,
    paddingVertical: 3,
    alignSelf: 'flex-start',
  },
  sm: { paddingHorizontal: 6, paddingVertical: 2 },
  label: {
    fontFamily: Fonts.uiBold,
    fontSize: 10,
    letterSpacing: 1.4,
  },
  labelSm: { fontSize: 8.5 },
});
