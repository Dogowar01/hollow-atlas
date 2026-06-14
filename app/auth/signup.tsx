import React, { useState } from 'react';
import { View, Text, TextInput, StyleSheet, TouchableOpacity, Alert, KeyboardAvoidingView, Platform, ScrollView } from 'react-native';
import { useRouter } from 'expo-router';
import { supabase } from '../../src/lib/supabase';
import { PrimaryButton } from '../../src/components/PrimaryButton';
import { Colors, Fonts, Spacing } from '../../src/constants/theme';

export default function SignupScreen() {
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [username, setUsername] = useState('');
  const [loading, setLoading] = useState(false);

  const handleSignup = async () => {
    if (!email || !password || !username) {
      Alert.alert('Required', 'Fill in all fields to join the Atlas.');
      return;
    }
    if (password.length < 8) {
      Alert.alert('Weak password', 'Password must be at least 8 characters.');
      return;
    }

    setLoading(true);
    const { data, error } = await supabase.auth.signUp({ email, password });
    if (error) {
      setLoading(false);
      Alert.alert('Registration failed', error.message);
      return;
    }

    if (data.user) {
      await supabase.from('users').insert({
        id: data.user.id,
        username,
        submission_count: 0,
      });
    }

    setLoading(false);
    Alert.alert(
      'Welcome to the Atlas',
      'Check your email to confirm your account. Then sign in to begin exploring.',
      [{ text: 'Sign in', onPress: () => router.replace('/auth/login' as any) }]
    );
  };

  return (
    <KeyboardAvoidingView style={styles.container} behavior={Platform.OS === 'ios' ? 'padding' : undefined}>
      <ScrollView contentContainerStyle={styles.inner} keyboardShouldPersistTaps="handled">
        <View style={styles.header}>
          <Text style={styles.title}>Join the Atlas</Text>
          <Text style={styles.subtitle}>Register to submit sightings and build your archive.</Text>
        </View>

        <View style={styles.divider} />

        <View style={styles.field}>
          <Text style={styles.label}>USERNAME</Text>
          <TextInput
            style={styles.input}
            placeholder="Choose a name for the archive"
            placeholderTextColor={Colors.textMuted}
            value={username}
            onChangeText={setUsername}
            autoCapitalize="none"
            autoCorrect={false}
          />
        </View>

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
            placeholder="Minimum 8 characters"
            placeholderTextColor={Colors.textMuted}
            value={password}
            onChangeText={setPassword}
            secureTextEntry
          />
        </View>

        <PrimaryButton label="REGISTER WITH THE ATLAS" onPress={handleSignup} loading={loading} fullWidth />

        <TouchableOpacity style={styles.link} onPress={() => router.push('/auth/login' as any)}>
          <Text style={styles.linkText}>Already a member? <Text style={styles.linkEmphasis}>Sign in.</Text></Text>
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
