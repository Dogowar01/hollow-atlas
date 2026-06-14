import React, { createContext, useContext, useEffect, useState } from 'react';
import * as Location from 'expo-location';

export interface Coords {
  latitude: number;
  longitude: number;
}

interface UserLocationContextType {
  coords: Coords | null;
  loading: boolean;
  permissionDenied: boolean;
}

const UserLocationContext = createContext<UserLocationContextType>({
  coords: null,
  loading: true,
  permissionDenied: false,
});

export function UserLocationProvider({ children }: { children: React.ReactNode }) {
  const [coords, setCoords] = useState<Coords | null>(null);
  const [loading, setLoading] = useState(true);
  const [permissionDenied, setPermissionDenied] = useState(false);

  useEffect(() => {
    (async () => {
      const { status } = await Location.requestForegroundPermissionsAsync();
      if (status !== 'granted') {
        setPermissionDenied(true);
        setLoading(false);
        return;
      }

      const result = await Location.getCurrentPositionAsync({
        accuracy: Location.Accuracy.Balanced,
      });
      setCoords({
        latitude: result.coords.latitude,
        longitude: result.coords.longitude,
      });
      setLoading(false);
    })();
  }, []);

  return (
    <UserLocationContext.Provider value={{ coords, loading, permissionDenied }}>
      {children}
    </UserLocationContext.Provider>
  );
}

export const useUserLocation = () => useContext(UserLocationContext);
