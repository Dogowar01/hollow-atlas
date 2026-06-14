export const Colors = {
  bg: '#0C0A07',
  surface1: '#131009',
  surface2: '#1A1510',
  surface3: '#231D14',
  amber: '#C8820A',
  amberBright: '#E09818',
  amberDim: '#6B4508',
  rust: '#7A3220',
  textPrimary: '#EDE4D4',
  textSecondary: '#9A8C7C',
  textMuted: '#5C5248',
  border: 'rgba(200, 130, 10, 0.10)',
  borderEmphasis: 'rgba(200, 130, 10, 0.22)',
  mapWater: '#06080D',

  haunted: '#8B3A2A',
  abandoned: '#4A6741',
  folklore: '#3A5A7A',
  paranormal: '#6A3A7A',
  strange_history: '#7A6A3A',
} as const;

export const Fonts = {
  display: 'CormorantGaramond_400Regular',
  displayItalic: 'CormorantGaramond_400Regular_Italic',
  displaySemiBold: 'CormorantGaramond_600SemiBold',
  ui: 'Rajdhani_500Medium',
  uiBold: 'Rajdhani_600SemiBold',
  uiSeventy: 'Rajdhani_700Bold',
} as const;

export const Spacing = {
  xs: 4,
  sm: 8,
  md: 12,
  base: 16,
  lg: 20,
  xl: 24,
  xxl: 32,
  xxxl: 48,
} as const;

export type Category = 'haunted' | 'abandoned' | 'folklore' | 'paranormal' | 'strange_history';

export const CategoryLabels: Record<Category, string> = {
  haunted: 'HAUNTED',
  abandoned: 'ABANDONED',
  folklore: 'FOLKLORE',
  paranormal: 'PARANORMAL',
  strange_history: 'STRANGE HISTORY',
};

export const CategoryColors: Record<Category, string> = {
  haunted: Colors.haunted,
  abandoned: Colors.abandoned,
  folklore: Colors.folklore,
  paranormal: Colors.paranormal,
  strange_history: Colors.strange_history,
};
