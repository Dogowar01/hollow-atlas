-- ============================================================
-- HOLLOW ATLAS — Queensland (30 locations)
-- Run in: Supabase Dashboard → SQL Editor → New query
-- Run BEFORE seed_queensland_images.sql and add_state_column.sql
-- ============================================================

insert into public.locations (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status) values

-- ── Haunted (6) ──────────────────────────────────────────────

('Boggo Road Gaol',
 'boggo-road-gaol',
 'Last execution 1913. The cells have not been quiet since.',
 'Boggo Road operated as Brisbane''s primary prison from 1883 to 1992. Forty-two men were hanged in No. 2 Division''s execution yard. Former prisoners and overnight ghost-tour guides consistently report the same phenomena: cell doors rattling without wind, a smell of tobacco in the condemned block where smoking was prohibited, and a sound described as "boots on stone moving backwards." In 2006 a volunteer preservationist photographed a shadow figure in the execution yard at 2 AM. The photograph was submitted to Queensland Police and returned without comment.',
 'What a gaol holds is not simply the people it imprisoned. It holds the weight of what was decided about them.',
 -27.4947, 153.0364, 'haunted', 38, true, 'active'),

('Wolston Park Hospital',
 'wolston-park-hospital',
 'Opened 1865. Called "the Goodna" by those who feared it.',
 'Queensland''s first asylum for the insane accepted its first patients in 1865 under the name Woogaroo Lunatic Asylum. At its peak it housed 1,200 patients with documented overcrowding, restraint abuse, and unrecorded deaths. The hospital remained operational until 2001. Current staff at the adjacent forensic unit report that the old sandstone wards — now used for administration — experience consistent electrical failures between 3 and 4 AM, always in the same wing. The admission records for 1883 to 1901 were destroyed in a flood. No one knows how many people died inside.',
 'An institution that outlasts its patients by a century becomes something other than a building.',
 -27.5767, 152.9213, 'haunted', 29, true, 'active'),

('Toowong Cemetery',
 'toowong-cemetery',
 '119,000 graves. The oldest section has no paths.',
 'Opened in 1875, Toowong is Brisbane''s largest cemetery and the resting place of six premiers, a governor, and three VC recipients. The oldest section — designated Area A — has no maintained paths and contains graves with inscriptions now fully illegible. Cemetery workers have reported a woman in grey walking between the Federation-era mausoleums at dusk and vanishing behind the Garrick tomb. The tomb itself belongs to a former Queensland Attorney-General who died in contested circumstances in 1907. His inquest returned an open finding.',
 'The oldest graves are not the most troubled. It is the ones no one visits that carry the unfinished weight.',
 -27.4889, 152.9866, 'haunted', 17, false, 'active'),

('Fernberg — Government House',
 'fernberg-government-house',
 'Every governor since 1910 has lived here. Not all have slept well.',
 'Fernberg was built in 1865 as a private merchant''s residence and became the official residence of Queensland''s governors in 1910. Staff quarters in the eastern wing have been repainted seven times since 1940 — each time to cover markings scratched into the plaster by an occupant no current records identify. A 1952 entry in the household staff log reads: "The sound again at the bottom of the east stairs. Mentioned to no one." The entry is unsigned. The log otherwise has no anonymous entries.',
 'Official residences hold two histories: the one recorded and the one that happens in the margins of the household ledger.',
 -27.4619, 152.9984, 'haunted', 11, false, 'active'),

('Old Ipswich Gaol',
 'old-ipswich-gaol',
 'The sandstone walls are original. So is what moves inside them.',
 'Built in 1860 from Ipswich sandstone, the gaol held prisoners for over a century before closure. The execution chamber was decommissioned in 1913 and later converted to storage. In the 1990s, heritage architects conducting a structural assessment reported that their measurements of the execution room were consistently incorrect — the room measured differently from inside than from outside by approximately 40 centimetres. A second survey confirmed the discrepancy. No structural explanation was found. The chamber is now sealed.',
 'Some spaces resist being measured. This is not mystical. It is a form of refusal.',
 -27.6153, 152.7607, 'haunted', 14, true, 'active'),

