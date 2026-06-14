-- ============================================================
-- HOLLOW ATLAS — Queensland Extra: Haunted & Paranormal
-- 15 deep-cut locations beyond the original 30
-- Run AFTER seed_queensland.sql
-- Then run seed_qld_extra_images.sql
-- Then re-run add_state_column.sql (idempotent)
-- ============================================================

INSERT INTO public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
VALUES

(
  'St Helena Island Prison',
  'st-helena-island-qld',
  'Moreton Bay''s prison island. The most isolated posting in Queensland. The most reports per square kilometre of any site in the state.',
  'St Helena Island in Moreton Bay operated as a prison from 1867 to 1932, housing Queensland''s most serious offenders in a facility explicitly designed around isolation and hard labour. The island''s position in the bay — visible from Brisbane but unreachable without a boat — gave it a psychological dimension that the mainland prisons lacked; the distance was always present. The island produced its own food, had its own cemetery, and at its peak housed over 300 prisoners under conditions that generated consistent mortality from disease and from the physical demands of the cane and crop work. The prison cemetery contains at least 56 confirmed burials, with estimates of additional unmarked graves running higher. The island is now a national park accessible by ferry. Ranger staff and tour operators have accumulated an unusually dense record of reported experiences for a site its size: a figure observed near the punishment cells who does not correspond to any tour group member; sounds of chains and metalwork from the ruins of the chain gang working areas; a specific section of the former dormitory building that multiple tour guides refuse to enter alone. The former warden''s house generates the most specific accounts, including a recurring description of a man seen at the upstairs window of a building whose upper floor has been structurally unsafe and physically inaccessible for decades.',
  'The bay surrounded them. The island contained them. Some of them could not leave even after the boats started running again.',
  -27.4167, 153.2667, 'haunted', 42, true, 'active'
),

(
  'Nudgee Cemetery',
  'nudgee-cemetery-brisbane',
  'Brisbane''s largest cemetery. The girl in white has been seen running between the headstones since the 1890s.',
  'Nudgee Cemetery was established in 1867 as the first Catholic burial ground in the Brisbane region and has grown into the largest cemetery in the Brisbane area, with over 100,000 interments. The cemetery''s scale and age — combined with sections devoted to epidemic victims, stillborn children, and the Catholic poor of multiple generations — has produced a complex of overlapping ghost accounts that coexist without resolution. The most persistent is the figure of a young girl in white clothing, seen running between headstones in one of the older sections of the cemetery, typically at dusk or in the early evening. Witnesses describe her as behaving like a playing child rather than like a haunting — running, pausing, running again — and as disappearing when approached rather than standing still. The accounts span at least 120 years, suggesting the description is not a single person''s transmission but something that multiple independent witnesses have encountered and reported in similar terms. No historical identity has been established. Secondary accounts include light anomalies in the older sections that have been photographed and resisted conventional explanation, and a cold concentration in the section containing the Catholic orphanage burials that is noted by almost everyone who walks through it.',
  'A city''s dead accumulate over generations. In the oldest parts of the largest cemetery, the accumulation becomes something else.',
  -27.3833, 153.0667, 'haunted', 31, false, 'active'
),

(
  'Goodna Cemetery',
  'goodna-cemetery-asylum',
  'One of the oldest cemeteries in Queensland. The 2,500 asylum patients buried here did not choose to be here in life or in death.',
  'Goodna General Cemetery was founded in 1859 and sits adjacent to what was the Woogaroo Lunatic Asylum — later the Queensland Mental Health Centre — making it the burial ground for thousands of psychiatric patients who died in institutional care over more than a century. After 1945, the remains of approximately 2,500 asylum patients were transferred from the hospital grounds to a section of the cemetery, where only 200 were formally reburied with documentation; the remainder are in unmarked ground. The Goodna Cemetery is considered one of the most haunted sites in Queensland by investigators who work the state systematically, with accounts distributed across multiple areas but concentrated near the asylum burial section. Specific documented phenomena include children''s handprints found on the bonnets of cars parked near the asylum graves — prints that appear between arrival and departure with no children present; a stone angel in the older section whose head has become detached and which is described by witnesses as facing a different direction on different visits; and accounts from cemetery workers of a sound in the asylum section described as whispering — not a single voice but a large number of voices at very low volume, occasionally resolving briefly into an identifiable word before returning to the general murmur.',
  'Two thousand five hundred people were buried here without their names being recorded. They know who they are. They want to be sure you know it too.',
  -27.6167, 152.8833, 'haunted', 38, true, 'active'
),

