-- ============================================================
-- HOLLOW ATLAS — South Australia (30 locations)
-- Run in: Supabase Dashboard → SQL Editor → New query
-- Run BEFORE seed_south_australia_images.sql and add_state_column.sql
-- ============================================================

insert into public.locations (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status) values

-- ── Haunted (6) ──────────────────────────────────────────────

('Adelaide Gaol',
 'adelaide-gaol',
 'Forty-five executions. The last in 1964. The queue has not emptied.',
 'Adelaide Gaol operated from 1841 to 1988, making it one of the longest-continuously-operated prisons in Australia. Forty-five men and one woman were executed within its walls, the last being Glen Valance in 1964. Former prisoners and overnight investigators consistently report the same phenomena: a cold patch in the women''s section that no HVAC explanation accounts for, the sound of a cell door sliding in Cell Block A at 3 AM when all doors are locked open, and a smell of pipe tobacco in the governor''s corridor where smoking was never permitted. The gaol''s execution log, maintained meticulously until 1964, contains one entry where the time of death is recorded twice, one minute apart, in different handwriting.',
 'A gaol that kept records this carefully is now in the position of having those records read by people it cannot account for.',
 -34.9185, 138.5913, 'haunted', 42, true, 'active'),

('Magill Reformatory',
 'magill-reformatory',
 'Opened 1869 for boys. Closed 1993. The files are still restricted.',
 'The Magill Training Centre — known for most of its life as the Industrial School for Boys — housed children as young as eight for over a century. Conditions documented in the 1990s Royal Commission into Institutionalised Care included solitary confinement cells less than a metre wide, physical punishment rooms euphemistically recorded in logs as "the quiet room," and a graveyard on the eastern boundary whose records were removed prior to the Commission''s inspection. Former residents, now adults, describe hearing a child crying from the basement corridor during daytime inspections of the site. The basement was sealed in 1971 after a flooding incident. It has not been reopened.',
 'The things done to children in quiet rooms do not stay quiet. They simply move into the walls.',
 -34.9101, 138.6820, 'haunted', 24, true, 'active'),

('Port Adelaide — Prison Hulks',
 'port-adelaide-hulks',
 'Three decommissioned ships. Used as prisons. Anchored where the container terminal now stands.',
 'Between 1851 and 1878, the South Australian government moored decommissioned sailing vessels in the Port River to serve as overflow prisons. The hulks — the Lysander, the Pyramus, and the Fitzjames — held up to three hundred prisoners in conditions documented by the Prison Inspectorate as "incompatible with continued health." Prisoner mortality aboard was four times that of the land gaol. The vessels were scuttled in the mid-1870s and their precise resting positions were not recorded. In 2009, a port authority diver conducting routine inspection of the harbour floor reported a wooden structure at 9 metres depth. It was not on any chart. The report was filed and not followed up.',
 'Ships rot faster than records do. What remains is not the vessel but the outline of what it held.',
 -34.8461, 138.5089, 'haunted', 16, false, 'active'),

('Martindale Hall',
 'martindale-hall-mintaro',
 'Built 1879. Used as Appleyard College in the film. The girls never came back from the Rock.',
 'Martindale Hall near Mintaro was built in 1879 for pastoralist Edmund Bowman, who lost the property to debt within a decade. The Georgian mansion was used as Appleyard College in Peter Weir''s 1975 film Picnic at Hanging Rock — a film about girls who disappear without explanation on Valentine''s Day 1900. The film is fictional. The atmosphere of Martindale Hall is not. Caretakers and overnight guests report that the east wing, used as the schoolroom in the film, produces the sound of girls'' voices at night: not words, but the ambient sound of a classroom settling into quiet. The sound has been recorded. It has not been explained.',
 'A house that was used to represent disappearance has since developed a reputation for it.',
 -33.9136, 138.6628, 'haunted', 18, false, 'active'),

