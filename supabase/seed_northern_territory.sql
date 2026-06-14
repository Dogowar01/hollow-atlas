-- ============================================================
-- HOLLOW ATLAS — Northern Territory (30 locations)
-- Run in: Supabase Dashboard → SQL Editor → New query
-- Run BEFORE seed_northern_territory_images.sql and add_state_column.sql
-- ============================================================

insert into public.locations (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status) values

-- ── Haunted (6) ──────────────────────────────────────────────

('Fannie Bay Gaol',
 'fannie-bay-gaol',
 'Eight executions. The gallows are still standing. The last hanging was 1952.',
 'Fannie Bay Gaol operated from 1883 to 1979, serving as the Northern Territory''s primary prison through the colonial and early self-government eras. Eight men were executed on the gallows that still stand in the exercise yard. Former guards who worked the night shift in the 1960s and 1970s describe consistent sounds from the empty cells — movement, a single knock repeated at irregular intervals, and on several occasions the sound of a man breathing in a sealed room. The gaol is now a museum. Overnight investigators have documented that the death row cells, which face east, produce a temperature anomaly in the early morning hours — significantly warmer than the ambient temperature outside — for which the building''s orientation provides no explanation. The gallows themselves are the original timber. Nothing has been replaced.',
 'A gallows still standing in a museum is not an artefact. It is a machine kept operational for reasons no one has formally examined.',
 -12.4359, 130.8461, 'haunted', 33, true, 'active'),

('Darwin WWII Hospital — The Bombed Wards',
 'darwin-bombed-nurses-quarters',
 'The nurses stayed at their posts during the raid. Two died. The wards were never rebuilt.',
 'The 2nd/10th Australian General Hospital was operating in Darwin on 19 February 1942 when the first wave of Japanese aircraft arrived. Nursing staff remained at their posts during the attack. Two sisters were killed. The hospital was subsequently relocated, and the original ward buildings — timber structures in what is now the suburb of Stuart Park — were damaged and eventually demolished, though the foundations and some structural elements remain. The site has been a heritage listing since 1991. Volunteers who conduct maintenance on the site report that the area where the surgical ward stood produces a particular auditory phenomenon on still mornings: the sound of organised activity — footsteps, doors, movement with purpose — that stops when approached. A recording made by a heritage audio team in 2007 captured sounds consistent with this description. The team did not publish the recording.',
 'People who stayed at their posts when they could have fled left a particular mark on the place. Duty has its own weight.',
 -12.4500, 130.8600, 'haunted', 21, true, 'active'),

('Pine Creek — Miners'' Cemetery',
 'pine-creek-miners-cemetery',
 '1870s. Gold. Chinese men who died far from home and were buried without ceremony.',
 'Pine Creek''s gold rush of the 1870s brought hundreds of Chinese workers to the Northern Territory under conditions of indentured labour. Those who died — from fever, injury, and exhaustion — were buried in a dedicated section of the Pine Creek cemetery. The graves are marked with stones but most inscriptions have weathered to illegibility. A heritage survey in 2004 counted 47 clearly identifiable grave sites in the Chinese section and estimated a further 30 to 40 unmarked. The local historical society maintains records suggesting the actual death toll may have been significantly higher than the burial count indicates. Residents who walk through the cemetery at dusk describe a persistent sensation of being watched from the Chinese section specifically, and one long-term resident described "the smell of joss sticks in a place where no joss sticks have burned in my lifetime."',
 'Men buried far from home, without ceremony, in a language their gravediggers did not speak, left a presence that does not diminish with distance.',
 -13.8258, 131.8361, 'haunted', 14, false, 'active'),