(
  'Childers Palace Hotel Fire',
  'childers-palace-fire-2000',
  'Fifteen people died in the Palace Backpackers fire on 23 June 2000. The building was rebuilt. The site remembers.',
  'In the early hours of 23 June 2000, a fire was deliberately lit in the Palace Backpackers Hotel in Childers, a small agricultural service town in Queensland''s Wide Bay region. The fire killed 15 people — young backpackers from across Europe, Asia and Australia who were staying in the hostel while working the local horticultural harvest. A mentally ill drifter named Robert Paul Long was convicted of arson and murder. The fire was the deadliest attack on travellers in Australian history. The building was demolished after the fire; a memorial garden now occupies part of the site. The rebuilt structure on the adjacent block, which houses a community hall and visitors'' centre, has generated consistent accounts since construction: staff describe a persistent sound of movement in the building at night, a smell of smoke with no source in a building that has never had a fire, and a sense of crowding — of too many people in an empty room — that is described by all who experience it as distressing in a way they cannot make specific. The memorial garden itself generates a different quality of account: silence, stillness, and a weight in the air that visitors note and that does not correspond to grief they bring with them.',
  'Fifteen people came to this town to work for the season and did not leave. The town has carried them since.',
  -25.2333, 152.2833, 'haunted', 47, true, 'active'
),

(
  'Charters Towers Excelsior Hotel',
  'charters-towers-excelsior-hotel',
  'Charters Towers was the second richest city in Queensland. The wealth is gone. The dead left behind when the gold ran out are still here.',
  'Charters Towers at its gold rush peak in the 1890s was the second wealthiest city in Queensland, with stock exchanges, banks, and hotels of a scale appropriate to its ambitions. The decline after the gold ran out was total and relatively rapid; the city''s grand Victorian streetscape survived largely because there was no economic impetus to demolish it. The Excelsior Hotel, built in 1888, is the most consistently reported haunted site in a town that has accumulated enough accounts across enough buildings to consider itself, with some justification, as Queensland''s most haunted city. The hotel''s accounts extend back to its active commercial period: a woman seen in the upstairs rooms who has been reported by guests, staff, and people looking up from the street since at least the 1920s; a male figure in the bar area, reported after closing, who is described as well-dressed and who appears to be examining the bar fittings with the attitude of someone assessing their value; and a sound in the basement, heard by cellar staff and described as footsteps in a regular pattern on a flagstone floor in a section of the basement that has not had flagstone flooring for over 50 years.',
  'The gold rush brought them here. When the gold went, something kept them. The hotel holds the ones who couldn''t follow it.',
  -20.0750, 146.2615, 'haunted', 27, false, 'active'
),

(
  'Mount Coot-tha Ghost Hole Mine',
  'mount-coot-tha-ghost-hole',
  'An abandoned gold mine in Brisbane''s own bushland. The name predates the ghost tours by fifty years.',
  'Mount Coot-tha Forest, immediately west of Brisbane''s CBD, contains the remains of small-scale gold mining operations from the 1880s, including a shaft known locally as the Ghost Hole Mine — a name that appears in surveying records from the late nineteenth century, apparently attached to the site before any formal paranormal accounts were associated with it. The origin of the name is not documented. The mine shaft is now collapsed and sealed but the surrounding earthworks and cutting remain accessible by a walking trail. Visitors to the site describe a consistent set of experiences that do not fit the standard template of a haunted location: no figures, no voices, no specific phenomena, but an acute discomfort that begins at a defined point on the trail approximately 30 metres from the mine entrance and resolves equally abruptly when you move away from it. The discomfort is described by most visitors as a reluctance to proceed — a physical sensation rather than a thought or emotion — and by a smaller number as something more specific: a sense that the air in front of you contains something you cannot see but that your body has registered before your mind has processed it. The name apparently came first. The experience appears to have always been there.',
  'Someone named it the Ghost Hole before anyone thought to explain why. That naming deserves some respect.',
  -27.4900, 152.9700, 'paranormal', 21, false, 'active'
),

