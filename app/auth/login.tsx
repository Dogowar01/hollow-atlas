import React, { useState } from 'react';
import { View, Text, TextInput, StyleSheet, TouchableOpacity, Alert, KeyboardAvoidingView, Platform, ScrollView } from 'react-native';
import { useRouter } from 'expo-router';
import { supabase } from '../../src/lib/supabase';
import { PrimaryButton } from '../../src/components/PrimaryButton';
import { Colors, Fonts, Spacing } from '../../src/constants/theme';

export default function LoginScreen() {
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);

  const handleLogin = async () => {
    if (!email || !password) {
      Alert.alert('Required', 'Enter your email and password.');
      return;
    }
    setLoading(true);
    const { error } = await supabase.auth.signInWithPassword({ email, password });
    setLoading(false);
    if (error) {
      Alert.alert('Sign in failed', error.message);
    } else {
      router.replace('/(tabs)' as any);
    }
  };

  return (
    <KeyboardAvoidingView style={styles.container} behavior={Platform.OS === 'ios' ? 'padding' : undefined}>
      <ScrollView contentContainerStyle={styles.inner} keyboardShouldPersistTaps="handled">
        <View style={styles.header}>
          <Text style={styles.title}>Hollow Atlas</Text>
          <Text style={styles.subtitle}>Enter your credentials to access the archive.</Text>
        </View>

        <View style={styles.divider} />

        <View style={styles.field}>
          <Text style={styles.label}>EMAIL</Text>
          <TextInput
            style={styles.input}
            placeholder="your@email.com"
            placeholderTextColor={Colors.textMuted}
            value={email}
            onChangeText={setEmail}
            keyboardType="email-address"
            autoCapitalize="none"
            autoCorrect={false}
          />
        </View>

        <View style={styles.field}>
          <Text style={styles.label}>PASSWORD</Text>
          <TextInput
            style={styles.input}
            placeholder="••••••••"
            placeholderTextColor={Colors.textMuted}
            value={password}
            onChangeText={setPassword}
            secureTextEntry
          />
        </View>

        <PrimaryButton label="ENTER THE ATLAS" onPress={handleLogin} loading={loading} fullWidth />

        <TouchableOpacity style={styles.link} onPress={() => router.push('/auth/signup' as any)}>
          <Text style={styles.linkText}>No account yet? <Text style={styles.linkEmphasis}>Register here.</Text></Text>
        </TouchableOpacity>
      </ScrollView>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.bg },
  inner: { padding: Spacing.lg, paddingTop: Spacing.xxxl, paddingBottom: 44 },
  header: { marginBottom: Spacing.lg },
  title: { fontFamily: Fonts.displaySemiBold, fontSize: 36, color: Colors.textPrimary, marginBottom: 8 },
  subtitle: { fontFamily: Fonts.displayItalic, fontSize: 15, color: Colors.textSecondary, lineHeight: 22 },
  divider: { height: 1, backgroundColor: Colors.border, marginVertical: Spacing.lg },
  field: { marginBottom: Spacing.lg },
  label: { fontFamily: Fonts.uiBold, fontSize: 9, color: Colors.textMuted, letterSpacing: 1.5, marginBottom: 8 },
  input: {
    backgroundColor: Colors.surface2,
    borderWidth: 1,
    borderColor: Colors.border,
    color: Colors.textPrimary,
    fontFamily: Fonts.display,
    fontStyle: 'italic',
    fontSize: 15,
    paddingHorizontal: Spacing.md,
    paddingVertical: 11,
  },
  link: { marginTop: Spacing.lg, alignItems: 'center' },
  linkText: { fontFamily: Fonts.ui, fontSize: 12, color: Colors.textMuted, letterSpacing: 0.5 },
  linkEmphasis: { color: Colors.amber },
});
