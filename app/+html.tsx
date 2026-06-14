import { ScrollViewStyleReset } from 'expo-router/build/static/html';
import { type PropsWithChildren } from 'react';

export default function Root({ children }: PropsWithChildren) {
  return (
    <html lang="en">
      <head>
        <meta charSet="utf-8" />
        <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <ScrollViewStyleReset />
        {/* iOS Add to Home Screen icon */}
        <link rel="apple-touch-icon" sizes="180x180" href="/hollow-atlas/apple-touch-icon.png" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <meta name="apple-mobile-web-app-title" content="Hollow Atlas" />
        <meta name="theme-color" content="#0C0A07" />
      </head>
      <body>{children}</body>
    </html>
  );
}
