import React from 'react';
import { TouchableOpacity, Text, StyleSheet, ActivityIndicator } from 'react-native';
import { Colors, Fonts } from '../constants/theme';

interface Props {
  label: string;
  onPress: () => void;
  loading?: boolean;
  variant?: 'primary' | 'ghost';
  fullWidth?: boolean;
}

export function PrimaryButton({ label, onPress, loading, variant = 'primary', fullWidth }: Props) {
  const isPrimary = variant === 'primary';
  return (
    <TouchableOpacity
      style={[
        styles.btn,
        isPrimary ? styles.primary : styles.ghost,
        fullWidth && styles.full,
      ]}
      onPress={onPress}
      disabled={loading}
      activeOpacity={0.75}
    >
      {loading
        ? <ActivityIndicator color={isPrimary ? Colors.bg : Colors.amber} />
        : <Text style={[styles.label, !isPrimary && styles.labelGhost]}>{label}</Text>
      }
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  btn: {
    paddingHorizontal: 18,
    paddingVertical: 12,
    alignItems: 'center',
    justifyContent: 'center',
  },
  primary: { backgroundColor: Colors.amber },
  ghost: { borderWidth: 1, borderColor: Colors.border },
  full: { flex: 1 },
  label: {
    fontFamily: Fonts.uiSeventy,
    fontSize: 11,
    color: Colors.bg,
    letterSpacing: 1.2,
  },
  labelGhost: { color: Colors.textSecondary },
});
