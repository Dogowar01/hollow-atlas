import React, { useState } from 'react';
import { View, Text, TextInput, TouchableOpacity, ScrollView, StyleSheet, Alert } from 'react-native';
import { supabase } from '../../src/lib/supabase';
import { useAuth } from '../../src/context/AuthContext';
import { PrimaryButton } from '../../src/components/PrimaryButton';
import { Colors, Fonts, Spacing, CategoryLabels } from '../../src/constants/theme';
import type { Category } from '../../src/types';

const CATS: Category[] = ['haunted', 'abandoned', 'folklore', 'paranormal', 'strange_history'];

export default function SubmitScreen() {
  const { user } = useAuth();
  const [locationName, setLocationName] = useState('');
  const [address, setAddress] = useState('');
  const [category, setCategory] = useState<Category | null>(null);
  const [body, setBody] = useState('');
  const [loading, setLoading] = useState(false);

  const handleSubmit = async () => {
    if (!user) { Alert.alert('Sign in required', 'Create an account to submit a location.'); return; }
    if (!locationName || !category || body.length < 100) {
      Alert.alert('Incomplete', 'Please fill in the location name, category, and a detailed account (at least 100 characters).');
      return;
    }

    setLoading(true);
    const { error } = await supabase.from('submissions').insert({
      user_id: user.id,
      location_name: locationName,
      address_input: address,
      category,
      body,
      status: 'pending',
    });

    setLoading(false);
    if (error) {
      Alert.alert('Something went wrong', error.message);
    } else {
      Alert.alert('Submitted to the Atlas', 'Your account has been received. The Atlas will review and narrate your submission. You will be notified when it appears on the map.');
      setLocationName(''); setAddress(''); setCategory(null); setBody('');
    }
  };

  return (
    <ScrollView style={styles.container} contentContainerStyle={styles.content} showsVerticalScrollIndicator={false}>
      <Text style={styles.eyebrow}>◈  FIELD REPORT — FORM 13</Text>
      <Text style={styles.heading}>Submit a Sighting</Text>
      <Text style={styles.sub}>What did you witness? The Atlas will carry it forward.</Text>

      <View style={styles.divider} />

      <View style={styles.field}>
        <Text style={styles.label}>LOCATION NAME</Text>
        <TextInput
          style={styles.input}
          placeholder="What do locals call it?"
          placeholderTextColor={Colors.textMuted}
          value={locationName}
          onChangeText={setLocationName}
        />
      </View>

      <View style={styles.field}>
        <Text style={styles.label}>ADDRESS OR COORDINATES</Text>
        <TextInput
          style={styles.input}
          placeholder="Where exactly?"
          placeholderTextColor={Colors.textMuted}
          value={address}
          onChangeText={setAddress}
        />
      </View>

      <View style={styles.field}>
        <Text style={styles.label}>CATEGORY</Text>
        <View style={styles.catGrid}>
          {CATS.map(cat => (
            <TouchableOpacity
              key={cat}
              style={[styles.catChip, category === cat && styles.catChipActive]}
              onPress={() => setCategory(cat)}
            >
              <Text style={[styles.catChipLabel, category === cat && styles.catChipLabelActive]}>
                {CategoryLabels[cat]}
              </Text>
            </TouchableOpacity>
          ))}
        </View>
      </View>

      <View style={styles.field}>
        <Text style={styles.label}>YOUR ACCOUNT</Text>
        <TextInput
          style={[styles.input, styles.textarea]}
          placeholder="What happened there? Be specific. The Atlas rewards precision."
          placeholderTextColor={Colors.textMuted}
          value={body}
          onChangeText={setBody}
          multiline
          textAlignVertical="top"
        />
        <Text style={styles.charCount}>{body.length} characters</Text>
      </View>

      <View style={styles.notice}>
        <Text style={styles.noticeText}>
          ◈ THE ATLAS WILL REVIEW AND NARRATE YOUR SUBMISSION USING AI. YOUR ACCOUNT WILL BE PRESERVED VERBATIM IN THE ARCHIVE.
        </Text>
      </View>

      <PrimaryButton label="SUBMIT TO THE ATLAS" onPress={handleSubmit} loading={loading} fullWidth />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.bg },
  content: { padding: Spacing.lg, paddingBottom: 44 },
  eyebrow: { fontFamily: Fonts.uiBold, fontSize: 9, color: Colors.amberDim, letterSpacing: 2.4, marginBottom: 8 },
  heading: { fontFamily: Fonts.displaySemiBold, fontSize: 28, color: Colors.textPrimary, marginBottom: 6 },
  sub: { fontFamily: Fonts.displayItalic, fontSize: 15, color: Colors.textSecondary, lineHeight: 22 },
  divider: { height: 1, backgroundColor: Colors.border, marginVertical: Spacing.lg },
  field: { marginBottom: Spacing.lg },
  label: { fontFamily: Fonts.uiBold, fontSize: 9, color: Colors.textMuted, letterSpacing: 1.5, marginBottom: 8 },
  input: {
    backgroundColor: Colors.surface2,
    borderWidth: 1, borderColor: Colors.border,
    color: Colors.textPrimary,
    fontFamily: Fonts.display,
    fontStyle: 'italic',
    fontSize: 15,
    paddingHorizontal: Spacing.md,
    paddingVertical: 11,
  },
  textarea: { minHeight: 130, paddingTop: 11 },
  charCount: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted, marginTop: 5, textAlign: 'right', letterSpacing: 0.8 },
  catGrid: { flexDirection: 'row', flexWrap: 'wrap', gap: 8 },
  catChip: { borderWidth: 1, borderColor: Colors.border, paddingHorizontal: 12, paddingVertical: 6 },
  catChipActive: { backgroundColor: Colors.amber, borderColor: Colors.amber },
  catChipLabel: { fontFamily: Fonts.uiBold, fontSize: 9, color: Colors.textMuted, letterSpacing: 1.1 },
  catChipLabelActive: { color: Colors.bg },
  notice: { backgroundColor: Colors.surface2, borderWidth: 1, borderColor: Colors.border, padding: Spacing.md, marginBottom: Spacing.lg },
  noticeText: { fontFamily: Fonts.ui, fontSize: 9, color: Colors.textMuted, letterSpacing: 0.9, lineHeight: 16 },
});