(
  'Barcaldine Tree of Knowledge',
  'barcaldine-tree-of-knowledge',
  'The shearers met under this tree in 1891 to form the Australian Labor movement. In 2006 someone poisoned it. The stump remains.',
  'The Ghost Gum in front of the Barcaldine railway station was the gathering point in March 1891 for striking shearers who came together in the Queensland outback to resist the pastoral companies'' attempt to break the union movement. The meetings under the tree directly contributed to the formation of the Australian Labor Party. The tree was known as the Tree of Knowledge — a name that placed it explicitly in the lineage of things that change the world by the information they carry. In 2006 someone poured herbicide into the root system. The tree died over the following months. The perpetrator was never identified. The stump was preserved and is now enclosed in a memorial installation — the dead tree exhibited under a canopy, the rings of its cross-section mapped and documented. Workers and visitors at the memorial describe a quality of attention around the stump that they find difficult to characterise without using words like "alive" — a sense of something still active in the preserved wood that is inconsistent with its visual state. Whether this is the psychological weight of what the tree represented or something else, it is noted consistently enough to appear in informal accounts of the site that were not solicited by the memorial''s operators.',
  'They killed the tree because of what it meant. They couldn''t kill what it meant. The stump holds it.',
  -23.5583, 145.2860, 'strange_history', 19, true, 'active'
),

(
  'Jondaryan Woolshed',
  'jondaryan-woolshed-qld',
  'The largest woolshed in the southern hemisphere when it was built in 1859. The rouseabouts who died here are still in the yards.',
  'Jondaryan Woolshed in the Darling Downs was completed in 1859 as the centrepiece of a pastoral empire — 36 stands, shearing capacity of 40,000 sheep, the largest woolshed in the southern hemisphere at the time of its construction. The station was at the centre of the 1891 shearers'' strike, with striking workers camped nearby and management importing non-union labour under police protection. The woolshed and station buildings are now a heritage park. The paranormal accounts from Jondaryan are associated with the working buildings rather than the homestead: the yards, the shearing board, and the wool-press room generate accounts of sounds consistent with the operational period — sheep, machinery, voices — in an installation that is silent except for visitor activity. More specifically, workers doing maintenance in the off-season describe encounters with figures in the wool stores and in the yards that match descriptions of shearers from the 1880s-1890s period in dress and behaviour. The figures are always working. They have never been described as threatening, confrontational, or even particularly interested in the living people present. They are described as absorbed in what they are doing.',
  'The work defined them. When the work stopped, the definition didn''t.',
  -27.5333, 151.5833, 'haunted', 14, false, 'active'
),

(
  'Magnetic Island Fort',
  'magnetic-island-fort',
  'The WWII fortifications on Magnetic Island were manned by men who knew the Japanese were close. Some of them stayed on the clifftops.',
  'The coastal defence fortifications on Magnetic Island near Townsville were constructed in 1942 as part of Australia''s northern defensive perimeter during the Pacific War, when Japanese forces were bombing Darwin and advance planning had to account for the possibility of invasion of the Queensland coast. The installations — gun emplacements, observation posts, and barracks — were never required in combat but were manned under genuine threat conditions for the duration of the Pacific campaign. The island itself was fortuitously named: Captain Cook noted in 1770 that his compass behaved anomalously near the island, though subsequent surveys have not confirmed a magnetic anomaly. The ruins of the wartime installations are accessible by hiking track and are considered part of the island''s heritage. Paranormal accounts from the fort ruins are of two types: visual accounts of figures in the observation posts at night, in postures consistent with lookout duty rather than leisure, that disappear when approached; and the compass anomaly — Cook''s original observation reproduced by contemporary hikers using mobile phone compass applications, who report the compass rotating to an incorrect bearing in the immediate vicinity of the main gun emplacement and returning to correct orientation when they move away.',
  'They watched the horizon for an invasion that never came. Some of them appear to still be watching.',
  -19.1500, 146.8500, 'paranormal', 26, false, 'active'
),

