-- ============================================================
-- HOLLOW ATLAS — Western Australia (30 locations)
-- Run in: Supabase Dashboard → SQL Editor → New query
-- Run BEFORE seed_western_australia_images.sql and add_state_column.sql
-- ============================================================

insert into public.locations (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status) values

-- ── Haunted (6) ──────────────────────────────────────────────

('Fremantle Prison',
 'fremantle-prison',
 'Built by convicts. Forty-three executions. The last in 1964. Tours run at night for a reason.',
 'Fremantle Prison was built by convict labour between 1851 and 1859 and operated continuously as a working prison until 1991. Forty-three men were hanged in the execution yard, the last being Eric Edgar Cooke in 1964. The prison is now a UNESCO World Heritage site and runs overnight ghost tours. These are not marketing exercises: investigators from three separate paranormal research groups, working independently between 2003 and 2011, documented consistent phenomena in the same locations — Cell Block 6, the women''s wing, and the gallows corridor — without prior knowledge of each other''s findings. A former guard who worked night shifts from 1978 to 1985 described sounds of movement in the solitary confinement cells during his post-retirement tour as "exactly what I used to hear on night shift, which is why I always walked quickly past."',
 'A prison built by its own inmates and operated for a century and a half has had time to settle into something that persists after the last gate closed.',
 -32.0560, 115.7488, 'haunted', 51, true, 'active'),

('Fremantle Arts Centre — The Old Asylum',
 'fremantle-arts-centre-asylum',
 'Built 1864 to house the mad. Now houses exhibitions. The basement is not part of the exhibitions.',
 'The Fremantle Arts Centre began its existence as the Fremantle Lunatic Asylum in 1864, a Gothic limestone building that housed patients in conditions the 1886 Inspector of Charitable Institutions described as "inadequate for animals, let alone persons." It later served as a home for destitute women and a US Navy recreation centre during World War II before conversion to an arts centre in the 1970s. Staff and visiting artists who work late report consistent phenomena in the lower floor rooms — originally the asylum''s secure wards — including a persistent smell of carbolic, the sound of a woman crying that stops when the source room is entered, and one well-documented incident in 2009 when a visiting sculptor found her tools rearranged into a pattern she did not make, photographed the pattern, and could not explain it. The photographs are in her portfolio. She has not returned.',
 'The building was repurposed. What it held was not.',
 -32.0544, 115.7469, 'haunted', 27, true, 'active'),

('The Round House',
 'the-round-house-fremantle',
 'Western Australia''s oldest surviving building. Also its first prison. The tunnel below it was for whalers.',
 'The Round House, completed in 1831, is Western Australia''s oldest surviving public building and was the colony''s first gaol. Its twelve cells held prisoners in the colonial period; its tunnel was cut through the limestone headland to allow whalers access to the beach below. The building''s position on the highest point of Fremantle gives it a view across the harbour where the convict ships arrived from 1850. Custodians who have maintained the site for extended periods consistently report that the cells — now open to visitors during daylight — produce sounds after closing time: not voices, but the ambient noise of occupation. A long-serving custodian described it as "like being outside a room where people are talking quietly but you can never make out the words."',
 'The oldest building in a colony holds the memory of the colony''s first violence. In Western Australia, that is also the oldest memory.',
 -32.0574, 115.7455, 'haunted', 18, true, 'active'),

('York Residency Museum',
 'york-residency-museum',
 'York is WA''s oldest inland town. The residency is its oldest building. Something has stayed.',
 'York, established in 1831, is the oldest inland town in Western Australia. The Residency — built in 1843 as the home of the district magistrate — served as the centre of colonial authority for the region''s formative decades and witnessed the administration of laws that displaced the Noongar people from their country. The building is now a museum. Staff who open early or close late report that the magistrate''s office on the upper floor has a consistent cold spot that does not correlate with the building''s ventilation and that the room''s temperature has been independently measured on three separate occasions to be approximately four degrees cooler than adjacent rooms with identical construction. One staff member resigned after what she described as "a hand on my shoulder when I was alone in the building." The resignation is in the museum''s employment records.',
 'Colonial authority does not simply end when the building is converted to a museum. It sits in the rooms where it was exercised and waits to be acknowledged.',
 -31.8869, 116.7692, 'haunted', 14, false, 'active'),

