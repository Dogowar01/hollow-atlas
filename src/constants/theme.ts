export const Colors = {
  bg: '#0C0A07',
  surface1: '#131009',
  surface2: '#1A1510',
  surface3: '#231D14',
  amber: '#C8820A',
  amberBright: '#E09818',
  amberDim: '#6B4508',
  rust: '#7A3220',
  ghost: '#B8E8D2',
  textPrimary: '#EDE4D4',
  textSecondary: '#9A8C7C',
  textMuted: '#5C5248',
  border: 'rgba(200, 130, 10, 0.10)',
  borderEmphasis: 'rgba(200, 130, 10, 0.22)',
  mapWater: '#06080D',

  // Category colours — vivid and distinct
  haunted:        '#C82828',  // blood crimson
  abandoned:      '#3D7A5A',  // oxidized copper / verdigris
  folklore:       '#2E689A',  // moonlit deep blue
  paranormal:     '#7848B8',  // spectral violet
  strange_history:'#8E7035',  // aged parchment gold
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
  haunted:        'HAUNTED',
  abandoned:      'ABANDONED',
  folklore:       'FOLKLORE',
  paranormal:     'PARANORMAL',
  strange_history:'STRANGE HISTORY',
};

export const CategoryColors: Record<Category, string> = {
  haunted:        Colors.haunted,
  abandoned:      Colors.abandoned,
  folklore:       Colors.folklore,
  paranormal:     Colors.paranormal,
  strange_history:Colors.strange_history,
};

// Deep atmospheric card backgrounds — darker than surface2, tinted per category
export const CategoryDarkBg: Record<Category, string> = {
  haunted:        '#1A0606',
  abandoned:      '#061209',
  folklore:       '#060810',
  paranormal:     '#0E0614',
  strange_history:'#0C0904',
};