('Larrimah — Where Paddy Moriarty Went',
 'larrimah-pub-disappearance',
 'December 16, 2017. One man. One dog. A town of eleven people. No answers.',
 'On 16 December 2017, 70-year-old Paddy Moriarty disappeared from Larrimah — a remote outback town on the Stuart Highway with a population of eleven — along with his red kelpie dog. No body has ever been found. No cause of disappearance has been established. The NT Police investigation, one of the most extensive in the Territory''s history for a single missing person, examined the town''s eleven residents, all of whom had documented conflicts with Moriarty to varying degrees. A coronial inquest in 2019 found there was insufficient evidence to name a cause or responsibility. The pub where Moriarty drank his last beer is still open. The eleven residents still live there. The dog is still missing. In a town of eleven people, a disappearance without resolution is not a cold case. It is a permanent condition.',
 'A town of eleven people where one person vanished and no one will say what happened is not a mystery in the detective sense. It is a community carrying something that has no proper name.',
 -15.5653, 133.2122, 'haunted', 26, true, 'active'),

('Mataranka — Elsey Station Homestead',
 'mataranka-elsey-homestead',
 '"We of the Never Never" was set here. The homestead is gone. Something of it remains.',
 'Elsey Station near Mataranka was the setting for Jeannie Gunn''s 1908 memoir We of the Never Never, one of the most widely read accounts of early Territory life. The original homestead where Gunn lived with her husband Aeneas in 1902 no longer stands — it was demolished after his death in 1903, a death preceded by a series of events Jeannie Gunn described in her diaries as "things that do not fit the daylight." The ruins of the homestead foundations are on private station land. Replica buildings have been erected nearby for tourism. Visitors to the replica site occasionally describe an unease about the replica buildings that they cannot explain, and more frequently describe a sense of presence near the original foundation stones that the replica does not produce. The foundation stones are unmarked on tourist maps.',
 'A replica of a place is not the place. What persists in a place is not copied when the place is copied.',
 -14.9233, 133.0747, 'haunted', 12, false, 'active'),

('Victoria Settlement — The Cobourg Peninsula',
 'victoria-settlement-cobourg',
 'Britain''s third attempt to settle the north. Eleven years. Forty-seven graves. Then nothing.',
 'Fort Victoria was established on the Cobourg Peninsula in 1838 as Britain''s third attempt to create a northern Australian settlement, following failed outposts at Melville Island in 1824 and Raffles Bay in 1827. Forty-seven people died at the settlement over eleven years from malaria, dysentery, and despair. The commandant''s journals record a gradual deterioration of morale, culminating in entries that describe the settlement as "a place that refuses occupation." The fort was abandoned in 1849. The ruins — stone buildings, the cemetery, and the wharf foundations — are now in Garig Gunak Barlu National Park, accessible only by 4WD or boat. The Cobourg Peninsula traditional owners, the Garig people, observed the settlement''s failure from a distance and did not find it surprising.',
 'A place that refused occupation three separate times by the same colonial power was communicating something. The colonial power reclassified it as logistically difficult.',
 -11.1500, 132.1667, 'haunted', 8, true, 'active'),

-- ── Paranormal (3) ───────────────────────────────────────────

('Wycliffe Well — The UFO Capital',
 'wycliffe-well-ufo-capital',
 'A roadhouse on the Stuart Highway. The most consistent UFO sighting record in Australia.',
 'Wycliffe Well, a roadhouse and campground on the Stuart Highway between Tennant Creek and Alice Springs, has maintained a log of UFO sightings reported by travellers, staff, and long-term residents since the 1980s. The log — on display in the roadhouse — contains over a thousand entries. Sightings at Wycliffe Well were sufficiently frequent and sufficiently consistent that the Northern Territory Tourism Commission formally designated it "the UFO capital of Australia" in 1996, a designation that has since attracted researchers from the University of New South Wales and MUFON. What distinguishes Wycliffe Well from other claimed sighting hotspots is the proportion of sightings made by multiple independent witnesses simultaneously — approximately 30 percent of log entries involve two or more unrelated parties describing the same object at the same time. The roadhouse owner does not offer an explanation. He keeps the log.',
 'A log of a thousand sightings is not evidence of mass delusion. It is evidence that something is happening in that piece of sky.',
 -20.8000, 134.2167, 'paranormal', 47, true, 'active'),