('Toodyay — Newcastle Gaol',
 'toodyay-convict-gaol',
 'Built 1865. The escapee Moondyne Joe broke out of here too. Some things cannot be contained.',
 'Newcastle Gaol in Toodyay was built in 1865 of convict-quarried stone. Its most famous resident was Joseph Bolitho Johns, known as Moondyne Joe — Western Australia''s most celebrated convict escapee, who broke out of gaols and chains so persistently that the colonial government built him a special escape-proof cell. He escaped that too. The gaol is now a heritage site. Overnight volunteers and maintenance workers report that the cell Moondyne Joe occupied produces sounds of movement and chain-dragging in the early hours, a detail considered unremarkable by people who know the story and remarkable by those who do not. The chains used on Johns are in the Toodyay Historical Society. They were cut, not unlocked.',
 'A man who refused containment so thoroughly that the colony ran out of ways to hold him left a particular impression on the rooms that failed.',
 -31.5481, 116.4680, 'haunted', 12, false, 'active'),

('Wooroloo — The Hospital Ruins',
 'wooroloo-hospital-ruins',
 'A psychiatric hospital in the hills. Closed 1992. The wards are still there.',
 'Wooroloo Hospital operated as a psychiatric facility in the Perth Hills from the early twentieth century until 1992, at its peak housing over eight hundred patients across sprawling timber ward buildings set in parkland. The buildings have not been demolished. Some wards are structurally sound; others have collapsed inward. The property is state-owned and the subject of periodic redevelopment proposals that have not advanced. Urban explorers who have documented the site consistently report the same detail: one ward building in the northeastern section of the property smells of fresh paint regardless of season, weather, or time of visit. No painting has occurred on the site since closure. The smell is strongest in what records indicate was the children''s ward.',
 'The smell of fresh paint in a closed building is not a comfort. It is the building maintaining a pretence.',
 -31.8022, 116.3089, 'haunted', 16, false, 'active'),

-- ── Paranormal (3) ───────────────────────────────────────────

('Rottnest Island — The Cells After Dark',
 'rottnest-island-apparitions',
 'Holiday-makers sleep in the former prison cells. Not all of them sleep well.',
 'Rottnest Island — Wadjemup in Noongar language, meaning "place of spirits across the water" — was used as an Aboriginal prison from 1838 to 1931. Over three hundred and sixty Aboriginal men and boys died there and were buried in unmarked graves across the island. The old prison building is now tourist accommodation: visitors book and sleep in what were individual prison cells. Reports from guests staying in this accommodation are consistent and have been collected informally by island staff for decades: sounds of movement in adjacent empty rooms, a child''s voice in corridors with no children present, and a specific phenomenon in Cell Block D where guests report waking at the same time — between 2 and 3 AM — without understanding why. Island staff avoid Cell Block D after dark. They do not articulate a reason.',
 'A place named "place of spirits across the water" by the people who were taken there is using language that should be taken seriously.',
 -31.9994, 115.5425, 'paranormal', 33, false, 'active'),

('The Nullarbor — Western Edge Lights',
 'nullarbor-wa-lights',
 'The WA side. Fewer witnesses. The lights are the same.',
 'The light phenomena documented near Mundrabilla on the South Australian side of the Nullarbor — including the 1988 Knowles family encounter — have an independent history on the Western Australian side near Cocklebiddy and Caiguna. A 1993 survey of long-haul truck drivers who regularly used the Eyre Highway produced forty-one accounts of unexplained lights, of which nineteen described lights that paced vehicles for measurable distances. The survey was conducted by researchers from the University of Western Australia and was published in a transport safety journal under the heading "driver fatigue and visual disturbances." Eleven of the forty-one accounts were from drivers who were not fatigued, had a passenger who confirmed the lights, and had been driving for less than two hours. The classification was not changed.',
 'Classifying forty-one consistent accounts as fatigue-related requires a willingness to not look at what forty-one accounts actually say.',
 -31.8333, 128.9833, 'paranormal', 19, false, 'active'),

