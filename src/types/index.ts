export type Category = 'haunted' | 'abandoned' | 'folklore' | 'paranormal' | 'strange_history';

export interface Location {
  id: string;
  name: string;
  slug: string;
  tagline: string;
  body: string;
  ai_narrator: string;
  latitude: number;
  longitude: number;
  category: Category;
  distance_label?: string;
  report_count: number;
  verified: boolean;
  cover_image_url?: string;
  state?: string;
  created_at: string;
  created_by?: string;
  status: 'active' | 'pending' | 'rejected';
}

export interface UserProfile {
  id: string;
  username: string;
  display_name?: string;
  avatar_url?: string;
  bio?: string;
  submission_count: number;
  created_at: string;
}

export interface Bookmark {
  id: string;
  user_id: string;
  location_id: string;
  created_at: string;
  location?: Location;
}

export interface Submission {
  id: string;
  user_id: string;
  location_name: string;
  address_input?: string;
  latitude?: number;
  longitude?: number;
  category: Category;
  body: string;
  ai_narrator?: string;
  status: 'pending' | 'approved' | 'rejected';
  created_at: string;
}