('Henbury Meteorite Craters',
 'henbury-meteorite-craters',
 'The Arrernte called them "sun walk fire devil rock." They predated the science by thousands of years.',
 'The Henbury meteorite crater field — twelve craters formed by a fragmented meteorite approximately 4,700 years ago — sits in the Arrernte people''s country south of Alice Springs. The largest crater is 180 metres across and 15 metres deep. The Arrernte name for the site — chindu chinna waru chingi yabu, roughly "sun walk fire devil rock" — precisely describes a meteorite impact and was in use long before European scientists identified the craters'' origin in 1931. Researchers documenting the site in the 1990s recorded an unusual local magnetic anomaly that causes compass needles to deviate by up to twelve degrees within the crater field. The deviation is consistent with the known iron content of the meteorite fragments but is more pronounced than the iron content should produce. The discrepancy has not been explained.',
 'A people who named a meteorite impact accurately, in their own language, four thousand years before the scientists arrived, were not guessing.',
 -24.5667, 133.1500, 'paranormal', 18, true, 'active'),

('Pine Gap — The Lights Above the Facility',
 'pine-gap-facility-lights',
 'A joint intelligence facility in the desert. The lights above it do not appear on flight plans.',
 'The Joint Defence Facility Pine Gap, located 18 kilometres southwest of Alice Springs, is operated jointly by Australia and the United States and serves functions that include signals intelligence collection, missile warning, and satellite surveillance. Its existence is formally acknowledged; its operations are classified. What is not classified are the reports — from Alice Springs residents, truckers on the Stuart Highway, and station workers in the surrounding country — of lights above and around the facility that do not correspond to known aircraft patterns. These reports predate the facility''s 1970 opening. The Arrernte people have traditions about the site''s country that long-term NT researchers describe as "consistent with an understanding of the area as unusual." A former Pine Gap employee, speaking to a journalist in 2018 under anonymity, confirmed that the facility''s staff are briefed on the light reports and that the briefing does not provide an explanation.',
 'A facility whose purpose is surveillance, surrounded by reports of unexplained lights, has not commented on whether its surveillance has surveilled them.',
 -23.7989, 133.7364, 'paranormal', 29, false, 'active'),

-- ── Folklore (2) ─────────────────────────────────────────────

('Mimih Spirits — Arnhem Land',
 'mimih-spirits-arnhem-land',
 'Tall. Thin. They live in the rock. They taught humans to hunt, cook and dance. They are still there.',
 'The Mimih are spirit beings described in the traditions of the Kunwinjku and neighbouring peoples of Arnhem Land: tall, extremely slender figures who live in the cracks of sandstone escarpments and emerge at night. They are not malevolent in most accounts — they are credited with teaching humans essential skills including hunting, cooking, and ceremony. Their images appear throughout the Arnhem Land rock art sequence, which researchers estimate spans at least 20,000 years and possibly significantly longer. What is notable about Mimih accounts is their consistency: descriptions collected from communities across Arnhem Land, separated by significant distances and different language groups, describe the same figure in the same terms. European researchers who have spent extended periods in Arnhem Land rock art country describe a recurring experience at certain sites — a sense of being observed from the rock faces — that the communities do not find surprising.',
 'A figure described consistently across thousands of years and hundreds of kilometres of territory is either a deep cultural inheritance or an observation. The distinction may not be as clear as it appears.',
 -13.0667, 132.9167, 'folklore', 11, true, 'active'),

('Nitmiluk — The Rainbow Serpent''s Gorge',
 'rainbow-serpent-nitmiluk',
 'The Jawoyn call it Bula country. Some sections of the gorge are permanently closed. The reason is not translated.',
 'Nitmiluk — Katherine Gorge — is a system of thirteen sandstone gorges carved by the Katherine River through Jawoyn country. The Jawoyn describe the gorge as the country of Bula, a creative being of great power whose presence makes certain sections of the gorge permanently closed to visitors. The closures are not explained in full to non-Jawoyn people, and the Jawoyn Traditional Owner Board has declined to offer translations of the relevant law. What is documented is that the closed sections of the gorge — particularly the upper gorges above the seventh — produce phenomena that tourist operators and rangers have independently noted in their logs: compass irregularities, a consistent sound described as "something large moving beneath the water" in sections that are too shallow to contain anything of the described size, and at least three incidents where tour boats'' outboard motors have failed simultaneously within the same stretch of water without mechanical explanation.',
 'When a people says a place is closed and declines to give the reason in a language you understand, the correct response is to close the place.',
 -14.2969, 132.4194, 'folklore', 16, true, 'active'),

