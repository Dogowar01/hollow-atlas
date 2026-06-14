-- ============================================================
-- HOLLOW ATLAS — Western Australia Extra: Haunted & Paranormal
-- 15 deep-cut locations beyond the original 30
-- Run AFTER seed_western_australia.sql
-- Then run seed_wa_extra_images.sql
-- Then re-run add_state_column.sql (idempotent)
-- ============================================================

INSERT INTO public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
VALUES

(
  'SS Alkimos Wreck',
  'ss-alkimos-wreck',
  'The most cursed ship in Australia. It has been trying to kill people since before it ran aground.',
  'The SS Alkimos was a World War II Liberty ship built in Baltimore in 1943 that accumulated a reputation for misfortune before it even reached Australian waters. Workers were sealed into compartments during construction and suffocated before being discovered; the deaths were attributed to wartime haste and poor communication. The vessel changed hands and names multiple times before running aground on a reef north of Perth in 1963. Every subsequent attempt at salvage has ended in disaster: a 1966 salvage diver named Jack Sue spent ten months in hospital with a mystery illness after working on the wreck, his wife dying in a car accident during his hospitalisation; a 1969 salvage operation was repeatedly driven off by fires that reignited each time the workers returned; in 1971, a swimmer named Herbert Voigt vanished while attempting a long-distance swim 43 kilometres from the wreck site — his skull was later found lodged inside the Alkimos. The wreck is now a popular dive site but retains its reputation among experienced WA divers: phantom footsteps on the ladders, cooking smells and kitchen sounds from the galley sections, tools found in positions different from where they were left. The wreck has no formal heritage protection. It does not appear to need it.',
  'Some ships are ill-omened before they are named. The Alkimos was ill-omened before it was finished.',
  -31.6378, 115.5036, 'paranormal', 58, true, 'active'
),

(
  'Heathcote Hospital',
  'heathcote-hospital-wa',
  'A psychiatric hospital in the hills above Perth, 1929 to 1994. The patients'' wards are still standing. The patients are still in some of them.',
  'Heathcote Hospital operated in the hills above the Canning River south of Perth from 1929 to 1994 as a psychiatric facility — 65 years of continuous institutional operation that left behind a complex of ward buildings, a nurses'' quarters, administration blocks, and the specific kind of accumulated silence that large medical institutions develop when their purpose ends. The campus is now partially heritage-listed and has been the subject of multiple redevelopment proposals, most of which have stalled. The haunting accounts from Heathcote centre on two structures: the nurses'' quarters (Duncraig House), where a death in a bathroom on the upper floor — whether murder or suicide was never formally determined — has generated a concentrated presence that renovation work in the 1990s reportedly only intensified; and the main ward buildings, which generate the kind of account familiar from similar institutions: sounds of footsteps in empty corridors, the sound of a door being repeatedly opened and closed from the inside in a room whose door is held shut by structural settling, and a persistent quality in the wards of having recently been vacated — of catching the end of activity rather than the absence of it. Staff who worked at Heathcote in its final years describe the same quality of recent-vacancy in the same buildings.',
  'Sixty-five years of suffering is not erased by a notice of closure. The buildings were not consulted.',
  -32.0167, 115.8667, 'haunted', 34, true, 'active'
),

(
  'Fremantle Female Factory',
  'fremantle-female-factory-wa',
  'The building that processed female convicts. The history was invisible for 150 years. The women inside it were less willing to be invisible.',
  'The Female Factory at Fremantle processed female convicts transported to Western Australia from 1851, when transportation resumed after a decade''s cessation, until the end of the convict era. Women who arrived without assigned employment or who had committed secondary offences within the system were held here, working in laundry and sewing. The building''s history was significantly less documented than the male convict infrastructure — a reflection of the colonial administration''s attitude toward women in the system rather than toward the system itself. Archival recovery of the Female Factory''s history has been a project of recent decades. The physical structure, incorporated into later industrial buildings, was not widely known as a convict site for much of the twentieth century. Accounts from people who worked in the industrial complex without knowledge of its history describe experiences that they attributed to the building''s age and character rather than to any specific historical event: a persistent sound of activity from the lower floor when working alone in the building, described as cloth movement and quiet conversation; a sense in one section of the building of many people very close together in a small space; and a specific account from a factory worker in the 1980s who described a group of women in unusual dress moving through the ground floor in a single file who disappeared around a corner that opened onto a solid wall.',
  'The system made them invisible in life. The building appears to have declined to cooperate with that arrangement.',
  -32.0569, 115.7475, 'haunted', 19, false, 'active'
),