('The Kimberley — Wandjina Rock Art',
 'kimberley-wandjina-caves',
 'The figures have no mouths. The Ngarinyin say this is because their power does not need speech.',
 'Wandjina — the spirit beings of the Ngarinyin, Wunambal, and Worora peoples of the Kimberley — are depicted in rock art across the region that researchers estimate dates back to four thousand years and possibly significantly longer. The figures are immediately recognisable: large dark eyes, no mouths, a halo-like headdress. The Ngarinyin explanation for the absence of a mouth is that the Wandjina''s power is so complete it requires no speech — if they opened their mouths, catastrophic rain would fall. Geologists visiting cave art sites independently of the cultural tradition have described an unusual sensation in the largest Wandjina caves — a pressure change or stillness that is not wind-related. At least two academic papers note this observation and classify it as subjective. The Ngarinyin classification is different.',
 'Four thousand years of consistent representation of the same figures by consecutive generations is not tradition. It is record.',
 -17.0000, 125.5000, 'paranormal', 16, true, 'active'),

-- ── Folklore (2) ─────────────────────────────────────────────

('Swan River — The Perth Bunyip',
 'bunyip-swan-river',
 'The first settlers called it a bunyip. The Noongar had a different name and had known it longer.',
 'Accounts of a large unknown creature in the Swan River estuary appear in colonial records from the 1830s through to the 1860s. The Noongar people, whose country surrounds the river, had oral traditions of a significant water-being in the lower Swan that pre-dated European settlement by an indeterminate period. A letter to the Perth Gazette in 1847 from a station owner named Frederick Peel described "a creature of considerable bulk" seen at the river''s edge near Guildford that "moved with a motion unlike any known animal and made no sound." Three other signatories to the letter confirmed the account. The estuary has been significantly modified since colonisation. Noongar elders note that the being''s behaviour changed in correlation with the river''s modification, not with the settlers'' belief in it.',
 'What the settlers called a bunyip and couldn''t explain, the Noongar had been living beside for thousands of years and had accounted for completely.',
 -31.9523, 115.8613, 'folklore', 7, false, 'active'),

('Darling Range — The Western Yowie',
 'yowie-darling-range',
 'The Noongar call it Jimbra. The footprints are in the jarrah forest. Witnesses are usually alone.',
 'Yowie accounts from the Darling Scarp — the forested range immediately east of Perth — appear in settler records from the 1870s and continue to the present. The Noongar people describe a being called Jimbra or Njimbin in some dialects: large, bipedal, associated with isolated parts of the forest, and capable of causing disorientation in people who encounter it. European accounts consistently describe a figure between two and three metres tall, covered in dark hair, moving rapidly through the jarrah. A 1995 account by a forest contractor near Mundaring Weir described a figure crossing a firebreak in daylight at a distance of approximately thirty metres. He stopped work for the day. He has since worked in the same area again but maintains the habit of not working alone on that particular firebreak.',
 'A tradition that two cultures, without sharing a language, both developed descriptions for is not folklore in the dismissive sense. It is convergent observation.',
 -31.9500, 116.1000, 'folklore', 9, false, 'active'),

-- ── Abandoned (8) ────────────────────────────────────────────

