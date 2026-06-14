import { Stack } from 'expo-router';
import { StatusBar } from 'expo-status-bar';
import { View } from 'react-native';
import {
  useFonts,
  CormorantGaramond_300Light,
  CormorantGaramond_400Regular,
  CormorantGaramond_400Regular_Italic,
  CormorantGaramond_600SemiBold,
} from '@expo-google-fonts/cormorant-garamond';
import {
  Rajdhani_400Regular,
  Rajdhani_500Medium,
  Rajdhani_600SemiBold,
  Rajdhani_700Bold,
} from '@expo-google-fonts/rajdhani';
import { AuthProvider } from '../src/context/AuthContext';
import { UserLocationProvider } from '../src/context/UserLocationContext';
import { Colors } from '../src/constants/theme';

export default function RootLayout() {
  const [fontsLoaded] = useFonts({
    CormorantGaramond_300Light,
    CormorantGaramond_400Regular,
    CormorantGaramond_400Regular_Italic,
    CormorantGaramond_600SemiBold,
    Rajdhani_400Regular,
    Rajdhani_500Medium,
    Rajdhani_600SemiBold,
    Rajdhani_700Bold,
  });

  if (!fontsLoaded) {
    return <View style={{ flex: 1, backgroundColor: Colors.bg }} />;
  }

  return (
    <AuthProvider>
      <UserLocationProvider>
      <StatusBar style="light" />
      <Stack
        screenOptions={{
          headerStyle: { backgroundColor: Colors.surface1 },
          headerTintColor: Colors.textPrimary,
          headerTitleStyle: { fontFamily: 'CormorantGaramond_600SemiBold', fontSize: 20 },
          contentStyle: { backgroundColor: Colors.bg },
          headerShadowVisible: false,
        }}
      />
      </UserLocationProvider>
    </AuthProvider>
  );
}