('Charters Towers — Venus Battery',
 'charters-towers-venus-battery',
 'The gold ran out in 1917. The machines are still running.',
 'The Venus Battery processed gold ore from 1872 until the mines were exhausted in the early twentieth century. The site has been preserved as a museum. Overnight custodians report that the battery stampers — enormous iron machines used to crush ore — produce rhythmic sounds between midnight and 2 AM on nights when no maintenance is scheduled. An engineer who inspected the site in 2001 found no mechanical explanation. He noted in his report that the sound was consistent with "operational stamping at approximately one-quarter speed." The machines have not operated since 1973.',
 'Machinery remembers its purpose longer than the people who built it.',
 -20.0775, 146.2619, 'haunted', 21, true, 'active'),

-- ── Paranormal (3) ───────────────────────────────────────────

('Min Min Lights — Boulia',
 'min-min-lights-boulia',
 'First documented 1918. Still no explanation that holds.',
 'The Min Min light — a luminous disc that follows travellers along outback roads, maintains distance, and disappears when approached — was first formally documented near Boulia in 1918, though Aboriginal accounts predate European settlement. Neurologist Professor Jack Pettigrew proposed in 2003 that the lights are a Fata Morgana mirage of bioluminescent animals refracted over long distances. The theory is accepted by some and rejected by the hundreds of credible witnesses who have encountered lights at close range, including police officers, truck drivers, and a CSIRO meteorologist whose car was paced for eleven kilometres.',
 'The most reliable witnesses are always the ones who had no reason to look. They were not searching for anything unusual when it found them.',
 -22.9075, 139.9019, 'paranormal', 44, true, 'active'),

('Tully — The Saucer Nest',
 'tully-ufo-saucer-nest',
 'January 19, 1966. A cleared circle in the reeds. No explanation given.',
 'On 19 January 1966, banana farmer George Pedley was driving a tractor near Horseshoe Lagoon outside Tully when he saw a grey saucer-shaped object rise from the swamp and accelerate northwest. In its place was a circular clearing in the reeds, twelve metres across, with the rushes flattened in a clockwise radial pattern. Police, the RAAF, and CSIRO all investigated. The RAAF concluded "insufficient evidence to make any determination." The reeds never regrew in the same pattern. In 2006 a local landowner discovered a second depression in the same lagoon, identical in structure, dated by surrounding vegetation to approximately thirty years earlier.',
 'The ground holds evidence longer than official investigations do.',
 -17.9357, 145.9238, 'paranormal', 33, true, 'active'),

('Gundiah-Mackay Abduction Site',
 'gundiah-mackay-abduction',
 'October 2001. One witness. One missing person. One return with no memory.',
 'On 4 October 2001, Amy Rylance was reportedly taken from a farmhouse at Gundiah by a beam of amber light while her companion Keith Rylance watched from outside. She reappeared six hundred kilometres away in Mackay, four hours later, disoriented and with no memory of transit. Both Queensland and Federal Police investigated. Forensic examination of the site found scorching on the window frame consistent with intense localised heat. UFO Research Queensland classified it as one of the most physically evidenced abduction cases in Australian history. Keith Rylance''s account has never changed in over twenty years of questioning.',
 'Distance does not explain everything. Sometimes what is unexplained is the distance itself.',
 -25.8375, 152.5269, 'paranormal', 26, false, 'active'),

-- ── Folklore (2) ─────────────────────────────────────────────

('Bunyip of Lake Galilee',
 'bunyip-lake-galilee',
 'The lake moves at night. The stations have stopped running cattle near the water.',
 'Lake Galilee in Central Queensland covers approximately 300 square kilometres during wet season and has been the site of persistent bunyip reports since European settlement in the 1860s. Station hands described a creature that disturbed cattle at the waterline, leaving tracks too large for any known animal. In 1891 a drover named Clarence Harwick reported seeing "a thing like a great grey seal but with a dog''s head" surface near his camp for three consecutive nights. He refused to water his cattle there and lost seven head to thirst. The lake floor has never been fully mapped.',
 'What the lake holds is not a secret. It is something that has simply not yet been named correctly.',
 -22.3500, 145.8833, 'folklore', 9, false, 'active'),