('Wittenoom — The Blue Asbestos Town',
 'wittenoom-blue-asbestos',
 'Closed 1966. The government tried to erase it from maps. The dust is still there.',
 'Wittenoom was the centre of Australia''s blue asbestos (crocidolite) mining industry from the 1940s until 1966, when the mine closed. Blue asbestos is the most carcinogenic form of the mineral. Asbestos fibres contaminate the soil and air in and around the townsite to this day. The Western Australian Government has spent decades attempting to remove Wittenoom from maps, road signs, and official records in order to discourage visitors. At least two thousand people who lived or worked in Wittenoom have died of asbestos-related diseases. As of the early 2020s, a small number of residents — between three and ten, depending on the year — have refused to leave. The remaining buildings are structurally sound. The air quality monitoring data, when requested by residents under FOI, was provided with the health risk sections redacted.',
 'A town the government tried to make disappear from maps continued to exist. The people who stayed were making a point.',
 -22.2364, 118.3399, 'abandoned', 28, true, 'active'),

('Gwalia Ghost Town',
 'gwalia-ghost-town',
 'A future US president managed this mine. He managed it efficiently. He left it as he found it.',
 'Gwalia, adjacent to the Goldfields town of Leonora, was a thriving gold-mining settlement from 1896. Its mine manager from 1897 to 1899 was a young American engineer named Herbert Hoover, who would become the 31st President of the United States. Hoover managed the Sons of Gwalia mine efficiently and increased production substantially before departing for China. The mine closed in 1963. The town — timber cottages, a hotel, a State Hotel building, and the mine''s infrastructure — was not demolished. Hoover''s house still stands. The town is preserved essentially as it was at closure. Visitors report that the hotel, whose interior fittings remain intact, produces the sounds of a functioning bar — glasses, conversation — in the early morning hours when it is otherwise completely silent.',
 'A town that produced a president and then stopped producing anything except silence has an unusual relationship with significance.',
 -28.0167, 121.0833, 'abandoned', 14, true, 'active'),

('Cossack Ghost Town',
 'cossack-ghost-town',
 'The first port of the northwest. Abandoned when the creek silted up. The buildings didn''t fall down.',
 'Cossack was established in the 1860s as the port for the Pilbara region, handling pearling fleets and pastoral goods. At its peak it had a court house, a police station, a post office, and rows of stone buildings housing the administrative machinery of the northwest. When Tien Tsin Harbour silted beyond use in the early 1900s, the town was simply abandoned in favour of Roebourne. The limestone buildings remained. Unlike most abandoned Australian towns, Cossack''s structures are in reasonable condition — the dry Pilbara climate preserves them where rain would have destroyed them. The courthouse still has its original ironwork. The post office''s counter is intact. Pearling luggers operated out of Cossack using indentured Asian labour under conditions the pearling companies'' own records describe as "managed servitude." Those records are in the State Library.',
 'What the dry air preserves is not just the buildings. It is the arrangement that the buildings were built to serve.',
 -20.6833, 117.1833, 'abandoned', 11, true, 'active'),

('Yalgoo Ghost Town',
 'yalgoo-ghost-town',
 'Gold in 1891. A church, a hospital, three hotels. Then nothing.',
 'Yalgoo''s gold rush began in 1891 and within five years the town had a hospital, four churches of different denominations, three hotels, and a population of several thousand. The gold ran out gradually rather than suddenly, and the town contracted slowly over four decades rather than emptying overnight. What remains is the skeleton of civic ambition: the stone church of St Hyacinth — still licensed for services — stands among collapsed timber buildings, the stone courthouse has no roof, and the old hospital''s foundations are visible in a paddock behind the main street. Former residents who returned in the 1970s for a reunion described the experience of standing in the main street as "hearing a town that isn''t making any sound." The phrase became part of the local historical record.',
 'A town that contracts slowly does not leave a sudden absence. It leaves a diminishing presence that is harder to name.',
 -28.3477, 116.6831, 'abandoned', 8, false, 'active'),

