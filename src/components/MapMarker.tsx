import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { Colors, Fonts, CategoryColors, CategoryLabels } from '../constants/theme';
import { Category } from '../types';

interface Props {
  name: string;
  category: Category;
  selected?: boolean;
  compact?: boolean;
}

export function MapMarker({ name, category, selected, compact }: Props) {
  const catColor = CategoryColors[category] || Colors.amber;

  return (
    <View style={styles.wrapper} pointerEvents="none">
      {!compact && (
        <>
          <View style={[
            styles.label,
            { borderColor: selected ? catColor : Colors.borderEmphasis },
            selected && styles.labelSelected,
          ]}>
            <Text style={[styles.type, { color: catColor }]}>
              {CategoryLabels[category]}
            </Text>
            <Text style={styles.name} numberOfLines={1}>{name}</Text>
          </View>
          <View style={[styles.stem, { backgroundColor: catColor + '80' }]} />
        </>
      )}
      <View style={[
        styles.dot,
        { backgroundColor: catColor },
        selected && styles.dotSelected,
      ]} />
    </View>
  );
}

const styles = StyleSheet.create({
  wrapper: {
    alignItems: 'center',
  },
  label: {
    backgroundColor: Colors.surface1,
    borderWidth: 1,
    paddingHorizontal: 8,
    paddingVertical: 5,
    maxWidth: 160,
    minWidth: 80,
  },
  labelSelected: {
    backgroundColor: Colors.surface3,
  },
  type: {
    fontFamily: Fonts.uiBold,
    fontSize: 7,
    letterSpacing: 1.2,
    marginBottom: 2,
  },
  name: {
    fontFamily: Fonts.displaySemiBold,
    fontSize: 12,
    color: Colors.textPrimary,
    lineHeight: 14,
  },
  stem: {
    width: 1,
    height: 6,
  },
  dot: {
    width: 10,
    height: 10,
    borderRadius: 5,
  },
  dotSelected: {
    width: 14,
    height: 14,
    borderRadius: 7,
    borderWidth: 2,
    borderColor: '#0C0A07', // Colors.bg — avoids import cycle
  },
});