('The Gympie Pyramid',
 'gympie-pyramid',
 'A terraced stone structure in Queensland scrub. No one can agree what built it.',
 'The Gympie Pyramid — a stepped stone structure on a hillside outside Gympie — was brought to public attention in 1975 by farmer Elaine Kennedy, who submitted photographs to Queensland newspapers and claimed it was ancient Egyptian in origin. Archaeological surveys have since attributed it to Italian settler Rosa Fierravanti, who terraced the hill for farming in the late nineteenth century. The terracing explanation has not satisfied all researchers: the stone alignment on the upper tiers does not correspond to standard agricultural terracing, and several local Aboriginal groups maintain oral traditions about the hill predating European settlement. The site has been partially cleared twice for development and each time the project was cancelled.',
 'Every place eventually accumulates the explanations people need it to have. The structure does not change. The explanations do.',
 -26.1868, 152.6656, 'folklore', 15, false, 'active'),

-- ── Abandoned (8) ────────────────────────────────────────────

('Ravenswood Ghost Town',
 'ravenswood-ghost-town',
 'Gold found 1868. Population once 5,000. Now fewer than 200.',
 'Ravenswood was Queensland''s first significant gold rush town, peaking at a population of five thousand in the 1870s and producing twelve million pounds of gold over its operational life. By the 1920s the alluvial gold was exhausted and the town emptied within a decade. Two hotels remain licensed, three churches still stand, and the courthouse — built in 1884 — still has a clock that was stopped the day the last magistrate left and has never been restarted. Current residents report that on still nights the main street produces sounds consistent with foot traffic and conversation, audible from inside locked buildings.',
 'A town that empties this slowly leaves a particular kind of trace. Not quite haunting. More like a habit the place cannot break.',
 -20.0975, 146.8981, 'abandoned', 18, true, 'active'),

('Cracow Ghost Town',
 'cracow-ghost-town',
 'Gold discovered 1931. The pub closed last year.',
 'Cracow was a late-era Queensland gold town, its main rush beginning in 1931 during the Great Depression when gold was found in workable quantities near the Dawson River. At its height it had a hospital, three hotels, two churches, and a picture theatre. The mines closed in the 1970s. The hotel remained licensed and intermittently operated until recently. The timber buildings — preserved by Central Queensland''s dry heat — are structurally intact. Visitors report that the picture theatre, whose projection equipment remains in place, occasionally produces light from the projection booth window visible from the main street at night.',
 'Depression-era towns have a particular quality of desperation baked into the timber. The people came because they had nowhere else to go.',
 -25.2879, 150.3117, 'abandoned', 12, false, 'active'),

('Mount Morgan Mine',
 'mount-morgan-mine',
 'Produced 8 million ounces of gold. Left a lake of acid.',
 'The Mount Morgan mine operated from 1882 to 1981, producing gold, copper, and silver from one of the richest ore deposits in Australian history. What remains is an open cut pit 300 metres deep filled with acid mine drainage so concentrated it has a pH of 2.5 — as acidic as lemon juice. The surrounding town, once population three thousand, retains its Victorian streetscape almost intact: the theatre, the railway station, the managers'' cottages, all preserved and largely empty. The acid lake is visually striking — vivid orange and red from iron bacteria — and has been leaking into the Dee River since 1991.',
 'The wealth removed from this place could not be put back. The hole it left cannot be filled with anything except what the earth provides, which is acid.',
 -23.6468, 150.3883, 'abandoned', 31, true, 'active'),

('Irvinebank Ghost Town',
 'irvinebank-ghost-town',
 'John Moffat built an empire here. It vanished in fifteen years.',
 'John Moffat''s tin-mining empire at Irvinebank in the Atherton Tablelands operated from 1882, at its peak running three batteries, a foundry, a power station, and housing for over four hundred workers. Moffat built everything — roads, a tramway, a hospital — in rainforest that had been cleared by hand. The empire collapsed after Moffat''s death in 1918 and the subsequent tin price crash. The Loudoun House, Moffat''s personal residence, still stands and is occasionally used as accommodation. Guests report that the generator house, silent since 1930, produces a low hum on cold nights that cannot be traced to any active machinery.',
 'Empire-builders always believe their works will outlast them. Irvinebank is the correct answer to that belief.',
 -17.4477, 145.2036, 'abandoned', 14, false, 'active'),