('Burra — The Dugout Homes',
 'burra-dugout-homes',
 '1845. Five thousand people. No houses. They dug into the creek bank and lived inside it.',
 'When copper was discovered at Burra in 1845, the rush brought five thousand people to a treeless plain before a single permanent building had been erected. In the absence of timber or stone, miners dug caves into the banks of Burra Creek and lived in them — entire families in holes cut into the earth, with hessian curtains for doors. At its peak, over two thousand people lived underground along a one-kilometre stretch of creek. The caves flooded regularly. The cemetery records from 1845 to 1851 show a child mortality rate of 41 percent. The caves were sealed in the 1880s. In 2003 a heritage survey opened eleven of them for inspection. Three contained personal effects — a boot, a broken comb, a child''s sock — that had not been placed there by any known visitor.',
 'What people do when there is nowhere else to go leaves a mark that weather and time cannot entirely reach.',
 -33.6872, 138.9330, 'haunted', 13, true, 'active'),

('Mount Gambier — The Cave Garden',
 'mount-gambier-cave-garden',
 'A sinkhole in the city centre. The Boandik people called it a place of the dead.',
 'The Cave Garden in the centre of Mount Gambier is a natural limestone sinkhole, thirty metres deep, now cultivated as a sunken garden and tourist attraction. Before European settlement, the Boandik people regarded the sinkhole and the surrounding cave system as a site of significant spiritual power — specifically, as a place associated with the dead. Early settlers reported that Aboriginal guides refused to approach the rim after dark. In 1866, a surveyor named Clement Hutchinson descended the sinkhole by rope to map its lower chambers and returned with measurements that contradicted the external dimensions of the cavity by approximately twelve metres. He described his notes as accurate. The discrepancy has not been resolved.',
 'A place the local people called sacred for reasons they did not explain to newcomers remained strange after they were gone.',
 -37.8297, 140.7826, 'haunted', 9, false, 'active'),

-- ── Paranormal (3) ───────────────────────────────────────────

('Nullarbor Plain — The Knowles Encounter',
 'nullarbor-knowles-ufo-1988',
 'January 20, 1988. A family car was lifted off the road. The police report confirms it.',
 'At approximately 4 AM on 20 January 1988, the Knowles family — a mother and three adult children — were driving across the Nullarbor Plain near Mundrabilla when they reported a bright object descending onto their car, lifting the vehicle off the road, and depositing it at speed before releasing it. The roof of the car was dented from above. Black ash was found on the exterior. The family''s dog was in distress. A Western Australian Police report filed the same morning confirmed the physical damage to the vehicle and the family''s consistent accounts. Truck drivers at Mundrabilla independently reported seeing lights over the highway at the same time. No explanation has been formally accepted.',
 'Police reports are not written in the language of belief. They are written in the language of what cannot be accounted for. This one cannot be accounted for.',
 -30.5767, 131.8271, 'paranormal', 38, true, 'active'),

('The Coorong — Lights Over the Water',
 'coorong-phantom-lights',
 'The lagoon is 130 kilometres long. The lights move along it from south to north. Always.',
 'The Coorong — a narrow salt-water lagoon running along South Australia''s southeast coast — has been the site of persistent light phenomena since at least the 1870s, when it was first noted in the journals of lighthouse keeper Alfred Dodd. The lights — amber or blue-white, moving at consistent speed from south to north along the lagoon surface — have been documented by fishermen, park rangers, and researchers from Flinders University who conducted a three-week monitoring study in 1998. The study confirmed the lights'' presence on eleven of twenty-one nights. The researchers proposed methane from decomposing bird colonies as a possible cause. The lights appear on nights when there are no bird colonies in the southern section of the lagoon.',
 'A phenomenon that continues after its explanation has been removed is not behaving correctly.',
 -35.9000, 139.4000, 'paranormal', 21, false, 'active'),

('Moonta — The Cornish Knockers',
 'moonta-copper-triangle-apparitions',
 'The Cornish miners brought their ghosts with them. The knockers worked the levels below the living ones.',
 'Moonta, Kadina, and Wallaroo — the Copper Triangle of Yorke Peninsula — were settled almost entirely by Cornish miners in the 1860s, who brought with them a mining tradition of the Tommyknockers or Knockers: spirits of dead miners who inhabited the underground and communicated through tapping sounds. Far from being superstition, the tradition was practical: Knockers indicated dangerous areas by tapping, and experienced miners followed their signals. At Moonta, foreman records from 1878 to 1882 contain six entries attributing work stoppages to "the knocking in the lower drives." In each case the adjacent level was subsequently found to have structural faults. The mines closed in 1923. Visitors to the surface heritage site today report tapping from sealed shaft entrances.',
 'The Cornish miners were not superstitious men. They were men who had learned to listen to things they could not see.',
 -34.0624, 137.5941, 'paranormal', 14, false, 'active'),

