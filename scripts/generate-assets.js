/**
 * Hollow Atlas — Asset Generator
 * Renders SVG icon and splash designs to PNG using sharp.
 * Run: node scripts/generate-assets.js
 */

const sharp = require('sharp');
const path  = require('path');

const AMBER = '#C8820A';
const BG    = '#0C0A07';
const ASSETS = path.join(__dirname, '..', 'assets');

// ── Icon SVG (1024×1024) ──────────────────────────────────────────────────────
// A ◈ compass-atlas symbol: outer diamond, inner diamond, tick marks, centre dot
const iconSvg = `
<svg xmlns="http://www.w3.org/2000/svg" width="1024" height="1024" viewBox="0 0 1024 1024">
  <defs>
    <radialGradient id="glow" cx="50%" cy="50%" r="55%">
      <stop offset="0%"   stop-color="#3D2805" stop-opacity="0.55"/>
      <stop offset="100%" stop-color="${BG}"   stop-opacity="0"/>
    </radialGradient>
  </defs>

  <!-- Background -->
  <rect width="1024" height="1024" fill="${BG}"/>
  <rect width="1024" height="1024" fill="url(#glow)"/>

  <!-- Outer frame hairline -->
  <rect x="52" y="52" width="920" height="920"
        fill="none" stroke="${AMBER}" stroke-width="1" opacity="0.12"/>

  <!-- Main diamond -->
  <polygon points="512,148 876,512 512,876 148,512"
           fill="none" stroke="${AMBER}" stroke-width="18"
           stroke-linejoin="miter" opacity="0.92"/>

  <!-- Inner diamond -->
  <polygon points="512,352 672,512 512,672 352,512"
           fill="none" stroke="${AMBER}" stroke-width="4.5"
           stroke-linejoin="miter" opacity="0.30"/>

  <!-- Tick marks at the four diamond points -->
  <line x1="512" y1="108" x2="512" y2="148" stroke="${AMBER}" stroke-width="4" opacity="0.72"/>
  <line x1="916" y1="512" x2="876" y2="512" stroke="${AMBER}" stroke-width="4" opacity="0.72"/>
  <line x1="512" y1="916" x2="512" y2="876" stroke="${AMBER}" stroke-width="4" opacity="0.72"/>
  <line x1="108" y1="512" x2="148" y2="512" stroke="${AMBER}" stroke-width="4" opacity="0.72"/>

  <!-- Centre ring -->
  <circle cx="512" cy="512" r="38"
          fill="none" stroke="${AMBER}" stroke-width="3.5" opacity="0.48"/>

  <!-- Centre dot -->
  <circle cx="512" cy="512" r="12" fill="${AMBER}"/>
</svg>`;


// ── Splash SVG (1284×2778 — iPhone 14 Pro Max portrait) ──────────────────────
const splashSvg = `
<svg xmlns="http://www.w3.org/2000/svg" width="1284" height="2778" viewBox="0 0 1284 2778">
  <defs>
    <radialGradient id="glow" cx="50%" cy="44%" r="38%">
      <stop offset="0%"   stop-color="#3D2805" stop-opacity="0.5"/>
      <stop offset="100%" stop-color="${BG}"   stop-opacity="0"/>
    </radialGradient>
  </defs>

  <!-- Background -->
  <rect width="1284" height="2778" fill="${BG}"/>
  <rect width="1284" height="2778" fill="url(#glow)"/>

  <!-- Diamond centred at (642, 1160) -->
  <g transform="translate(642,1160)">
    <!-- Outer diamond -->
    <polygon points="0,-268 268,0 0,268 -268,0"
             fill="none" stroke="${AMBER}" stroke-width="15"
             stroke-linejoin="miter" opacity="0.92"/>

    <!-- Inner diamond -->
    <polygon points="0,-152 152,0 0,152 -152,0"
             fill="none" stroke="${AMBER}" stroke-width="4"
             stroke-linejoin="miter" opacity="0.28"/>

    <!-- Tick marks -->
    <line x1="0" y1="-308" x2="0" y2="-268" stroke="${AMBER}" stroke-width="4" opacity="0.72"/>
    <line x1="308" y1="0"  x2="268" y2="0"  stroke="${AMBER}" stroke-width="4" opacity="0.72"/>
    <line x1="0" y1="268"  x2="0" y2="308"  stroke="${AMBER}" stroke-width="4" opacity="0.72"/>
    <line x1="-308" y1="0" x2="-268" y2="0" stroke="${AMBER}" stroke-width="4" opacity="0.72"/>

    <!-- Centre ring -->
    <circle cx="0" cy="0" r="32"
            fill="none" stroke="${AMBER}" stroke-width="3" opacity="0.48"/>

    <!-- Centre dot -->
    <circle cx="0" cy="0" r="10" fill="${AMBER}"/>
  </g>

  <!-- Eyebrow label -->
  <text x="642" y="1510"
        text-anchor="middle"
        font-family="Georgia, 'Times New Roman', serif"
        font-size="28" letter-spacing="10"
        fill="${AMBER}" opacity="0.45">FIELD GUIDE TO THE UNCANNY</text>

  <!-- App name -->
  <text x="642" y="1600"
        text-anchor="middle"
        font-family="Georgia, 'Times New Roman', serif"
        font-size="84" letter-spacing="14"
        fill="${AMBER}" opacity="0.90">HOLLOW ATLAS</text>
</svg>`;


// ── Generate ──────────────────────────────────────────────────────────────────
async function generate() {
  console.log('\n◈  Hollow Atlas — Asset Generator\n');

  await sharp(Buffer.from(iconSvg)).png()
    .toFile(path.join(ASSETS, 'icon.png'));
  console.log('✓  assets/icon.png           (1024×1024)');

  await sharp(Buffer.from(iconSvg)).png()
    .toFile(path.join(ASSETS, 'adaptive-icon.png'));
  console.log('✓  assets/adaptive-icon.png  (1024×1024)');

  await sharp(Buffer.from(splashSvg)).png()
    .toFile(path.join(ASSETS, 'splash.png'));
  console.log('✓  assets/splash.png         (1284×2778)');

  // Small favicon for Expo web
  await sharp(Buffer.from(iconSvg)).resize(48, 48).png()
    .toFile(path.join(ASSETS, 'favicon.png'));
  console.log('✓  assets/favicon.png        (48×48)');

  console.log('\nAll assets generated. Restart Expo to pick them up.\n');
}

generate().catch(err => {
  console.error('Failed:', err.message);
  process.exit(1);
});