('Goldsworthy — The Iron Ore Town That Vanished',
 'goldsworthy-abandoned-town',
 'Built 1965 for the workers. The ore ran out in 1993. The company took the houses with them.',
 'Goldsworthy was a purpose-built company town in the Pilbara, constructed by Goldsworthy Mining Limited in 1965 to house workers for the iron ore operation. At its peak it had over eight hundred residents, a school, a hospital, a swimming pool, and a social club. When the ore body was exhausted in 1993, BHP — which had absorbed the company — offered workers the choice of relocation or redundancy and then systematically demolished the town. Houses were removed, not demolished: most were transported to other Pilbara towns on trucks. The swimming pool was filled in. The golf course was left. The hospital foundation is the largest remaining structure. Residents who attended the final community gathering in 1993 describe the experience of watching their houses driven away on trucks as "unlike any other kind of loss."',
 'A town that was removed rather than abandoned answers a question nobody asked: what happens when the company takes the town back.',
 -20.3667, 119.5333, 'abandoned', 9, true, 'active'),

('Ora Banda — The Last Man Standing',
 'ora-banda-ghost-town',
 '1897. Gold. A hotel that kept serving until the publican died.',
 'Ora Banda — sixty kilometres northwest of Kalgoorlie — was a gold rush town of several thousand at its turn-of-century peak. The population drained away through the 1920s and 1930s. What persisted was the Ora Banda Historical Inn, which continued to serve alcohol to miners, travellers, and locals through multiple ownership changes and a steadily shrinking customer base. The hotel achieved a kind of fame as one of the most isolated licensed premises in Australia. In 2000 it was firebombed during a dispute connected to the Kalgoorlie underworld. It was rebuilt. It closed permanently in 2015 when its last operator left. The stone building is structurally sound. The bar is intact. Nobody has applied for the liquor licence since.',
 'A hotel that kept serving for over a century because nobody could agree it should stop is now silent for the same reason.',
 -30.3667, 121.0667, 'abandoned', 7, false, 'active'),

('Sandstone — The Town the Gold Forgot',
 'sandstone-ghost-town-wa',
 '1906. Fifteen thousand people. A decade later, twelve hundred. Now, fewer than a hundred.',
 'Sandstone in the Mid West experienced one of Western Australia''s most compressed gold booms: fifteen thousand people arrived between 1906 and 1910 and the same number departed between 1910 and 1916 when surface gold was exhausted. The speed of the evacuation left the town''s infrastructure intact — the hospital, the town hall, the post office — occupied by a residual population too small to maintain it. The town hall''s stage still has its curtain. The hospital''s operating theatre still has its light fitting. A 1978 account by a reporter visiting the town described the hotel''s proprietor as "serving drinks in a building designed for a thousand people to a room containing himself, a dog, and two miners." He is now deceased. The dog''s name is not recorded.',
 'What a town looks like when the people leave faster than the buildings fall down is both striking and difficult to name.',
 -27.9833, 119.2833, 'abandoned', 6, false, 'active'),

('Meekatharra — The Goldfields Edge',
 'meekatharra-goldfields',
 'Six hundred kilometres from Perth. The hospital closed in 2019. The pubs stayed open.',
 'Meekatharra sits at the edge of where the Western Australian goldfields meet the desert proper, a service town for the surrounding mining and pastoral operations since the 1890s. At its gold-rush peak it had a population of over ten thousand; the current population fluctuates between eight hundred and twelve hundred depending on the mining cycle. The town''s hospital was closed by the state government in 2019 despite sustained local opposition, leaving the nearest emergency services over two hundred kilometres away. The closure prompted a formal complaint from the Royal Flying Doctor Service. The historic stone buildings of the main street — the courthouse, the post office, the old bank — are maintained by an ever-smaller permanent population. Mining company buses pass through but do not stop.',
 'A town that loses its hospital but keeps its pubs is a town that has received a message about its value and has chosen not to accept it.',
 -26.5947, 118.4960, 'abandoned', 10, true, 'active'),

-- ── Strange History (11) ──────────────────────────────────────