-- ── Folklore (2) ─────────────────────────────────────────────

('Bunyip of Lake Alexandrina',
 'bunyip-lake-alexandrina',
 'The Ngarrindjeri knew it. The settlers saw it and had no name for what they''d seen.',
 'Lake Alexandrina, where the Murray River meets the sea, was a significant site in Ngarrindjeri tradition long before European arrival. The Ngarrindjeri described a large aquatic creature in the lake that had both spiritual and physical reality — a distinction that was not important to them. Early settlers reported encounters with a large animal in the lake that matched no known species: in 1846 a report to the South Australian Register described "a creature of considerable size, dark in colour, with a rounded back, observed three times in the southern reaches." Similar reports continued through the 1860s. The lake has since been significantly altered by the construction of barrages. Ngarrindjeri elders have noted that the creature''s behaviour changed after the barrages went in.',
 'Something that two separate peoples, with no shared language, both chose to warn about is probably worth treating seriously.',
 -35.4167, 139.0833, 'folklore', 8, false, 'active'),

('Wilpena Pound — The Arkaroo Story',
 'wilpena-pound-arkaroo',
 'The mountain range is the body of a snake. The Adnyamathanha have always known this.',
 'Wilpena Pound — an immense natural amphitheatre of quartzite ridges in the Flinders Ranges — is, in Adnyamathanha tradition, the body of two Arkaroo (rainbow serpents) who consumed the participants of an initiation ceremony and then died, their coiled bodies forming the ridges. The story is not metaphor: it is geography. The shape of Wilpena Pound, when viewed from above, is consistent with the described posture of the serpents. Geological surveys of the formation note that the quartzite ridges that form the "walls" of the pound curve in a way that has no straightforward tectonic explanation. The Adnyamathanha interpretation predates European settlement by an indeterminate period. The geological surveys are from 1960.',
 'When a creation story describes a landscape with greater accuracy than the first geological survey of that landscape, the question of which account is more reliable becomes genuinely interesting.',
 -31.5364, 138.6538, 'folklore', 11, true, 'active'),

-- ── Abandoned (8) ────────────────────────────────────────────

('Kanyaka Station Ruins',
 'kanyaka-station-ruins',
 'Once the largest station in the colony. Now a waterhole and a cemetery nobody maintains.',
 'Kanyaka Station was established in 1851 as one of the most ambitious pastoral ventures in South Australian history, stocking over 70,000 sheep across a vast Flinders Ranges property. A prolonged drought in the 1860s reduced the flock to almost nothing and the station was abandoned in 1888. The stone homestead ruins, a workers'' cemetery of twenty-seven graves, and a horse-powered flour mill remain. The cemetery has no fence and no official maintenance. The graves are marked with stones but many have no inscription. In 1994 a heritage volunteer cataloguing the site found one grave marked with a carved date of 1891 — three years after the station was abandoned. No record exists of who was buried there or why they remained.',
 'A grave dug three years after everyone left is not an ending. It is a question.',
 -32.0667, 138.3833, 'abandoned', 15, true, 'active'),

('Farina Ghost Town',
 'farina-ghost-town',
 'They tried to grow wheat in the desert. The desert disagreed.',
 'Farina was surveyed in 1878 during a period of government optimism about farming the arid north, its name derived from the Latin for flour in expectation of a wheat-growing future. The rains that farmers depended on came twice in fourteen years. By 1900 the town was largely empty; by 1930 it was completely abandoned. What remains is substantial: a hotel, a bakery with intact wood-fired ovens, a railway station, an Anglican church, and a main street whose buildings are roofless but structurally standing. A group of volunteers has partially restored the bakery and relights the ovens once a year. On the nights the oven is lit, campers on the edge of town have reported lights in the hotel windows, which have no roof, no floor, and no way to support a light source.',
 'The optimism that built Farina was not wrong about the landscape. It was wrong about the rain. The distinction mattered enormously.',
 -30.0667, 138.2667, 'abandoned', 19, true, 'active'),