(
  'New Norcia Monastery',
  'new-norcia-monastery-wa',
  'The only monastic town in Australia. The Benedictine monks have been here since 1846. Not all of them have left.',
  'New Norcia, 132 kilometres north of Perth, is the only monastic town in Australia — a complete Benedictine foundation established in 1846 by Spanish monks who arrived to work with the Yuat Noongar people. The townscape of monastery, school buildings, hotel, and mill is classified as a heritage precinct. Benedictine monks have maintained a continuous presence at New Norcia for 178 years. The monastery''s paranormal accounts are less well-known than its architectural and cultural significance, partly because the community does not publicise them and partly because the Catholic Church''s approach to reported apparitions is formal and cautious. Accounts from staff at the New Norcia Hotel — the heritage hotel within the precinct that operates for visitors — describe sounds from the upper floor consistent with monastic routine: footsteps in the corridor before the canonical hours, a bell sound with no physical source in the early morning, and a figure in a dark habit observed in the hotel''s upper hallway by multiple guests over multiple years who initially assumed they had encountered a monk before being informed that the monks'' quarters are in a separate building and no monk would have reason to be in the hotel corridor at 3 AM. The figure has never been threatening. It has been described as absorbed in its movement — going somewhere specific, for a specific purpose, as monks at 3 AM do.',
  'A hundred and seventy-eight years of the same prayers, the same hours, the same corridors. The practice leaves something that does not require a body to continue.',
  -30.9750, 116.2167, 'haunted', 21, true, 'active'
),

(
  'Kalgoorlie Golden Mile Ghost',
  'kalgoorlie-golden-mile-ghost',
  'The deepest gold mines in Australia. The men who died underground have not all found their way back up.',
  'The Golden Mile at Kalgoorlie is one of the richest goldfields in the world, with underground workings extending to over 600 metres. The mines have been operating since 1893 and have been the site of multiple underground disasters, including collapses, gas events, and flooding that killed workers whose remains were not always recovered. Mining is among the most dangerous occupations in Australia''s history; the Kalgoorlie mines in their working peak killed men at rates that contemporary safety regulation would make illegal. The Super Pit open-cut mine, which absorbed multiple older underground workings in the 1980s and 1990s, disrupted the infrastructure of earlier shafts and drives in ways that are not fully mapped. Accounts from underground workers in the surviving deep mines describe a persistent phenomenon in specific old sections of the drives: a cold concentration that is distinct from normal underground temperature variation and that does not move; the sound of working in a section of drive that is sealed and non-operational; and the specific experience, described by multiple miners over multiple decades, of walking into a section of drive and encountering a figure who is clearly a miner, in period working gear, who turns away and walks deeper into the drive and does not answer. The figure always turns away. It has never been described turning to face the witness.',
  'They went underground for gold and some of them stayed underground. They are still going deeper.',
  -30.7489, 121.4681, 'haunted', 33, true, 'active'
),

(
  'York Residency Museum',
  'york-haunted-residency',
  'The oldest inland town in Western Australia. The residency building where the magistrate lived is the oldest haunted building in the state.',
  'York, established in 1831, is the oldest inland town in Western Australia, and its historic streetscape — Georgian and Victorian buildings preserved in a natural amphitheatre in the Avon Valley — is one of the most intact colonial townscapes in the state. The York Residency Museum occupies the former home of the colonial magistrate and district superintendent, a position that in the colonial period combined judicial, administrative, and police functions in a single authoritative figure. The building dates from the 1840s. The haunting accounts at the Residency are among the most comprehensively documented for any WA historic site: multiple figures reported in multiple rooms, including a man at the upstairs window consistent with the building''s judicial history; a woman in the domestic quarters; and a child whose presence is consistently reported in the lower rooms and whose nature — whether frightened, playful, or simply present — is the detail on which witness accounts most diverge. The museum has been the subject of formal paranormal investigations by multiple independent groups over three decades, all of which produced anomalous results in consistent locations. The Residency is considered the anchor site for York''s significant haunting reputation.',
  'The oldest building in the oldest inland town. Whatever the colony held from its beginning, it held here first.',
  -31.8875, 116.7686, 'haunted', 29, true, 'active'
),

