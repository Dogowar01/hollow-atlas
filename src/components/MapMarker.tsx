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

  if (compact) {
    const ringSize = selected ? 28 : 22;
    const dotSize = selected ? 12 : 9;
    return (
      <View
        style={[
          compactStyles.ring,
          {
            width: ringSize,
            height: ringSize,
            borderRadius: ringSize / 2,
            borderColor: catColor + (selected ? 'CC' : '55'),
            borderWidth: selected ? 1.5 : 1,
          },
        ]}
        pointerEvents="none"
      >
        <View style={[
          compactStyles.dot,
          {
            width: dotSize,
            height: dotSize,
            borderRadius: dotSize / 2,
            backgroundColor: catColor,
          },
        ]} />
      </View>
    );
  }

  return (
    <View style={styles.wrapper} pointerEvents="none">
      {/* Label card */}
      <View style={[
        styles.label,
        { borderColor: selected ? catColor + 'AA' : catColor + '45' },
        selected && { backgroundColor: Colors.surface3 },
      ]}>
        {/* Category color stripe at top */}
        <View style={[styles.stripe, { backgroundColor: catColor }]} />
        <View style={styles.labelContent}>
          <Text style={[styles.type, { color: catColor }]}>
            {CategoryLabels[category]}
          </Text>
          <Text style={styles.name} numberOfLines={1}>{name}</Text>
        </View>
      </View>

      {/* Stem */}
      <View style={[styles.stem, { backgroundColor: catColor + '80' }]} />

      {/* Dot with optional selected ring */}
      <View style={[
        styles.dot,
        { backgroundColor: catColor },
        selected && styles.dotSelected,
      ]} />
      {selected && (
        <View style={[styles.selectedRing, { borderColor: catColor + '55' }]} />
      )}
    </View>
  );
}

const compactStyles = StyleSheet.create({
  ring: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  dot: {},
});

const styles = StyleSheet.create({
  wrapper: {
    alignItems: 'center',
  },
  label: {
    backgroundColor: Colors.surface1,
    borderWidth: 1,
    maxWidth: 160,
    minWidth: 80,
    overflow: 'hidden',
  },
  stripe: {
    height: 2,
    width: '100%',
  },
  labelContent: {
    paddingHorizontal: 8,
    paddingVertical: 5,
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
    height: 7,
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
  },
  selectedRing: {
    position: 'absolute',
    bottom: -5,
    width: 24,
    height: 24,
    borderRadius: 12,
    borderWidth: 1.5,
  },
});