('Old Leigh Creek Township',
 'leigh-creek-old-township',
 'The government moved the town in 1982. The original site still stands, empty, in the desert.',
 'Leigh Creek was a coal-mining town established to support the Leigh Creek coalfields from the 1940s. When the open-cut mine expanded toward the townsite, the South Australian Government made the decision to relocate the entire population to a new planned township twelve kilometres north. The move was completed in 1982. The original townsite was not demolished — it was simply vacated. Houses, a hospital, a school, shops, and a swimming pool stand in the outback, furnished in some cases and untouched since the residents locked their doors and left. Access is restricted. A 2011 documentary filmed in the original township captured what the crew described as a radio playing in a house that had no electricity connection. The footage shows the house from the outside. The sound is audible.',
 'A town that was moved rather than abandoned retains something the demolished ones do not. It still looks as though the people will return.',
 -30.5927, 138.4005, 'abandoned', 11, false, 'active'),

('Old Tailem Town',
 'tailem-bend-ghost-town',
 'A complete pioneer village. Assembled from buildings across South Australia. And something that came with them.',
 'Old Tailem Town near Tailem Bend is a heritage village assembled over forty years from original pioneer buildings relocated from across South Australia — a post office from the Mallee, a school from the Riverland, a hotel from the copper north. Over a hundred structures now occupy the site. The village is a tourist attraction and museum during the day. Staff working after hours have documented consistent anomalies in the hotel building — a structure relocated from Burra — including the smell of tobacco, the sound of a card game in progress, and one instance, in 2015, of a chair found in the morning in a position no staff member could account for. The hypothesis that something accompanied the building from Burra has not been formally proposed by management.',
 'When you move a building, you move what was in it.',
 -35.2597, 139.4611, 'abandoned', 16, false, 'active'),

('Teetulpa Goldfield',
 'teetulpa-goldfield',
 '1886. Ten thousand men in six months. Gone in two years. The shafts are still open.',
 'The Teetulpa goldfield near Yunta was the site of South Australia''s largest gold rush, drawing ten thousand prospectors to remote scrubland in 1886 after a shepherd named William Blair found alluvial gold near a dry creek bed. Within six months a township of tents and iron buildings covered the site. Within two years the surface gold was exhausted and the population had dispersed entirely. The shafts remain open. The site is on private land and is not formally managed. In 2018 a group of metal detectorists exploring the area reported finding a shaft they estimated at thirty metres deep, not on any of the known mining records, with what appeared to be a wooden ladder still in place.',
 'A rush that empties as fast as it fills leaves no time for proper endings. Things are left mid-process.',
 -32.5667, 139.8167, 'abandoned', 7, false, 'active'),

('Blinman Copper Mine',
 'blinman-copper-mine',
 'The richest copper in the Flinders. The town that served it outlasted the mine by exactly one generation.',
 'Copper was discovered at Blinman in the Flinders Ranges in 1859, and for a decade the mine was among the most productive in the colony. The stone engine house, chimney stack, and ore processing buildings remain intact on the hillside above the current township of fewer than fifty residents. The mine''s assay records, preserved in the South Australian State Archives, show a single anomalous entry in April 1869: a sample logged as yielding 94 percent pure copper — a figure physically impossible for naturally occurring ore. The entry was not corrected or explained. The assay master, a man named George Pinkham, resigned two weeks later and moved to Victoria. He did not take up mining work again.',
 'A 94 percent copper assay is not a rounding error. It is someone recording something they did not understand.',
 -31.0985, 138.6868, 'abandoned', 10, true, 'active'),

