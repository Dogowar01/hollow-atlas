import React from 'react';
import { View, StyleSheet } from 'react-native';
import { Colors } from '../constants/theme';

interface Props {
  color?: string;
  size?: number;
  thickness?: number;
  inset?: number;
  opacity?: number;
}

/**
 * Four reticle corner marks overlaid on the parent view — the "field
 * documentation" motif used on covers, headers, and search instruments.
 * Parent must have position: relative (default for RN views).
 */
export function CornerBrackets({
  color = Colors.amberDim,
  size = 10,
  thickness = 1,
  inset = 6,
  opacity = 0.9,
}: Props) {
  const base = {
    position: 'absolute' as const,
    width: size,
    height: size,
    borderColor: color,
    opacity,
  };
  return (
    <View style={StyleSheet.absoluteFill} pointerEvents="none">
      <View style={[base, { top: inset, left: inset, borderTopWidth: thickness, borderLeftWidth: thickness }]} />
      <View style={[base, { top: inset, right: inset, borderTopWidth: thickness, borderRightWidth: thickness }]} />
      <View style={[base, { bottom: inset, left: inset, borderBottomWidth: thickness, borderLeftWidth: thickness }]} />
      <View style={[base, { bottom: inset, right: inset, borderBottomWidth: thickness, borderRightWidth: thickness }]} />
    </View>
  );
}