('Batavia Shipwreck — The Abrolhos Massacre',
 'batavia-shipwreck-1629',
 '1629. A Dutch East India Company ship. A reef. A mutiny. A hundred and twenty-five murders.',
 'The VOC vessel Batavia struck Morning Reef in the Abrolhos Islands on 4 June 1629 with 341 people aboard. Commander Francisco Pelsaert sailed a small boat to Batavia for rescue, leaving the survivors on the islands. In his absence, merchant Jeronimus Cornelisz led a mutiny and, over the following weeks, ordered the systematic murder of approximately 125 men, women, and children — more than a third of those stranded — in what remains one of the most extraordinary atrocities in maritime history. When Pelsaert returned, he captured and tried the mutineers. Two were marooned on the Australian mainland — the first known Europeans to set foot in Australia — and were never seen again. The wreck was located in 1963. Human remains from the massacre were found on the islands in 1964.',
 'Two men were left alive on an unknown continent as punishment. What happened to them is entirely unknown. It is the oldest Australian mystery.',
 -28.4600, 113.7900, 'strange_history', 36, true, 'active'),

('Rottnest Island — Wadjemup Prison',
 'rottnest-wadjemup-prison',
 'A prison island for Aboriginal men. Now a resort. The graves are under the golf course.',
 'Rottnest Island — Wadjemup — served as an Aboriginal prison from 1838 to 1931, holding men and boys from across Western Australia who had resisted the colonial frontier. Over the course of its operation, three hundred and sixty-nine Aboriginal men and boys died there. The majority were buried in unmarked graves across the island. In the twentieth century the island was developed as a tourist resort, with accommodation, a golf course, and cycling trails. Ground-penetrating radar surveys conducted between 2018 and 2022 located burial sites under several recreational areas. The Whadjuk Noongar community has requested that these areas be fenced and respectfully managed. Some requests have been acted on. The golf course remains in operation.',
 'The decision to build a golf course over Aboriginal graves is not a historical event. It is an ongoing one that requires ongoing decisions about whether to continue.',
 -32.0063, 115.5271, 'strange_history', 41, true, 'active'),

('Monte Bello Islands — Operation Hurricane',
 'monte-bello-atomic-tests',
 'October 3, 1952. Britain detonated its first nuclear weapon in an Australian lagoon. Australia was informed after.',
 'Operation Hurricane — Britain''s first nuclear weapons test — was conducted on 3 October 1952 in the lagoon of the Monte Bello Islands off the northwest coast of Western Australia. The weapon was detonated aboard HMS Plym, which was vaporised by the blast. The Australian government was informed of the test date only shortly in advance and was not consulted on the choice of location. The lagoon remained significantly radioactive for decades. A 1984 Royal Commission found that the British government had not adequately disclosed the extent of contamination to Australia and that Australian servicemen had been deliberately exposed to radiation to assess its effects on personnel. The Monte Bello Islands are now a marine park. The lagoon sediment remains measurably radioactive. Visitors are advised not to swim in it.',
 'One country conducted a nuclear test in another country''s territory and described this as cooperation. The distinction between the two words was not examined until thirty years later.',
 -20.4500, 115.5333, 'strange_history', 24, true, 'active'),

('Broome — The Flying Boat Massacre',
 'broome-flying-boats-1942',
 'March 3, 1942. Japanese Zeros attacked the harbour. Eighty-six people died in the water.',
 'On 3 March 1942, Japanese Zero fighters attacked Broome harbour, which was crowded with Allied flying boats evacuating refugees and military personnel from the Dutch East Indies. The attack lasted approximately twenty minutes. Eighty-six people died, many of them Dutch women and children who had survived the fall of Java only to be killed in the water of an Australian harbour. The full death toll was suppressed by wartime censorship and was not publicly confirmed until decades later. A significant number of the dead were never recovered. The flying boats — Dornier Do 24s, Consolidated PBYs — sank in the bay. Their wrecks are still there, visible at low tide. Broome did not hold a public memorial for the attack until 1992.',
 'A massacre hidden by wartime censorship and then not commemorated for fifty years is not forgotten. It is actively not-remembered, which is a different thing.',
 -17.9614, 122.2359, 'strange_history', 19, true, 'active'),