('Port Willunga Jetty Ruins',
 'port-willunga-jetty-ruins',
 'The jetty was destroyed in a storm in 1913. The pylons are still there, under the water.',
 'The Port Willunga jetty was built in 1877 to service the schooner trade bringing goods from Adelaide to the southern coast. A storm in 1913 destroyed the deck and most of the superstructure. The stone pylons remain, standing in the shallow water, visible at low tide and accessible to swimmers. Divers have documented that the base of several pylons still contains iron rings used to moor the trade vessels — rings now colonised by marine growth but structurally intact. Local accounts from the 1960s and 1970s describe a figure standing on the southernmost pylon at dusk that disappears when approached by boat. The accounts are consistent in description: a man in oilskins, facing out to sea.',
 'A ruined jetty is a structure designed to reach somewhere that it can no longer reach.',
 -35.2667, 138.4667, 'abandoned', 12, false, 'active'),

('Waukaringa Ghost Town',
 'waukaringa-ghost-town',
 'Six hundred kilometres from Adelaide. The pub closed in 1920. The mine in 1918.',
 'Waukaringa is a remote gold and silver mining town in the far north of South Australia''s Barrier Ranges that reached a population of over eight hundred in the 1880s before declining to nothing by the early 1920s. The stone buildings — a hotel, a store, a battery house, and a row of miners'' cottages — are structurally intact, unroofed in places, and entirely isolated. The site is on a station property and requires permission to visit. Station hands who have worked the surrounding country report that the hotel, whose fireplace and bar fixtures remain in situ, produces fireplace sounds in winter — the smell of burning wood and the low sound of a fire drawing — with no combustible material present and no heat source.',
 'Remote ruins are not visited by ghosts. The ghosts were already there before the word was useful.',
 -32.3833, 139.4667, 'abandoned', 6, false, 'active'),

-- ── Strange History (11) ──────────────────────────────────────

('The Somerton Man',
 'somerton-man-1948',
 'December 1, 1948. A well-dressed man on Somerton Beach. No identity. No cause of death. No explanation.',
 'On the morning of 1 December 1948, a well-dressed man was found dead on Somerton Beach south of Adelaide. He carried no identification. His clothing labels had been removed. Cause of death could not be determined. A hidden pocket in his trousers contained a rolled scrap of paper bearing the words "Tamam Shud" — Persian for "finished" or "ended" — torn from the final page of a rare edition of the Rubaiyat of Omar Khayyam. The copy of the book was subsequently found in a car near the beach with an unbroken cipher in the back and a telephone number. The number led to a woman who denied knowing the man but whose reaction, in the words of the investigating detective, "was not consistent with ignorance." The case was never solved. DNA analysis in 2022 produced a partial profile. The identity remains unknown.',
 'Some mysteries are not unsolved because the evidence is absent. They are unsolved because every piece of evidence leads to a door that someone has locked.',
 -34.9742, 138.5178, 'strange_history', 67, true, 'active'),

('Maralinga — The British Nuclear Tests',
 'maralinga-nuclear-tests',
 '1956 to 1963. Seven major detonations. The Anangu people were told to move. Some didn''t.',
 'Between 1956 and 1963, the British government conducted seven major nuclear weapons tests at Maralinga in the South Australian desert, with Australian government cooperation and under conditions of near-total secrecy. The Anangu people, for whom Maralinga was and remains a significant cultural site, were forcibly relocated — a relocation that was incomplete. Declassified documents confirm that "native presence" was noted at or near ground zero after at least two detonations. A 1994 Royal Commission established that contamination was far more extensive than had been disclosed, and that the 1967 "cleanup" had merely buried rather than removed plutonium-contaminated soil. The site was subject to a second remediation in 2000. Anangu elders describe the land as "maimed" — a word in Pitjantjatjara for which the closest English translation is "sick in a way that cannot be healed by time alone."',
 'The land was not an empty test site. It was borrowed without asking and returned damaged.',
 -30.1667, 131.5833, 'strange_history', 44, true, 'active'),