(
  'Rottnest Island Quod',
  'rottnest-quod-history',
  'The circular prison that held Aboriginal men from across Western Australia. The museum stands on the same ground. The accounts are unrelenting.',
  'The Quod — the circular prison building at Rottnest Island — operated as a place of detention and punishment for Aboriginal men from across Western Australia from 1838, when the island was designated as an Aboriginal prison, through the late nineteenth century. Aboriginal men were transported to Rottnest for offences under colonial law — often for acts that would not have been criminal under any previous legal framework — and held in conditions of severe deprivation. Between 373 and 380 Aboriginal men and boys died at Rottnest and are buried in graves on the island, most of them unmarked. The Quod became a hostel accommodation block in the twentieth century — a conversion so inappropriate that it has become a standard reference point in discussions of Australia''s failure to reckon with its colonial history. The hostel''s guests reported experiences that led the Rottnest Island Authority to eventually decommission the accommodation; it is now a museum. Accounts from former hostel guests describe, without apparent awareness of the building''s history, exactly what the history would predict: sounds of many people in distress, in confined space, at night; a temperature in the building that does not correspond to the season; and a quality of inhabitation that guests consistently described as wrong, as though the building''s function as a place of rest had never fully displaced its earlier function.',
  'They turned the prison into a holiday hostel. The men imprisoned there were consulted at some point, in a sense, about this arrangement.',
  -31.9988, 115.5436, 'haunted', 61, true, 'active'
),

(
  'Mundaring Weir Ghost',
  'mundaring-weir-engineer',
  'C.Y. O''Connor built the Mundaring-to-Kalgoorlie pipeline. He shot himself before he could see it work. He saw it work anyway.',
  'Charles Yelverton O''Connor was the engineer who designed and built the Mundaring Weir and the 566-kilometre pipeline from the weir to the Kalgoorlie goldfields — the longest freshwater pipeline in the world when completed in 1903. O''Connor was subjected to sustained public and press criticism throughout the project''s construction, accused of incompetence and corruption. On 10 March 1902, before the pipeline was tested, he rode his horse into the sea at Fremantle and shot himself. He died the following day. The pipeline worked perfectly when the pumps were switched on six weeks later. O''Connor was vindicated by the water that arrived in the goldfields. The Mundaring Weir is now a heritage site and tourist destination. The accounts associated with the weir and the first pump station describe a figure observed in the vicinity of the original pump station infrastructure — on the inspection walkways, near the pump housings — who is described as a tall man in Victorian professional dress, conducting what appears to be an inspection of the machinery with the focused attention of an engineer checking whether a project is performing to specification. The figure has been described by multiple visitors in terms that match O''Connor''s documented physical appearance. He is described as satisfied.',
  'They destroyed him before he could see his work succeed. He came back to watch it succeed anyway.',
  -31.9000, 116.1667, 'haunted', 26, false, 'active'
),

(
  'Broome Japanese Cemetery',
  'broome-japanese-cemetery-wa',
  'Nine hundred Japanese pearl divers are buried in Broome. They came from across Japan to work the shell beds. The cemetery is the largest Japanese cemetery outside Japan.',
  'Broome on the Kimberley coast was the centre of Australia''s pearling industry from the 1880s through the early twentieth century, drawing pearl divers from Japan, the Philippines, Malaysia, and Indonesia to work the shell beds of the Timor Sea. Japanese divers dominated the industry, working at depths and in conditions that produced catastrophic mortality from decompression sickness, cyclones, and the dangers of deep diving without modern equipment. Nine hundred Japanese men are buried in the Broome Japanese Cemetery, making it the largest Japanese cemetery outside Japan. In March 1942, Japanese Zero fighters attacked Broome while Allied flying boats loaded with refugees from the Dutch East Indies were moored in Roebuck Bay; 88 people were killed. Some of those killed were connected to the pearling community. The Japanese Cemetery accumulates accounts that are unusual for a cemetery in their consistency: visitors consistently report a quality of peace in the grounds rather than unease — a quietness that is noted as excessive, as more than the absence of sound, as though sound has been deliberately removed from the space. Several visitors who sat in the cemetery for extended periods described the sensation of being accompanied by a large number of people who were not there, in a way they found not threatening but deeply melancholy.',
  'Nine hundred men in foreign soil, in the country that bombed them in a different war. The cemetery holds that complexity quietly.',
  -17.9614, 122.2359, 'haunted', 22, true, 'active'
),