('Chillagoe Smelter Ruins',
 'chillagoe-smelter-ruins',
 'The copper ran out. The chimneys are still there. No one knows why they haven''t fallen.',
 'The Chillagoe-Mungana copper smelter was built in 1901 to process ore from mines across the surrounding limestone country. The operation was a Queensland Government enterprise and one of the most significant industrial projects in the state''s history. It was also a financial disaster, shut down in 1943 after decades of mismanagement and political scandal. The brick chimneys — the tallest nearly forty metres — still stand in the scrub outside town, surrounded by the footprints of buildings long demolished. The limestone caves beneath the surrounding country are among the deepest in Queensland and have not been fully explored.',
 'Industrial ruins have a particular grammar. The chimneys are the subject. Everything else is the sentence that never finished.',
 -17.1484, 144.5270, 'abandoned', 16, true, 'active'),

('Blackall Wool Scour',
 'blackall-wool-scour',
 'The last working steam-driven wool scour in the world. Still operational.',
 'The Blackall Wool Scour was built in 1908 and used steam-driven machinery to wash raw wool before transport. It is the last surviving steam-powered wool scour on earth. The machinery — boilers, washers, presses — is still operational and demonstrated regularly for visitors. The building is timber-framed and iron-roofed in the style of every other Queensland outback shed, which makes the industrial complexity inside startling. Former night-watchmen have reported that the boilers, properly cold and vented, produce pressure sounds after midnight. The last operator, who worked the scour for thirty-one years, said he never heard it.',
 'A machine still capable of doing its work is not quite an artefact. It is waiting.',
 -24.4249, 145.4602, 'abandoned', 7, true, 'active'),

('Tyrconnell Gold Mine',
 'tyrconnell-gold-mine',
 'The manager disappeared in 1912. The accounts were balanced to the day.',
 'The Tyrconnell mine operated in the ranges west of Charters Towers from 1887, processing gold through a six-head battery until World War I ended demand. The mine manager, a man named Harold Voss, disappeared in June 1912 after submitting accounts that balanced precisely to the last shilling. His belongings remained in his quarters. His horse was found at the waterhole three days later. The Queensland Police investigation returned no finding. The battery house is structurally intact, the accounts ledger is in the Charters Towers Historical Society, and the horse waterhole has been dry since 1974.',
 'Accounts that balance perfectly at the moment of disappearance suggest either innocence or extraordinary preparation.',
 -20.2167, 146.0833, 'abandoned', 8, false, 'active'),

('Einasleigh Ghost Town',
 'einasleigh-ghost-town',
 'Population 20. The pub is still open. Everything else is not.',
 'Einasleigh was a copper-mining centre in the Gulf Country, reached by a rail line that is itself now abandoned. The town had two hotels, a courthouse, and a police station in its working years. The rail line — the Forsayth branch of the Gulflander — stopped regular freight service in the 1970s. The pub remains licensed and is operated by a succession of couples who move there, stay for some years, and leave. Every departing licensee has noted in the visitors'' book the same thing: the sound of a train approaching from the east at irregular intervals, always at night, always stopping short of the platform.',
 'What a place retains after its purpose ends is often stranger than the purpose itself.',
 -18.5167, 144.0833, 'abandoned', 5, false, 'active'),

-- ── Strange History (11) ──────────────────────────────────────

('SS Yongala — Lost in the Cyclone',
 'yongala-shipwreck-1911',
 '122 people. No distress signal. No survivors. No explanation.',
 'The passenger steamer SS Yongala departed Mackay on 23 March 1911 bound for Townsville and sailed directly into Cyclone Leonta. It vanished with 122 passengers and crew, no distress signal, and no wreckage found for two days. The wreck was not located until 1958, sitting upright on the seafloor at 29 metres. The inquiry returned an open finding. What is notable is not the loss itself but what was not recovered: the ship''s log, the captain''s personal effects, and the manifest for the cargo hold, which witnesses at Mackay recalled being loaded under unusual secrecy. The manifest has never been found.',
 'The sea keeps what it takes. It is not withholding. It simply has different rules about permanence.',
 -19.3060, 147.6155, 'strange_history', 41, true, 'active'),

('Where Waltzing Matilda Was Written',
 'waltzing-matilda-winton',
 '1895. A swagman, a billabong, a disputed drowning. A song that became a country.',
 'Banjo Paterson wrote Waltzing Matilda at Dagworth Station near Winton in 1895, based on the death of a shearer named Samuel Hoffmeister who drowned in the Combo Waterhole during the shearers'' strike of 1894. The official account holds that Hoffmeister drowned himself to avoid arrest for sheep theft. A competing account, supported by a subsequent Queensland Police investigation, suggests he was shot by station owner Bob Macpherson and his body placed in the waterhole. The inquest was never held. The song, which depicts exactly this scenario, became Australia''s unofficial national anthem. The billabong still exists.',
 'The song told the truth. That is perhaps why it was made unofficial.',
 -22.3853, 143.0358, 'strange_history', 27, true, 'active'),

