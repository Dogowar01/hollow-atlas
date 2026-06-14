export const Colors = {
  bg:       '#080705',
  surface1: '#0F0D09',
  surface2: '#161208',
  surface3: '#1E1810',
  amber:        '#C8820A',
  amberBright:  '#E09818',
  amberDim:     '#7A5210',
  amberGlow:    '#C8820A',
  rust:         '#7A3220',
  ghost:        '#9ECDB8',
  crimson:      '#7D0F0F',
  textPrimary:  '#EAE0CE',
  textSecondary:'#8A7C6C',
  textMuted:    '#4A4240',
  border:           'rgba(200, 130, 10, 0.13)',
  borderEmphasis:   'rgba(200, 130, 10, 0.26)',
  borderCrimson:    'rgba(125, 15, 15, 0.35)',
  mapWater: '#04060B',

  haunted:        '#A81818',
  abandoned:      '#2E6644',
  folklore:       '#1E5282',
  paranormal:     '#5C38A0',
  strange_history:'#785E1E',
} as const;

export const Fonts = {
  display:        'CormorantGaramond_400Regular',
  displayLight:   'CormorantGaramond_300Light',
  displayItalic:  'CormorantGaramond_400Regular_Italic',
  displaySemiBold:'CormorantGaramond_600SemiBold',
  ui:      'Rajdhani_500Medium',
  uiBold:  'Rajdhani_600SemiBold',
  uiSeventy:'Rajdhani_700Bold',
} as const;

export const Spacing = {
  xs: 4, sm: 8, md: 12, base: 16,
  lg: 20, xl: 24, xxl: 32, xxxl: 48,
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

export const CategoryDarkBg: Record<Category, string> = {
  haunted:        '#110303',
  abandoned:      '#030A05',
  folklore:       '#030508',
  paranormal:     '#08030F',
  strange_history:'#090702',
};