(
  'Ora Banda Hotel',
  'ora-banda-hotel-wa',
  'A ghost town with one building still operating. The hotel has kept going because something in it has never stopped.',
  'Ora Banda, 56 kilometres north of Kalgoorlie, was a gold rush settlement that reached a population of several thousand in the early twentieth century before the gold runs declined and the population dispersed to near-zero. The Ora Banda Hotel — the last building in the townsite to remain operational — is a corrugated iron structure of 1911 that has been maintained as a licensed premises with a persistence that defies economic logic: there is almost no population to serve, the nearest town is an hour away, and the overhead of operating in the WA outback is considerable. The hotel''s continuation has been attributed to various factors, including the loyalty of the goldfields community to their historic premises, but the accounts from the hotel give a different dimension to its persistence. Staff who have worked there describe the hotel as having more residents than its guest register records: sounds from empty rooms that are specific and purposeful rather than general or ambient; the smell of tobacco and beer in the bar when the bar is closed and has been ventilated; and a quality, reported by many who stay overnight, of being in a full hotel rather than an empty one — of hearing through the walls the low-level social noise of a building at capacity in a building that has four guests.',
  'The gold ran out. The town left. The hotel stayed because something in it had nowhere else to be.',
  -30.4000, 121.0833, 'haunted', 17, false, 'active'
),

(
  'Cossack Ghost Town',
  'cossack-ghost-town-haunted',
  'The first port of the Pilbara. Every building is intact and empty. The town was not abandoned — it was stopped mid-sentence.',
  'Cossack, on the Pilbara coast north of Karratha, was established in 1863 as the first port of the Pilbara region and served the pearling and pastoral industries until the deeper harbour at Point Samson drew trade away in the early twentieth century. The town was declared an abandonment rather than demolished; its stone buildings — courthouse, police barracks, bonded warehouse, post office — were left intact and empty when the population left. The effect is of a town arrested in process rather than concluded: furniture left in position, doors left in various states of opening, the administrative infrastructure of colonial authority preserved in a coastal heat that has kept the buildings standing while leaving everything else to the wind. Heritage workers who have spent extended time in Cossack for conservation purposes describe the town as one of the most uncanny sites in Western Australia — not because of specific paranormal accounts but because of a pervasive quality of interruption that the town''s physical state makes difficult to discount. Several describe entering buildings and having the strong impression that the building''s previous occupants had been there within minutes rather than within decades. The impression does not correspond to any visible evidence. It corresponds to the quality of the interruption.',
  'They didn''t leave — they were stopped. The town is still at the moment of stopping.',
  -20.6833, 117.1833, 'haunted', 14, false, 'active'
),

(
  'Fremantle East End Hospital',
  'fremantle-east-end-hospital',
  'The oldest hospital precinct in Western Australia. The nurses who died in the 1919 influenza pandemic have not cleared their wards.',
  'The East End Hospital precinct at Fremantle includes structures associated with the earliest medical facilities in Western Australia, with some sections dating to the colonial period and associated with the convict establishment. The precinct was significantly active during the 1919 Spanish influenza pandemic, which killed over 12,000 Australians and stretched the state''s medical facilities beyond capacity. Nursing staff died in the Fremantle facility during the 1919 outbreak, some of them young women from nursing training programs who had no previous clinical experience with a pandemic pathogen. The precinct has been converted in sections to residential and commercial use. Accounts from residents and workers in the converted sections describe experiences concentrated in areas corresponding to the pandemic-period ward infrastructure: sounds of movement at night that are purposeful rather than random; a quality in specific corridors of recent activity — the sense of a ward recently in use — that is stronger in winter than in summer, consistent with the timing of the 1919 outbreak; and a figure in nurses'' uniform of a pre-modern type, seen briefly in windows and doorways, that disappears on approach. The figure is described as busy rather than distressed — as moving between rooms with the focused movement of someone working a full ward.',
  'The 1919 nurses worked until they couldn''t. Some of them appear to be working still.',
  -32.0556, 115.7500, 'haunted', 18, false, 'active'
),