('Jandamarra — The Bunuba War',
 'jandamarra-bunuba-war',
 '1894 to 1897. A police tracker turned warrior. The Kimberley was not empty and uncontested.',
 'Jandamarra — known to colonists as Pigeon — was a Bunuba man who worked as a police tracker in the Kimberley before, in October 1894, shooting Constable William Richardson and releasing eighteen Bunuba prisoners the police had taken. For the next three years, Jandamarra led armed resistance against pastoral expansion in Bunuba country, using his knowledge of the landscape to evade repeated pursuit. He was killed in April 1897 near Tunnel Creek. The colonial press described him as a criminal. The Bunuba people describe him as a defender of country. His story was systematically excluded from official WA history for most of the twentieth century. A government-commissioned biography was published in 1995. Jandamarra''s name was added to the WA honour roll of military service in 2021, a century and a quarter after his death.',
 'The length of time it takes a government to acknowledge a war it was on the other side of is a measurement of something.',
 -17.4833, 124.5667, 'strange_history', 22, true, 'active'),

('Kalgoorlie — The 1934 Riots',
 'kalgoorlie-1934-riots',
 'A man died. A mob destroyed the "foreign" district. The papers called it understandable.',
 'On 29 January 1934, an Italian-born miner named Giovanni Zanetti died after an altercation with another man in Kalgoorlie. Within hours, crowds had assembled and began systematically destroying businesses and properties owned by Southern European migrants — Italians, Yugoslavs, and others — in what became two days of co-ordinated violence. Properties were burned, people beaten, and the "foreign" district of the Boulder-Kalgoorlie goldfields effectively destroyed. Police response was minimal. The Perth press described the riots in terms sympathetic to the rioters. No charges were laid for the property destruction. The underlying cause was economic: Southern European miners who were willing to work for lower wages during the Depression were resented by other workers. Giovanni Zanetti''s death was the pretext, not the cause.',
 'A riot that goes unprosecuted is not a breakdown of law. It is law operating as the community in power intends.',
 -30.7489, 121.4658, 'strange_history', 15, true, 'active'),

('Esperance — Skylab''s Last Resting Place',
 'skylab-esperance-1979',
 '1979. NASA''s space station fell apart over WA. The Shire of Esperance issued a littering fine.',
 'On 11 July 1979, NASA''s Skylab space station — 77 tonnes of aluminium, titanium, and electronics — re-entered the atmosphere and disintegrated over the Southern Ocean and Western Australia, scattering debris across a wide area east of Perth and around Esperance. Nobody was injured. NASA had miscalculated the re-entry trajectory. The Shire of Esperance issued NASA with a four-hundred-dollar fine for littering — a gesture that became internationally famous. NASA did not pay the fine for thirty years. In 2009 a California radio host, Stan Thornton, paid the fine on behalf of NASA after winning a competition. The largest surviving piece of Skylab is on display in the Esperance Museum. When asked, Esperance municipal authorities maintain that the payment of the fine by a third party was noted but not formally accepted as satisfying the original infringement.',
 'An institution that littered an entire country with a space station and then didn''t pay the fine for thirty years was not making a legal argument. It was making a political one.',
 -33.8611, 121.8919, 'strange_history', 29, true, 'active'),