('Lark Quarry Dinosaur Trackways',
 'lark-quarry-dinosaur-trackways',
 '95 million years ago, something large came. Everything else ran.',
 'At Lark Quarry, 110 kilometres south of Winton, a single bedding plane preserves 3,300 individual dinosaur footprints in a space roughly the size of a tennis court. The tracks record what paleontologists interpret as a stampede: two species of small ornithopods and theropods fleeing in a single direction from a large predator, whose own tracks cross the site from a different angle. The event lasted approximately thirty seconds. The tracks were discovered in 1962 and excavated in the 1970s by a team from the Queensland Museum. The site is enclosed in a purpose-built shelter and remains one of the most complete records of a single prehistoric event anywhere on earth.',
 'Three thousand footprints moving in the same direction record not just movement but a decision made in thirty seconds, ninety-five million years ago.',
 -23.0417, 142.8833, 'strange_history', 19, true, 'active'),

('Kilcoy Massacre — The Poisoned Flour',
 'kilcoy-massacre-1842',
 '1842. Flour distributed to the Dalaipi people. Sixty dead. No charges ever laid.',
 'In 1842, Aboriginal people of the Dalaipi nation near Kilcoy on the upper Brisbane River died in large numbers after receiving flour distributed by settlers at Kilcoy Station. Estimates of the dead range from sixty to one hundred and fifty. Contemporary accounts from settlers described the deaths as resulting from eating the flour. The Queensland frontier violence researcher Raymond Evans confirmed in 1988 that the distribution was deliberate. No charges were ever laid. The station records from 1842 survive in the Queensland State Archives. The massacre site is unmarked.',
 'The record exists. The charges do not. These are two separate facts and should not be allowed to cancel each other out.',
 -26.9356, 152.5631, 'strange_history', 8, true, 'active'),

('Cooktown — Where the Endeavour Was Repaired',
 'cooktown-endeavour-river',
 '1770. Cook ran aground on the Reef. Forty-eight days on an unknown shore.',
 'On 11 June 1770, HMS Endeavour struck the Great Barrier Reef and was beached in the mouth of what Cook named the Endeavour River for forty-eight days while repairs were made. It was the first sustained European contact with the Australian continent''s northeast coast. The Guugu Yimithirr people observed and in some accounts assisted the repairs. Cook''s journal entries from this period contain unusual gaps — days recorded only as "employed in the usual way" during a period when the crew was in daily contact with an entirely unknown civilisation. The shore camp site has been partially excavated. Not all of what was found is on public display.',
 'Forty-eight days was enough to understand that what they had found would change everything. The journal gaps suggest Cook understood this before he wrote it down.',
 -15.4667, 145.2500, 'strange_history', 22, true, 'active'),

('Cloncurry — The Hottest Place on Earth',
 'cloncurry-heat-record',
 '53.1°C recorded 16 January 1889. The thermometer survived. Not much else did.',
 'On 16 January 1889, a temperature of 53.1 degrees Celsius was recorded at Cloncurry in northwest Queensland — a figure that stood as the highest reliably recorded air temperature in the world for over a century until disputed by Death Valley readings. The station that recorded it was a remote cattle property. The observer, a station manager named Featherstone, noted in his log that the temperature was taken in standard shade conditions and that three horses died in the yards that afternoon. The recording instrument, a mercury-in-glass thermometer, was submitted to the Queensland Meteorological Service and authenticated. It is in the Cloncurry Museum.',
 'Heat of this intensity does not feel like weather. It feels like a decision the landscape has made about you.',
 -20.7058, 140.5056, 'strange_history', 13, false, 'active'),

