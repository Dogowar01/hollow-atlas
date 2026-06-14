-- ============================================================
-- HOLLOW ATLAS — Tasmania Extra Cover Images
-- Uses picsum.photos with slug-based seeds — guaranteed to load.
-- Run AFTER seed_tasmania_extra.sql
-- Safe to re-run (idempotent UPDATE statements).
-- ============================================================

UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/theatre-royal-hobart/800/500?grayscale'     WHERE slug = 'theatre-royal-hobart';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/richmond-gaol-1825/800/500?grayscale'       WHERE slug = 'richmond-gaol-1825';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/coal-mines-saltwater-river/800/500?grayscale' WHERE slug = 'coal-mines-saltwater-river';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/st-davids-park-hobart/800/500?grayscale'    WHERE slug = 'st-davids-park-hobart';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/lenna-hotel-hobart/800/500?grayscale'       WHERE slug = 'lenna-hotel-hobart';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/woolmers-estate-longford/800/500?grayscale' WHERE slug = 'woolmers-estate-longford';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/clarendon-house-evandale/800/500?grayscale' WHERE slug = 'clarendon-house-evandale';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/highfield-vdc-stanley/800/500?grayscale'    WHERE slug = 'highfield-vdc-stanley';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/eaglehawk-neck-dog-line/800/500?grayscale'  WHERE slug = 'eaglehawk-neck-dog-line';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/bothwell-castle-hotel/800/500?grayscale'    WHERE slug = 'bothwell-castle-hotel';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/narryna-battery-point/800/500?grayscale'    WHERE slug = 'narryna-battery-point';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/kunanyi-chalet-ruins/800/500?grayscale'     WHERE slug = 'kunanyi-chalet-ruins';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/weldborough-pub-ghost/800/500?grayscale'    WHERE slug = 'weldborough-pub-ghost';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/lake-st-clair-missing/800/500?grayscale'    WHERE slug = 'lake-st-clair-missing';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/risdon-cove-1804/800/500?grayscale'         WHERE slug = 'risdon-cove-1804';