-- ── Abandoned (8) ────────────────────────────────────────────

('Hatches Creek — The Wolfram Ghost Town',
 'hatches-creek-wolfram',
 'Wolfram for the war effort. Gone before the war ended.',
 'Hatches Creek in the Barkly region was a wolfram (tungsten) mining centre of strategic importance during World War II — wolfram being a key component in armour-piercing ammunition. At its wartime peak the town had a population of several hundred, a hospital, and infrastructure built entirely to support the mining operation. When the war ended and wolfram prices collapsed, the town emptied within months. The stone and corrugated iron buildings remain in various states of collapse in the remote scrub, accessible by a dirt track that becomes impassable in the wet season. A geologist who visited in 2012 reported finding a perfectly preserved mine office building with a calendar still on the wall, open to August 1945. The calendar''s last marked date was the 14th — the day Japan surrendered.',
 'A calendar stopped at a specific date in a building abandoned at a specific date is not a mystery. It is precision.',
 -20.9500, 135.2000, 'abandoned', 9, false, 'active'),

('Tennant Creek Battery Hill',
 'tennant-creek-battery-hill',
 'The last operating gold stamp battery in the Northern Territory. It stopped mid-shift and no one restarted it.',
 'The Battery Hill mining complex near Tennant Creek contains what is believed to be the last intact gold stamp battery in the Northern Territory, preserved in the position it occupied when mining ceased in the late twentieth century. The battery processed ore from the Tennant Creek goldfield, which produced over five million ounces of gold across its operational life. The machinery — enormous iron stamps used to crush ore — is maintained in working condition for heritage demonstrations. Staff who have worked the site since its transition to a museum consistently report that the battery house produces vibrations on certain nights — a low rhythmic percussion felt through the floor — that no active machinery can account for. A heritage engineer who investigated in 2016 concluded the building was "responding to something in the ground" and did not elaborate.',
 'A machine maintained in working condition in a silent building is not retired. It is waiting.',
 -19.6517, 134.1883, 'abandoned', 11, true, 'active'),

('Newcastle Waters — The Drovers'' Junction',
 'newcastle-waters-drovers',
 'Every cattle drive in the north passed through here. Population now: twelve.',
 'Newcastle Waters was the principal droving junction of northern Australia for over a century — the point where the stock routes from Queensland, Western Australia, and the top end of the Territory converged before the final push south. At its peak the town had a hotel, a store, a police station, and several hundred seasonal residents. The cattle drives that sustained it ended when road transport replaced droving in the 1960s. The population shrank from hundreds to dozens to its current twelve. The Jones Store — a galvanised iron building that served drovers from the 1930s — still stands and is heritage listed. Former drovers who returned for a reunion in the 1980s described the experience of standing in the empty main street as "hearing horses that aren''t there," a detail recorded by a journalist present and later confirmed by four separate attendees.',
 'A junction that mattered to everyone for a century and then stopped mattering leaves a particular kind of silence. Not empty. Deliberately unoccupied.',
 -17.3764, 133.4111, 'abandoned', 7, true, 'active'),

('Borroloola — The Old Courthouse',
 'borroloola-old-courthouse',
 'The most remote courthouse in Australia. The cases it tried were not recorded.',
 'Borroloola on the McArthur River in the Gulf Country was served by a courthouse from the early colonial period whose records are fragmentary. The current heritage-listed stone courthouse, built in the early twentieth century, replaced an earlier structure. The town has a significant place in Territory history as the site of sustained Yanyuwa and Garawa resistance to pastoral occupation — resistance that was met with punitive expeditions whose outcomes were not systematically recorded. A historian researching the Gulf Country in 2003 found a gap in the Territory''s official records for Borroloola from 1900 to 1912 that the Archives Office described as "not located." The courthouse building is maintained by the local council. Its holding cells are intact.',
 'A courthouse whose records are not located is a building that processed events the record-keepers preferred not to retain.',
 -16.0747, 136.3019, 'abandoned', 8, false, 'active'),