('Lamington Plateau — The 1943 USAAF Crash',
 'lamington-usaaf-crash-1943',
 'A B-17 Flying Fortress. 41 dead. Found three weeks later at 900 metres.',
 'On 14 June 1943, a United States Army Air Forces B-17F Flying Fortress named "The Tulsamerican" struck the Lamington Plateau at 900 metres altitude in low cloud while navigating from Townsville to Brisbane. All forty-one crew members aboard died. The wreck was not found for three weeks despite intensive searching. When located, the crash site was so remote that the aircraft had to be left in place. Most of it remains there today, visible only to experienced bushwalkers who know where to look. The USAAF crash report was classified until 1988 and contains a navigation error assessment that several aviation historians consider deliberately incomplete.',
 'Aircraft that vanish on clear-weather flights into known terrain leave a specific kind of question: what was the crew looking at instead.',
 -28.2167, 153.1500, 'strange_history', 16, true, 'active'),

('Fraser Island — The Eliza Fraser Wreck',
 'eliza-fraser-shipwreck',
 '1836. Survivors. A disputed captivity. A woman whose story changed with each telling.',
 'The brig Stirling Castle was wrecked on a reef north of Fraser Island in May 1836. The survivors, including captain''s wife Eliza Fraser, reached the island and were present among the Badtjala people for several weeks before rescue. Eliza Fraser''s subsequent accounts of her time on the island changed substantially between tellings — from accounts of kindness to accounts of captivity and abuse — depending on her audience and the financial incentives of the moment. She gave paid public lectures in Sydney and London with different versions. The Badtjala people''s accounts of the same period, recorded by anthropologists in the 1940s, describe the survivors as frightened guests who were fed and sheltered.',
 'A story that changes with the telling is not necessarily false. Sometimes it is in the process of becoming whatever the teller needs to survive.',
 -25.2000, 153.1833, 'strange_history', 18, true, 'active'),

('Longreach — Where QANTAS Was Born',
 'longreach-qantas-birthplace',
 '1920. Two returned soldiers and a dream of flying cattle country.',
 'The Queensland and Northern Territory Aerial Services — QANTAS — was founded in Winton in 1920 and began operations from Longreach the following year. Its founders, Paul McGinness and Hudson Fysh, had surveyed the route by car and camel the previous year on a Commonwealth commission. The first aircraft was a single-engine BE2E biplane. The first route was Charleville to Cloncurry. The original hangar in Longreach still stands, housing a museum. In the Longreach hangar''s founding documents, held in the Qantas Heritage Collection, one line in the original operating agreement is redacted. The nature of the redaction has never been explained and Qantas has declined to clarify it in response to three separate FOI requests.',
 'Every institution has a founding document that contains something its founders did not want explained later.',
 -23.4422, 144.2502, 'strange_history', 10, false, 'active'),

('Birdsville Track — The Madigan Survey',
 'birdsville-track-madigan',
 '1939. A geographer crossed the Simpson Desert. His survey notes were sealed for thirty years.',
 'Cecil Madigan led the first scientific crossing of the Simpson Desert in 1939, traversing from Birdsville westward across 1,140 sand dunes with a team of seven. His published account, released in 1946, describes geological formations, flora, and Aboriginal artefacts encountered during the crossing. His original survey notebooks, deposited with the South Australian Museum, were sealed under his instruction until 1969. When opened, they were found to contain extensive notes on three sites not mentioned in the published account, with coordinates, detailed descriptions, and the instruction: "Not to be included in the published record." The three sites have never been publicly identified.',
 'A geographer who seals his own notes is performing a specific act. He is deciding what the desert is allowed to mean.',
 -25.8997, 139.3469, 'strange_history', 7, false, 'active'),

('Stanthorpe — The Spanish Flu Border War',
 'stanthorpe-spanish-flu-border',
 '1919. Queensland closed its border. People died on both sides.',
 'In January 1919, as the Spanish influenza pandemic moved south from Queensland, the state government erected a quarantine barrier at the NSW border near Stanthorpe. The barrier was enforced by police and, in some accounts, by armed volunteers. NSW residents attempting to cross to Queensland for medical treatment were turned back. Queensland residents returning from NSW were interned. At least eleven people died in the no-man''s-land between the two state checkpoints during the barrier''s operation — from influenza, from exposure, and in two documented cases from altercations at the barrier itself. The barrier lasted forty-seven days. The deaths in the border zone were recorded in neither state''s official mortality figures.',
 'A border created to stop death can itself become a place where people die. This is not a paradox. It is administration.',
 -28.6539, 151.9274, 'strange_history', 12, true, 'active');
