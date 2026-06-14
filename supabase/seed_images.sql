-- ============================================================
-- HOLLOW ATLAS — Tasmania Cover Images
-- Uses picsum.photos with slug-based seeds — guaranteed to load.
-- Run AFTER seed_tasmania.sql and seed_tasmania_2.sql
-- Safe to re-run (idempotent UPDATE statements).
-- ============================================================

UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/port-arthur-parsonage/800/500?grayscale' WHERE slug = 'port-arthur-parsonage';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/isle-of-the-dead/800/500?grayscale' WHERE slug = 'isle-of-the-dead';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/willow-court-asylum/800/500?grayscale' WHERE slug = 'willow-court-asylum';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/richmond-bridge/800/500?grayscale' WHERE slug = 'richmond-bridge';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/sarah-island/800/500?grayscale' WHERE slug = 'sarah-island';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/hobart-convict-penitentiary/800/500?grayscale' WHERE slug = 'hobart-convict-penitentiary';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/anglesea-barracks-military-gaol/800/500?grayscale' WHERE slug = 'anglesea-barracks-military-gaol';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/cascades-female-factory/800/500?grayscale' WHERE slug = 'cascades-female-factory';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/franklin-house-launceston/800/500?grayscale' WHERE slug = 'franklin-house-launceston';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/queenstown-lunar-landscape/800/500?grayscale' WHERE slug = 'queenstown-lunar-landscape';
-- pillinger-ghost-town: no cover image (remote location, no suitable photo)
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/mathinna-gold-rush-town/800/500?grayscale' WHERE slug = 'mathinna-gold-rush-town';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/zeehan-gaiety-theatre/800/500?grayscale' WHERE slug = 'zeehan-gaiety-theatre';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/oatlands-solomon-blay/800/500?grayscale' WHERE slug = 'oatlands-solomon-blay';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/bridgewater-causeway/800/500?grayscale' WHERE slug = 'bridgewater-causeway';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/maria-island-darlington/800/500?grayscale' WHERE slug = 'maria-island-darlington';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/maatsuyker-island-lighthouse/800/500?grayscale' WHERE slug = 'maatsuyker-island-lighthouse';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/campbell-street-gaol/800/500?grayscale' WHERE slug = 'campbell-street-gaol';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/wybalenna-flinders-island/800/500?grayscale' WHERE slug = 'wybalenna-flinders-island';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/oyster-cove-station/800/500?grayscale' WHERE slug = 'oyster-cove-station';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/arthur-river-thylacine-country/800/500?grayscale' WHERE slug = 'arthur-river-thylacine-country';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/bass-strait-valentich/800/500?grayscale' WHERE slug = 'bass-strait-valentich';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/linda-ghost-town/800/500?grayscale' WHERE slug = 'linda-ghost-town';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/north-mount-lyell-disaster/800/500?grayscale' WHERE slug = 'north-mount-lyell-disaster';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/beaconsfield-gold-mine/800/500?grayscale' WHERE slug = 'beaconsfield-gold-mine';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/spray-silver-mine-ruins/800/500?grayscale' WHERE slug = 'spray-silver-mine-ruins';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/dundas-ghost-town/800/500?grayscale' WHERE slug = 'dundas-ghost-town';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/recherche-bay/800/500?grayscale' WHERE slug = 'recherche-bay';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/williamsford-hercules-mine/800/500?grayscale' WHERE slug = 'williamsford-hercules-mine';
UPDATE public.locations SET cover_image_url = 'https://picsum.photos/seed/bradys-lookout-west-tamar/800/500?grayscale' WHERE slug = 'bradys-lookout-west-tamar';