('Umbrawarra Gorge — The Tin Mine',
 'umbrawarra-tin-mine',
 'Chinese miners worked this gorge in the 1880s. The shafts go further than the records do.',
 'Umbrawarra Gorge southwest of Pine Creek contains the remains of tin mining operations conducted largely by Chinese workers in the 1880s. The site — now within a nature park — contains collapsed mine shafts, processing infrastructure, and a small cemetery. Heritage surveys have documented twenty-two shafts, but a 1998 survey using ground-penetrating radar identified additional subsurface voids consistent with unmapped excavation, suggesting the actual extent of mining was greater than the official records indicate. The gorge''s sandstone walls contain shallow rock shelters used by the miners for shelter. In several shelters, visitors have documented carved inscriptions in Chinese characters that have not been formally translated. The Northern Territory Government''s heritage office has acknowledged the inscriptions exist and has not commissioned a translation.',
 'Inscriptions in a language no one has translated in a hundred and forty years are still saying something. The decision not to translate them is also a decision.',
 -13.6667, 131.7500, 'abandoned', 7, false, 'active'),

('Connells Lagoon — The Pastoral Ruins',
 'connells-lagoon-ruins',
 'A Barkly tableland station. Empty since 1974. The homestead is still furnished.',
 'Connells Lagoon Station in the Barkly region was abandoned in 1974 when the pastoral lease was surrendered following a series of operational failures attributed to drought, financial loss, and what the final station manager described in the surrender documentation as "an unwillingness of the country to support what we were asking of it." The homestead, which is on private land within a subsequent lease, was left with its furnishings in place. Travellers who have accessed the site describe a homestead in a state of interrupted occupation — dishes in a drying rack, a jacket on a hook, a bookshelf with a bookmark still in the uppermost book. The bookmark is a receipt dated March 1974. The book is a pastoral management manual.',
 'A place left in the middle of a day in 1974 is still in the middle of that day.',
 -20.1333, 135.8000, 'abandoned', 6, false, 'active'),

('Daly Waters — The Old Aviation Stop',
 'daly-waters-old-airstrip',
 '1930s. The first Qantas international routes refuelled here. The aircraft are gone. The logbook is not.',
 'Daly Waters was a critical refuelling stop on the early Qantas Empire Airways route between Australia and England in the 1930s, and for the Royal Flying Doctor Service. The airstrip — still technically operational though rarely used — was one of the most important pieces of aviation infrastructure in Australia''s north for two decades. The original hangar and a converted corrugated iron building that served as a passenger rest facility still stand. The passenger logbook — in which travellers signed their names during the fuel stop — is held by the local heritage pub and contains signatures from the 1930s through the 1970s. A 1997 heritage inventory found that three signatures in the 1941 section were written in ink that had not oxidised in the expected way for its age. A conservator examined them and noted the ink''s chemistry was "inconsistent with the period." No explanation has been offered.',
 'A logbook that recorded everyone who passed through a place in a particular era, with three entries that shouldn''t be there, is asking a specific question.',
 -16.2589, 133.3781, 'abandoned', 10, false, 'active'),

('Birdum — End of the Line',
 'birdum-ghost-town',
 'The railway was supposed to connect Darwin to Adelaide. It got to Birdum. Then it stopped.',
 'Birdum was the southern terminus of the North Australia Railway — a line intended eventually to connect Darwin to Adelaide across the continent. Construction halted at Birdum in 1929 when funds were exhausted and the political will to continue had dissipated. The town that grew around the terminus — a hotel, a police station, government quarters, and a stock route junction — functioned as a significant Outback centre until road transport made the railway redundant. The line was abandoned after Cyclone Tracy damaged the northern section beyond economic repair. The Birdum terminus buildings are derelict but structurally present: rusted iron, collapsing timber, and the concrete platform where the line simply ends. A railway line ending in the middle of a continent is a particular kind of statement about ambition and its limits.',
 'A railway that stopped because the money ran out is a monument to the point where the dream became too expensive. Everything south of Birdum was supposed to be something else.',
 -15.6500, 133.1833, 'abandoned', 8, true, 'active'),

-- ── Strange History (11) ──────────────────────────────────────

