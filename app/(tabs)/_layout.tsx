import { Tabs } from 'expo-router';
import { Feather } from '@expo/vector-icons';
import { Platform } from 'react-native';
import { Colors, Fonts } from '../../src/constants/theme';

export default function TabLayout() {
  return (
    <Tabs
      screenOptions={{
        tabBarStyle: {
          backgroundColor: Colors.surface1,
          borderTopColor: Colors.borderEmphasis,
          borderTopWidth: 1,
          height: 70,
          paddingBottom: 12,
        },
        tabBarActiveTintColor: Colors.amber,
        tabBarInactiveTintColor: Colors.textMuted,
        tabBarActiveBackgroundColor: Colors.amber + '0D',
        tabBarLabelStyle: {
          fontFamily: Fonts.uiBold,
          fontSize: 8.5,
          letterSpacing: 1.1,
          marginTop: 2,
        },
        headerStyle: { backgroundColor: Colors.surface1 },
        headerTintColor: Colors.textPrimary,
        headerTitleStyle: { fontFamily: 'CormorantGaramond_600SemiBold', fontSize: 22 },
        headerShadowVisible: false,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          title: Platform.select({ web: 'Atlas', default: 'Map' }),
          tabBarLabel: Platform.select({ web: 'ATLAS', default: 'MAP' }),
          tabBarIcon: ({ color, size }) => (
            <Feather name={Platform.select({ web: 'book-open', default: 'map' }) as any} size={size} color={color} />
          ),
          headerTitle: 'Hollow Atlas',
          headerShown: Platform.OS !== 'web',
        }}
      />
      <Tabs.Screen
        name="discover"
        options={{
          title: 'Discover',
          tabBarLabel: 'DISCOVER',
          tabBarIcon: ({ color, size }) => <Feather name="compass" size={size} color={color} />,
        }}
      />
      <Tabs.Screen
        name="submit"
        options={{
          title: 'Submit',
          tabBarLabel: 'SUBMIT',
          tabBarIcon: ({ color, size }) => <Feather name="plus-circle" size={size} color={color} />,
        }}
      />
      <Tabs.Screen
        name="saved"
        options={{
          title: 'Saved',
          tabBarLabel: 'SAVED',
          tabBarIcon: ({ color, size }) => <Feather name="bookmark" size={size} color={color} />,
        }}
      />
    </Tabs>
  );
}