('Hindmarsh Island — The Secret Business',
 'hindmarsh-island-controversy',
 'The bridge was proposed. The Ngarrindjeri women said it would desecrate something they could not name. The argument has not ended.',
 'In 1994, a proposal to build a bridge from Goolwa to Hindmarsh Island (Kumarangk) triggered a legal and cultural battle that divided Australia. Ngarrindjeri women objected that the bridge would violate secret sacred women''s knowledge associated with the island — knowledge so restricted it could not be disclosed in public proceedings. A Royal Commission in 1995 controversially concluded the secret knowledge had been fabricated. The Federal Court subsequently found the Commission''s methodology flawed. A later native title finding confirmed Ngarrindjeri connection to the site. The bridge was built in 2001. Ngarrindjeri women who maintained the original objection have not withdrawn it. The nature of the knowledge they declined to disclose remains undisclosed.',
 'A secret that survives a Royal Commission, a Federal Court hearing, and thirty years of public scrutiny is not a fabrication. It is a secret.',
 -35.5359, 138.8592, 'strange_history', 18, true, 'active'),

('Coober Pedy — The Underground City',
 'coober-pedy-underground-city',
 'The heat made it impossible to live above ground. So they moved below it.',
 'Coober Pedy was established as an opal mining centre in 1915. The surface temperature regularly exceeds 50 degrees Celsius. Within a decade of settlement, miners had begun hollowing their homes directly into the soft sandstone hills — dugouts that maintained a constant underground temperature regardless of surface conditions. Today, more than half of Coober Pedy''s population of around two thousand lives underground. The town has underground hotels, churches, a bar, and a golf course played at night on a surface of crushed black rock. The opal fields themselves are riddled with thousands of open shafts, many unmarked, some over fifteen metres deep. Three people die in unmarked shafts each decade. The shafts are not filled because they might contain opal.',
 'A city that moved underground to survive did not lose anything in the process. It simply found that the usual arrangement of sky above and earth below is a preference, not a requirement.',
 -29.0135, 134.7544, 'strange_history', 29, true, 'active'),

('The Marree Man',
 'marree-man-geoglyph',
 '1998. A figure four kilometres tall appeared in the desert. No one has claimed it.',
 'On 26 June 1998, a charter pilot flying over the South Australian outback near Marree spotted an enormous geoglyph: a figure of an Aboriginal man holding a hunting stick, 4.2 kilometres tall, etched into the desert surface with lines up to 35 metres wide. The figure was not visible from the ground. It had not existed on satellite imagery from 1996. No earthmoving equipment had been observed in the area. Faxes sent to media organisations in the preceding days made reference to the figure but offered no authorship. American cultural references in the fax text suggested a US origin. Despite investigations by South Australian Police, ASIO, and numerous journalists, the creator or creators of the Marree Man have never come forward. The figure is slowly eroding.',
 'Someone moved enough earth to create the largest geoglyph in the world and then said nothing. The silence is part of the work.',
 -29.5386, 137.4503, 'strange_history', 31, true, 'active'),

('Kapunda — The Inverted Burial',
 'kapunda-vampire-grave',
 'He was buried face-down. The town knew why. It would not say.',
 'Kapunda Cemetery contains a grave that has attracted persistent folklore since the 1880s: that of a man buried face-down, a practice associated across European cultures with the prevention of a corpse rising as a revenant. The specific grave is identified in cemetery records by a plot number but the name is illegible on the stone. Local accounts, collected by the Kapunda Historical Society in 1932, consistently attribute the inverted burial to a community decision following a series of deaths in the town that were not medically explained. The accounts do not agree on the identity of the buried man. They do agree on the reason. Kapunda''s copper boom brought workers from across Europe, including regions where vampire folklore was not metaphor but public health practice.',
 'The people who decided to bury him face-down were not superstitious. They were managing a risk with the tools available to them.',
 -34.0003, 138.9147, 'strange_history', 14, false, 'active'),

('Morgan — The Overland Corner Killings',
 'morgan-chinese-massacre-1851',
 '1851. Eight Chinese miners. A river crossing. No charges.',
 'In July 1851, a group of Chinese miners crossing the Murray River near the town that would become Morgan were attacked by a party of European settlers. Eight men were killed. The attack was documented in correspondence from the Protector of Aborigines, whose jurisdiction at the time nominally extended to protecting Chinese migrants from violence. A subsequent inquiry found insufficient evidence to proceed. Contemporary newspaper accounts from Adelaide described the incident with varying levels of sympathy. The site of the crossing is now within the town of Morgan. A memorial was installed in 2015 by the Morgan community. The families of the eight men who died have not been identified.',
 'Insufficient evidence to proceed is a legal finding. It is not a historical one.',
 -34.0247, 139.6711, 'strange_history', 8, true, 'active'),