('Murujuga — The Petroglyphs Industry Cannot Erase',
 'murujuga-petroglyphs',
 'One million rock engravings. The largest collection on earth. The gas plant is getting closer.',
 'Murujuga — the Dampier Archipelago on the WA Pilbara coast — contains over a million individual rock art engravings on the granite and basalt surfaces of the islands and peninsula, representing the largest concentration of petroglyphs on earth. The oldest are estimated to be over forty thousand years old; some researchers argue for significantly longer. The engravings include images of megafauna extinct for thousands of years, detailed astronomical observations, and human figures of extraordinary sophistication. Murujuga is adjacent to the North West Shelf liquefied natural gas processing facility, which has operated since the 1980s and whose atmospheric emissions have been demonstrated to accelerate the chemical weathering of the rock surfaces. In 2023 Murujuga was listed on the UNESCO World Heritage tentative list. The gas processing has not paused.',
 'The oldest art on earth is being chemically eroded by an industry that produces energy for cities that will one day be forgotten.',
 -20.6167, 116.7667, 'strange_history', 31, true, 'active'),

('Noonkanbah — The Drilling That Stopped',
 'noonkanbah-dispute-1980',
 '1980. The Yungngora people said no to the oil drill. The government escorted it in anyway.',
 'In 1980, the Western Australian government approved an American oil company to drill on Noonkanbah Station, which had been returned to the Yungngora Aboriginal community three years earlier under Federal land rights legislation. The Yungngora objected that the drilling site was on land sacred to their law. The government disputed this and, when the community blocked access, organised a convoy of trucks carrying drilling equipment through hundreds of kilometres of outback, escorted by police, past Aboriginal protesters and supportive trade union pickets. The drill found no oil. The site''s sacred status — the reason the Yungngora objected — was subsequently confirmed by anthropological survey. The drilling cost more than any oil it could have discovered was worth. The Yungngora have not been formally apologised to.',
 'The government spent more drilling an empty hole than the oil in it was worth, to make a point about who decides what happens on Aboriginal land.',
 -18.4952, 124.8581, 'strange_history', 18, true, 'active'),

('Shark Bay — The First English Landing',
 'shark-bay-dampier-1688',
 '1688. William Dampier landed here. His description of what he found shaped British attitudes for a century.',
 'On 5 January 1688, English buccaneer and naturalist William Dampier made the first recorded English landing on the Australian continent at what is now Shark Bay in Western Australia — eighty-two years before Cook. Dampier''s account of the voyage, published in 1697 as A New Voyage Around the World, included descriptions of the land and the Aboriginal people he encountered that were both observationally detailed and unflinchingly contemptuous. His description of the Malgana people as "the miserablest people in the world" became the dominant British characterisation of Australian Aboriginal people for generations, shaping Cook''s expectations, the terms of the 1788 settlement proclamation, and the doctrine of terra nullius. The bay where Dampier landed is a UNESCO World Heritage site. Dampier''s log is in the British Museum.',
 'One man''s contemptuous paragraph, written in 1688, shaped the legal framework under which an entire continent was colonised. Words do not have to be true to be consequential.',
 -25.5000, 113.5000, 'strange_history', 14, true, 'active'),

('Moore River — The Walk Home',
 'moore-river-stolen-generations',
 '1931. Three girls were taken to Moore River Settlement. They walked 1,600 kilometres back to Jigalong.',
 'In 1931, sisters Molly and Daisy Craig and their cousin Gracie Fields — aged fourteen, ten, and eight respectively — were removed from their family at Jigalong in the Pilbara under the Aboriginal Act 1905 and transported to the Moore River Native Settlement north of Perth, where children of mixed Aboriginal and European descent were held and trained for domestic service. The girls escaped after days at the settlement and walked 1,600 kilometres back to Jigalong along the rabbit-proof fence, guided by Molly Craig''s knowledge of country. A government tracker and a private investigator were sent after them. They were not caught. The journey took nine weeks. Gracie was recaptured along the way and returned to the settlement. Molly and Daisy reached Jigalong. Molly was later taken again. She escaped again. She was in her eighties when Doris Pilkington Garimara, her daughter, published the account in 1996.',
 'A fourteen-year-old who navigated 1,600 kilometres of unfamiliar country to return to her family did so because the alternative was staying somewhere the government had decided was better for her.',
 -31.0833, 115.5000, 'strange_history', 26, true, 'active');