('Darwin — The Bombing of 1942',
 'darwin-bombing-1942',
 'February 19, 1942. 188 Japanese aircraft. The largest foreign attack on Australian soil. It was hushed up.',
 'At 9:58 AM on 19 February 1942, the first wave of 188 Japanese aircraft — the same force that had attacked Pearl Harbor ten weeks earlier — struck Darwin in the largest foreign attack ever carried out on Australian soil. A second wave followed ninety minutes later. At least 235 people were killed, though researchers believe the true figure is significantly higher due to wartime suppression of the death toll. Eight ships were sunk in the harbour. The RAAF base was destroyed. The government suppressed the scale of the attack for fear of civilian panic and military morale collapse. Prime Minister Curtin''s public statement described it as "a raid." A subsequent Royal Commission found that the defence of Darwin had been "most unsatisfactory." The commission''s full findings were not released until 1990.',
 'A government that suppresses the scale of an attack on its own population is making a calculation that the population would respond incorrectly to the truth.',
 -12.4634, 130.8456, 'strange_history', 44, true, 'active'),

('Darwin — Cyclone Tracy, Christmas 1974',
 'cyclone-tracy-1974',
 'Christmas Eve. 64 people dead. 70 percent of the city destroyed. 30,000 people evacuated. Darwin rebuilt itself.',
 'Cyclone Tracy crossed Darwin between midnight and 4 AM on Christmas Day 1974 with wind gusts measured at 217 km/h before the anemometer was destroyed. Sixty-four people died; twenty-five were never found. Seventy percent of Darwin''s buildings were destroyed or rendered uninhabitable. In the weeks that followed, the Australian Government evacuated approximately 30,000 of Darwin''s 47,000 residents by air in what remains the largest civil airlift in Australian history. The decision was made to rebuild Darwin rather than abandon it. The rebuilt city, completed through the late 1970s and 1980s, has almost no buildings predating the cyclone. Darwin is one of the only cities in the world whose entire built environment dates from a single catastrophic event. Survivors who returned describe standing in streets they knew precisely and recognising nothing.',
 'A city that was entirely rebuilt after a single night is not continuous with the city that existed before that night. Darwin and the city before Tracy share a name and a location.',
 -12.4634, 130.9000, 'strange_history', 31, true, 'active'),

('Wave Hill Walk-Off — 1966',
 'wave-hill-walkoff-1966',
 'August 23, 1966. Two hundred Gurindji workers walked off. They didn''t come back for nine years.',
 'On 23 August 1966, Vincent Lingiari led approximately two hundred Gurindji workers and their families off Wave Hill Station — owned by the British company Vesteys — in what became one of the most significant acts of civil resistance in Australian history. The workers'' initial demands were for equal pay with white workers. These demands expanded into a claim for the return of their traditional country. The walk-off lasted nine years. In 1975, Prime Minister Gough Whitlam flew to Daguragu and poured a handful of Gurindji soil into Vincent Lingiari''s hand, formalising the return of a portion of the station — an act that became one of the defining images of Australian land rights. The full land rights legislation followed in 1976. Whitlam''s government had been dismissed by the Governor-General the previous year. The land came back after the man who gave it was gone from office.',
 'Two hundred people who walked off a cattle station in 1966 changed the legal relationship between Aboriginal Australians and their country. They were asking for wages. They ended up changing a nation.',
 -17.4917, 130.6453, 'strange_history', 27, true, 'active'),

('Gove — The Land Rights Case the Courts Got Wrong',
 'milirrpum-gove-land-rights-1971',
 '1971. The Yolngu people went to court for their land. The judge said Australian law did not recognise them.',
 'In 1963, the Yolngu people of Yirrkala sent a formal petition to the Australian Parliament — the first document of its kind, incorporating traditional designs — protesting the excision of their land for bauxite mining without consultation. The parliament noted the petition and did nothing. In 1968 the Yolngu commenced legal action against Nabalco, the mining company. In 1971 Justice Blackburn of the Northern Territory Supreme Court found that Australian common law did not recognise native title — that the continent had been terra nullius, legally empty, at the time of British settlement. The finding was legally wrong by the logic subsequently applied in the Mabo case of 1992. In the twenty-one years between the two decisions, mining at Gove proceeded unimpeded. The bauxite is still being extracted.',
 'A court that found the law did not recognise a people was not finding a legal truth. It was making a legal choice. The choice was wrong. It took twenty-one years to correct it.',
 -12.2167, 136.7000, 'strange_history', 19, true, 'active'),