(
  'Guildford Grammar School',
  'guildford-grammar-wa',
  'Western Australia''s oldest private school, 1896. The foundation house is the oldest part. The presence in the foundation house is older than the school.',
  'Guildford Grammar School in the Swan Valley was founded in 1896 on land associated with the earliest European settlement in the Swan River colony — the area around Guildford was among the first inland regions settled from the Swan River coast. The original foundation building and the older sections of the school precinct incorporate materials and structures from earlier colonial uses of the site. The school''s paranormal accounts are concentrated in the oldest buildings and are of a type unusual in educational institutions: a presence that staff and boarding students describe as adult rather than juvenile, as having the character of an authority figure rather than a former student. The figure, seen on two documented occasions in different years by housemasters doing the late-night corridor check, is described as a man in formal Victorian dress, standing at the end of a corridor and facing away from the observer, who turns a corner and is absent when the observer reaches the corner. The descriptions are consistent across accounts by two men who did not know each other''s account. The boarding school environment — late-night corridors, old buildings, institutional routine — provides a context in which accounts are particularly closely observed and reported.',
  'The oldest building on the oldest school grounds holds something that predates the school. It does not appear to have noticed the change of purpose.',
  -31.8907, 115.9856, 'haunted', 11, false, 'active'
),

(
  'Geraldton HMAS Sydney Memorial',
  'hmas-sydney-memorial-geraldton',
  'HMAS Sydney sank on 19 November 1941 with 645 men. For 66 years no one knew where. The dome of souls at Geraldton looks toward the site.',
  'HMAS Sydney was sunk on 19 November 1941 in an engagement with the German auxiliary cruiser Kormoran, 260 kilometres off Shark Bay. All 645 men aboard were lost — the largest single loss of life in the history of the Royal Australian Navy. The wreck location was unknown for 66 years, one of the great maritime mysteries of World War II, found only in 2008. The memorial at Geraldton — a dome covered in 645 seagull figures, one for each man, with a stainless steel dome of silvered birds above it — looks toward the sea in the direction of the site. Visitors to the memorial describe an experience that is distinct from the expected response to a war memorial: not only grief but a sense of presence, of being near a large number of people who are waiting to be found — an experience that predates the 2008 discovery and that intensified after it, as though the finding released something. Fishermen who work the Shark Bay region above the wreck site describe the water in a rough area corresponding to where Sydney lies as having a quality of disturbance that is not meteorological: a roughness in calm conditions, a heaviness in the water, and on two independent occasions, a smell of fuel oil in open water far from any vessel or installation.',
  'Six hundred and forty-five men. Sixty-six years before anyone knew where. The memorial faces the direction they went. Something faces back.',
  -28.7714, 114.6133, 'haunted', 39, true, 'active'
),

(
  'Kalgoorlie Bawdy House Museum',
  'kalgoorlie-hay-street-history',
  'Hay Street in Kalgoorlie has operated as a brothel district since 1895. The women who worked and died there are not entirely gone.',
  'Hay Street in Kalgoorlie has been a licensed brothel district since the gold rush — one of the few such districts in Australia to have operated continuously and openly for over 125 years. The women who worked Hay Street from the 1890s onward operated in conditions of marginal legal protection, significant physical risk, and social invisibility; their deaths in the district were often recorded minimally or not at all. The Bawdy House Museum at Hay Street — one of the former brothel buildings now operating as a museum — holds the physical record of the district''s history in furniture, photographs, and objects from the operational period. The accounts from the museum and from workers in the Hay Street precinct more broadly are of a specific kind: sounds of activity from rooms that have been converted or cleared; a quality in the upstairs rooms of the older buildings of being occupied rather than empty; and a persistent sense, reported by most people who spend time alone in the museum, of being accompanied by a large number of women who are watching but not engaging — present and aware but choosing not to participate in whatever the living person is doing there. The watching is not described as hostile. It is described as patient.',
  'A hundred and twenty-five years of invisible women. They are still invisible, by choice. But they are still there.',
  -30.7490, 121.4700, 'haunted', 24, false, 'active'
);