(
  'Glasshouse Mountains — Tibrogargan',
  'glasshouse-mountains-tibrogargan',
  'The Kabi Kabi people say Tibrogargan turned his back on his son in shame. That son, Coonowrin, still cries.',
  'The Glasshouse Mountains of southeast Queensland are volcanic plugs of rhyolite and trachyte rising abruptly from the Sunshine Coast hinterland plain, their profiles visible from the ocean and from Brisbane on a clear day. The Kabi Kabi (Gubbi Gubbi) people have lived in this country for tens of thousands of years and hold the mountains as ancestral figures — specific individuals, with specific relationships, whose physical forms are the mountains themselves. Mount Tibrogargan is the father figure; Mount Coonowrin (also called Crookneck) is his son, whose bent silhouette is explained by the story of Tibrogargan striking his son and breaking his neck in anger after Coonowrin abandoned his pregnant mother during flooding. Tibrogargan turned his back on Coonowrin in shame — and if you stand at the right angle, Tibrogargan''s profile faces away from Coonowrin''s. European visitors to the mountains since the colonial period have reported an unsettling quality to the terrain between the mountains, particularly at dusk — a sense of scale and presence inconsistent with the physical proportions of the landscape, as though the mountains are actively attending to the space between them rather than simply occupying it.',
  'These are not mountains with a story. These are the story, and the mountains are what the story looks like.',
  -26.8833, 152.9500, 'folklore', 23, true, 'active'
),

(
  'Wolston House',
  'wolston-house-brisbane',
  'The oldest surviving farmhouse in Queensland, built in 1852. The Wentworth family lived here for three generations. One of them never agreed to leave.',
  'Wolston House at Wacol, near the site of the Brisbane Mental Hospital at Goodna, was built in 1852 and is considered the oldest surviving farmhouse in Queensland. The property was associated with the Wentworth family for several generations. The house''s proximity to the psychiatric hospital — which operated from 1865 and whose patients are buried in the adjacent Goodna Cemetery — has influenced the way its own haunting accounts have been received, with researchers occasionally attributing reports at Wolston to overflow from the hospital site. The accounts at Wolston are, however, quite specific to the house rather than to the broader area: a particular room in the east wing generates reports of a heavy presence that multiple visitors describe as oppressive rather than frightening — the feeling of a person who is very unhappy about your presence rather than trying to frighten you. The National Trust, which manages the property, has conducted events where participants reported consistent experiences in this room across groups that had no prior contact with each other. The identity of the presence has not been established from historical records, though the unhappiness appears personal rather than institutional.',
  'The oldest house remembers the oldest arguments. This one never got resolved.',
  -27.5833, 152.9167, 'haunted', 17, false, 'active'
),

(
  'Undara Lava Tubes',
  'undara-lava-tubes',
  'The world''s longest lava tube system formed 190,000 years ago. The Ewamian people have stories about what lives inside them.',
  'The Undara lava tube system in outback Queensland was formed approximately 190,000 years ago by a massive volcanic event, with lava channels cooling from the outside while still flowing inside and leaving hollow tubes up to 15 metres in diameter and several kilometres long. The tubes are accessible by guided tour and extend across a vast area of the Gulf Savannah. The Ewamian Aboriginal people, whose traditional country includes Undara, have held knowledge of the tubes for tens of thousands of years and describe them as places requiring specific protocols of approach and behaviour — not in generic terms but in terms specific to particular sections of the tube system. The tubes maintain a stable cool temperature regardless of the extreme outback heat above ground and contain significant bat colonies. European accounts of the tubes from the twentieth century, before they became a tourist attraction, include references by station workers and drovers to a feeling of malevolence in specific sections of the tube system — more than the darkness, more than the claustrophobia — and to sounds from within the tubes that were not produced by the bats or by wind movement: sounds that appeared to have intention. The Ewamian have not shared the full account of what the tubes contain.',
  'Two hundred thousand years of darkness, and something living in it. The bats know to leave by sunrise.',
  -18.2167, 143.7333, 'folklore', 28, true, 'active'
),