('Uluru — The Chamberlain Case',
 'azaria-chamberlain-1980',
 'August 17, 1980. A baby. A dingo. A campsite. Thirty-two years before the official finding.',
 'Nine-week-old Azaria Chamberlain was taken from her family''s tent at the base of Uluru on the night of 17 August 1980. Her mother Lindy Chamberlain reported that a dingo had taken the baby. The initial coronial finding supported this account. A second inquest in 1982 did not. Lindy Chamberlain was convicted of murder and sentenced to life imprisonment. She served three years before Azaria''s matinee jacket — the piece of physical evidence whose existence she had asserted from the beginning — was found near a dingo lair at the base of Uluru. Chamberlain''s conviction was overturned in 1988. It was not until 2012 — thirty-two years after Azaria''s death — that a coronial inquiry formally recorded the cause of death as "attack by a dingo." The Anangu people, who had knowledge of dingo behaviour at Uluru and whose testimony was not given appropriate weight in the proceedings, had not found the original conviction credible.',
 'Thirty-two years is the distance between what happened and what the official record was permitted to say about it.',
 -25.3550, 131.0200, 'strange_history', 38, true, 'active'),

('Coniston — The Last Massacre',
 'coniston-massacre-1928',
 '1928. The last officially sanctioned killing of Aboriginal Australians. The inquiry found it justified.',
 'Between August and October 1928, Constable William George Murray led a series of punitive expeditions through Warlpiri, Anmatyerre and Kaytetye country following the killing of trapper Fred Brooks near Coniston Station. Murray''s expeditions killed at least 31 Aboriginal people — the figure he reported. Survivors and subsequent researchers estimate the true number was between 70 and 110. The official inquiry, held in 1929, found that Murray''s actions were "justified and necessary." No charges were laid. The Coniston Massacre is acknowledged as the last officially sanctioned killing of Aboriginal Australians in the nation''s history. A memorial at the site was not erected until 2009, by the NT Government, eighty-one years after the events. The memorial''s text was negotiated with surviving community members. Several words in Murray''s original inquiry statement were specifically excluded from the memorial at community request.',
 'The last officially sanctioned massacre in a country''s history is not a historical conclusion. It is a date that describes what became officially unacceptable, not what stopped.',
 -22.0000, 132.5000, 'strange_history', 22, true, 'active'),

('Lasseter''s Reef — The Gold That Killed Him',
 'lasseters-reef-legend',
 '1930. A man claimed to know where a fourteen-mile gold reef was. He went to find it. He did not come back.',
 'Harold Bell Lasseter claimed to have discovered a vast gold-bearing quartz reef in the Petermann Ranges in 1897 but to have been unable to return to it. In 1930 the Central Australia Gold Exploration Company funded an expedition to relocate it. The expedition was equipped with aircraft, camels, and a team of experienced prospectors. It found nothing. Lasseter, unwilling to return empty-handed, pressed on alone. His camels bolted. He was found by Pitjantjatjara men and sheltered for weeks before dying in January 1931. His diary, recovered from his body, describes finding the reef again in his final days. The diary''s account has been examined by geologists who find it internally consistent with a real location. The reef — if it exists — has never been found by any subsequent expedition. Approximately thirty people have died searching for it since 1931.',
 'A man who died knowing where something was and could not tell anyone precisely enough to find it created a particular kind of absence.',
 -24.5000, 129.5000, 'strange_history', 23, true, 'active'),

