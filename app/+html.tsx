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
        <link rel="apple-touch-icon" sizes="180x180" href="/hollow-atlas/apple-touch-icon.png" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <meta name="apple-mobile-web-app-title" content="Hollow Atlas" />
        <meta name="theme-color" content="#0C0A07" />
        <style dangerouslySetInnerHTML={{ __html: atmosphereCSS }} />
      </head>
      <body>{children}</body>
    </html>
  );
}

const atmosphereCSS = `
  * { -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }

  /* Blood-red selection */
  ::selection { background: rgba(110, 12, 12, 0.55); color: #EDE4D4; }

  /* Thin dark scrollbar */
  ::-webkit-scrollbar { width: 3px; height: 3px; }
  ::-webkit-scrollbar-track { background: #0C0A07; }
  ::-webkit-scrollbar-thumb { background: #3A2510; border-radius: 2px; }
  ::-webkit-scrollbar-thumb:hover { background: #7A4A18; }

  /* Scanline overlay — horizontal lines, very subtle */
  body::after {
    content: '';
    position: fixed;
    inset: 0;
    background: repeating-linear-gradient(
      0deg,
      transparent,
      transparent 3px,
      rgba(0, 0, 0, 0.07) 3px,
      rgba(0, 0, 0, 0.07) 4px
    );
    pointer-events: none;
    z-index: 9998;
  }
`;