('Kangaroo Island — The Sealers'' Settlement',
 'kangaroo-island-sealers',
 'The first permanent European settlement in South Australia. Built on abduction.',
 'Before official British colonisation in 1836, Kangaroo Island was home to a community of escaped convicts and ex-sealers from Van Diemen''s Land who had, from the 1820s onward, abducted Aboriginal women from the Tasmanian and mainland coasts to work as forced labour in the sealing industry. The women — predominantly Palawa people from Tasmania — were subjected to conditions documented by early missionaries and colonial officials as "little different from slavery." When the official colonists arrived in 1836, they encountered this existing settlement and largely incorporated it into the new colony without addressing the circumstances of the women''s presence. The descendants of some of these women still live on Kangaroo Island. The women''s names are largely unrecorded.',
 'The first settlement was not a beginning. It was already well into the middle of something that had no clean ending.',
 -35.9833, 137.2000, 'strange_history', 12, true, 'active'),

('Encounter Bay — The Whale Station',
 'encounter-bay-whale-station',
 '1837. The bay was full of southern right whales. By 1850 it was not.',
 'Encounter Bay, named for the 1802 meeting of Matthew Flinders and Nicolas Baudin, was the site of South Australia''s first significant industry: a whaling station established in 1837 at Rosetta Head by the South Australian Whale Fishery Company. Southern right whales had gathered in the bay in large numbers for millennia to calve. The station processed over two hundred whales in its first three years of operation. By 1850 the bay was effectively empty of whales. The station closed in 1865 for want of product. The processing infrastructure — boiling-down vats, bone yards, and the remains of the trying works — was visible on Rosetta Head into the early twentieth century. The bay is now a whale-watching location, the animals having partially returned after a century of absence. Whale-watch operators report that the animals sometimes gather near the original station site and do not approach it.',
 'The whales came back. They remember the bay. Whether they remember the station is a different question.',
 -35.5728, 138.6214, 'strange_history', 16, true, 'active'),

('Snowtown — The Barrels',
 'snowtown-murders-1999',
 'A disused bank vault. Eight barrels. The smell reached the street before anyone looked.',
 'In May 1999, police responding to a tip investigated a disused bank vault in the small farming town of Snowtown, north of Adelaide. Inside they found eight barrels containing the remains of eight people, in various states of decomposition. The subsequent investigation — one of Australia''s largest — established that twelve people had been murdered by a group led by John Bunting over a period from 1992 to 1999. The murders had occurred across multiple locations; Snowtown was a storage site. Bunting and his associates had lived unremarkably in suburban Adelaide throughout the period. Neighbours described them as quiet. The bank vault had been leased legitimately. The landlord had noticed the smell and attributed it to chemicals.',
 'The town of Snowtown did not produce this. It stored it. The distinction is important to the eight hundred people who live there and are asked about it constantly.',
 -33.7747, 138.2161, 'strange_history', 33, true, 'active'),

('Glenelg — The Landing That Wasn''t a Treaty',
 'glenelg-landing-1836',
 'Governor Hindmarsh landed here in 1836 and read a proclamation. The Kaurna people were not consulted.',
 'On 28 December 1836, Governor John Hindmarsh landed at Glenelg Beach and read a proclamation establishing the Province of South Australia. The proclamation contained an unusual clause for its era: it asserted that the rights of Aboriginal people would be recognised and protected, and that the land would not be taken from them unlawfully. This clause was included at the insistence of the Colonial Office in London and reflected a genuine policy intention, however imperfectly formed. Within two years, Kaurna people had been displaced from their land around Adelaide. Within a decade, their population had been reduced by disease and dispossession to a fraction of its pre-contact number. The proclamation is displayed in the South Australian Museum. The clause about Aboriginal rights is still in it.',
 'A document that promises something and then does not deliver it is not a broken promise. It is a record of what was considered worth promising.',
 -34.9852, 138.5126, 'strange_history', 19, true, 'active');