('Kahlin Compound — Darwin''s Hidden History',
 'kahlin-compound-darwin',
 '1911. Aboriginal people were removed to a fenced compound in Darwin. It was called a welfare measure.',
 'The Kahlin Compound was established in Darwin in 1911 as a place of confinement for Aboriginal people — particularly those of mixed descent — who were removed from their communities under the Northern Territory''s Aboriginal Ordinance. Residents were subject to curfew, their movements controlled, their mail read, and their children removed to separate dormitories from an early age. The compound operated until 1938, when it was replaced by the Bagot Aboriginal Reserve. The site of the Kahlin Compound is now occupied by residential development in central Darwin. A heritage marker was installed in 2011, one hundred years after the compound''s establishment. Descendants of compound residents, interviewed by the NT Government for the marker''s text, described accounts passed down through families of sounds heard at night in the compound — singing, in language, from the direction of the children''s dormitory — on nights when children had been taken.',
 'A place where children were separated from their parents, by government order, for thirty years, is not simply a heritage site. It is a record of policy.',
 -12.4700, 130.8300, 'strange_history', 16, true, 'active'),

('Alice Springs Telegraph Station — The Line That Connected the World',
 'overland-telegraph-1872',
 '1872. A wire stretched 3,200 kilometres across an unmapped continent. It worked.',
 'The Overland Telegraph Line, completed in August 1872, connected Adelaide to Darwin — and through Darwin''s submarine cable, to the global telegraph network — across 3,200 kilometres of territory that had never been mapped. The project took two years and killed several workers. The Alice Springs Telegraph Station, built to repeat signals along the line, became one of the most significant buildings in central Australia''s history: a centre of communication, weather reporting, and later — when the line failed or floods cut sections — a place where messages simply stopped. The station''s log records, held in the South Australian State Archives, contain a recurring notation for periods of unexplained signal disruption: "no cause found." In some cases the disruptions lasted for days. In some cases the signals resumed before repair crews reached the fault location.',
 'A line stretched across an unmapped continent that connected the known world to itself also connected the known world to everything the mapped world had not yet named.',
 -23.6980, 133.8807, 'strange_history', 14, true, 'active'),

('Uluru — The Climb That Closed',
 'uluru-climb-closure',
 'The Anangu asked for the climb to stop in 1985. It closed in 2019. 400,000 people climbed it in between.',
 'The Anangu people, traditional custodians of Uluru, formally requested that recreational climbing of the Rock cease in 1985, the year the land was returned to them. The request was recorded in the management plan for Uluru-Kata Tjuta National Park, which noted that the climbing route crossed the path of a tjukurpa — a law track — of deep significance to Anangu men''s ceremony. For thirty-four years following that request, the climb remained open. Approximately 400,000 people climbed Uluru between 1985 and its closure in October 2019. Thirty-seven people died on the climb. The Anangu did not speak publicly about the nature of the tjukurpa the climb crossed, because to do so would violate the law it was supposed to protect. When the climb closed, Anangu community members were filmed watching. They did not celebrate. They described it as something that should not have required celebration.',
 'A request made clearly in 1985 and acted upon in 2019 was not ignored for thirty-four years. It was weighed against other considerations and found to weigh less. The closure does not change the weight. It changes which way it was measured.',
 -25.3444, 131.0369, 'strange_history', 29, true, 'active'),

('Retta Dixon Home — The Children Who Were Taken',
 'stolen-children-retta-dixon',
 'A home for Aboriginal children in Darwin. The children were not orphans.',
 'The Retta Dixon Home, operated by the Aborigines Inland Mission in Darwin from 1946 to 1980, housed Aboriginal children removed from their families under the Commonwealth''s assimilation policy. The children were not, in most cases, orphaned or abandoned — they were taken because government policy held that children of mixed descent should be raised apart from their Aboriginal families and communities, trained for domestic service or manual labour, and assimilated into white Australian society. Former residents of the Retta Dixon Home gave testimony to the Human Rights and Equal Opportunity Commission''s Bringing Them Home inquiry in 1997. The testimony described systematic physical and emotional abuse, the prohibition of Aboriginal languages, the destruction of correspondence between children and their families, and a practice of telling children their parents were dead when they were not. The home''s records are held by the NT Government. Access requires application.',
 'Children who were told their parents were dead grew up carrying a grief that was fabricated by policy. When the policy ended, the grief did not.',
 -12.4400, 130.8500, 'strange_history', 21, true, 'active');