(
  'Ravenswood Cemetery',
  'ravenswood-cemetery-qld',
  'The gold rush graveyard at the end of Queensland''s most intact nineteenth-century mining town.',
  'Ravenswood, in the Mount Garnet region of north Queensland, was a significant goldfield from the 1860s and retains more intact Victorian-era architecture than almost any other Queensland mining town. The town''s cemetery contains the graves of miners, their families, Chinese workers buried in the Chinese section, and a significant number of children who did not survive the conditions of the goldfield. The cemetery is separated from the town by several kilometres of scrub — a distance that reflects the colony''s anxiety about contamination from disease rather than any sentimental distancing from death. Accounts from Ravenswood Cemetery are notable for their cultural specificity: the European section and the Chinese section generate different types of reports, with the European section producing visual accounts of figures in mining dress and the Chinese section producing primarily sonic accounts — voices in a language witnesses have identified as possibly Cantonese or Hakka, speaking at conversational rather than distressed volume. Several of the Chinese miners buried in Ravenswood were never repatriated to China despite their families'' intentions; the return ceremonies that were promised did not occur. The accounts in the Chinese section are described by one historian as having the quality of people who are waiting for something that has not yet arrived.',
  'They came from the other side of the world for gold and died in the Queensland scrub. Some of them are still waiting for the passage home.',
  -20.0992, 146.8969, 'haunted', 20, false, 'active'
),

(
  'The Grange Homestead Brisbane',
  'grange-homestead-brisbane',
  'One of Brisbane''s oldest surviving houses. The woman seen at the upstairs window has been there since the 1880s.',
  'The Grange is one of Brisbane''s oldest surviving residential districts, and the homestead that gives it its name — a colonial timber house of considerable age and character — has accumulated paranormal accounts that pre-date most of the suburb''s development. The house is now managed as a heritage site. The most persistent account from The Grange homestead is of a woman at the first-floor window — the front window facing the street — seen from outside the building. The accounts describe her as clearly visible, standing or sitting, looking outward; she is noted to be wearing clothing that is not contemporary. Accounts from residents on the street span at least three generations, making this one of the longer-running continuous sighting records in Brisbane''s suburban heritage. Internal accounts from the building describe a presence on the upper floor that staff note has become so familiar as to be almost unremarkable — the sense of someone moving between rooms when the floor is unoccupied, the sound of a chair moved across the boards when no chair is visible in a different position. "She keeps to her floor," one volunteer guide told a heritage researcher. "We keep to ours."',
  'She has been at that window since before the suburb existed. She watched the suburb grow up around her.',
  -27.4300, 152.9900, 'haunted', 16, false, 'active'
),

(
  'Innisfail Haunted Hospital',
  'innisfail-district-hospital',
  'The old hospital was rebuilt after Cyclone Mahina in 1899. The patients who died in the cyclone may not have received the message.',
  'Innisfail in far north Queensland was devastated by Tropical Cyclone Mahina in March 1899 — a storm whose recorded central pressure of 880 hPa makes it one of the most intense tropical cyclones ever recorded in the Southern Hemisphere, and whose storm surge killed an estimated 400 people, including residents of the original hospital buildings. The town was rebuilt, partly in the art deco style following a second severe cyclone in 1918, and Innisfail''s main street is now recognised as one of Australia''s finest surviving collections of tropical art deco architecture. The district hospital site has been rebuilt and relocated multiple times, but the area associated with the original hospital buildings from the 1890s has generated consistent accounts across subsequent structures built on or near the site. Medical staff working at night describe sounds from the older sections of the building complex — breathing, movement, what is described as the sound of people in pain or in distress — that cannot be attributed to current patients and that localise to areas of the building not in active clinical use. The hospital administration has not commented publicly on the accounts. Several staff members have requested reassignment from specific wards without being specific about why.',
  'The cyclone killed them faster than the hospital could process the loss. Some of the processing is apparently still underway.',
  -17.5258, 146.0333, 'haunted', 18, false, 'active'
);
