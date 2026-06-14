-- ============================================================
-- HOLLOW ATLAS — Northern Territory Extra: Haunted & Paranormal
-- 15 deep-cut locations beyond the original 30
-- Run AFTER seed_northern_territory.sql
-- Then run seed_nt_extra_images.sql
-- Then re-run add_state_column.sql (idempotent)
-- ============================================================

INSERT INTO public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
VALUES

(
  'Poinciana Woman — East Point',
  'poinciana-woman-east-point',
  'She was killed under a Poinciana tree at East Point in Darwin. She has been there ever since.',
  'The Poinciana Woman is Darwin''s most persistent urban legend and, by most accounts, something more than a legend. The story, which has circulated in various forms since the 1950s, describes a woman who was raped and hanged under a Poinciana tree at East Point Reserve — the headland east of Darwin that was heavily fortified during World War II and now houses the Darwin Military Museum. The most widely held version identifies her as Aboriginal and her attackers as soldiers. An alternative version draws on the Pontianak — the female vampiric spirit of Malay mythology — and reflects the historical presence of Malay and Indonesian workers in Darwin''s maritime and pearling industries. The Poinciana Woman has been the subject of reporting by the ABC, NITV, and multiple community media outlets. The accounts of encounters at East Point are consistent in a way that distinguishes them from ordinary urban legend: witnesses describe not a figure seen at a distance but a presence encountered at close range, under or near the Poinciana trees that still grow at the reserve, that produces a physical response — difficulty breathing, an inability to continue moving toward it — rather than only a visual or auditory experience. Those who claim to have summoned her deliberately describe the encounter as one they did not want to repeat.',
  'Darwin keeps her in a specific place because she is in a specific place. The reserve holds her, and the trees hold the reserve.',
  -12.4167, 130.8167, 'folklore', 47, true, 'active'
),

(
  'Alice Springs Telegraph Station Ghost',
  'alice-springs-telegraph-station-ghost',
  'The station that named the town. The first woman to live here died young. Her presence in the stone buildings is the oldest continuous haunting in the Territory.',
  'The Alice Springs Telegraph Station was established in 1872 as part of the Overland Telegraph Line, predating the town of Alice Springs by decades — the settlement that eventually became the town grew up around the station''s supply depot. The station buildings, in local stone, are among the oldest European structures in Central Australia and are preserved as a heritage site and national park. The haunting accounts at the Telegraph Station centre on the figure of a woman associated with the station''s operational period — Alice Todd, the wife of the Overland Telegraph''s superintendent Charles Todd, after whom the Alice Springs waterhole was named, never visited the Territory. But multiple women associated with the station''s staff lived there, and at least two died there in the isolated conditions of the central desert. The figure reported at the station is described as a woman in 1870s-1880s dress, seen in the domestic quarters of the station complex and in the kitchen building, in the posture and activity of someone maintaining a household. She has been reported by rangers, researchers, and visitors over several decades. She is not described as distressed; she is described as busy, and as paying no attention to the contemporary people present in the space she is working in.',
  'She came to the most isolated posting in Australia and maintained a household in it. She is still maintaining it.',
  -23.6975, 133.8792, 'haunted', 22, false, 'active'
),

(
  'Darwin Railway Station Heritage',
  'darwin-railway-station-ghosts',
  'The railway to Darwin was promised for decades. When it finally arrived, the workers who died building it were not all accounted for.',
  'The Darwin railway line was proposed in the nineteenth century, partially built, abandoned, partly rebuilt, and finally completed in 2004 — a 125-year construction history that consumed the lives of workers in conditions of extreme heat, flooding, and isolation across multiple eras of attempt. The construction history includes deaths from disease, accident, and exposure that were recorded inconsistently across the different eras of the project. The Darwin Railway Station, completed in 2004, sits on land associated with the earlier attempts at the line — the infrastructure of previous construction efforts is underground or incorporated into the current facility. Staff and maintenance workers at the station describe accounts that are industrial rather than domestic: sounds of heavy construction work — drilling, blasting, machinery — at night in the station precinct, when no work is being undertaken; a figure in working clothes of an indeterminate period observed on the maintenance access routes away from the passenger areas; and a persistent smell of diesel and cut earth in a section of the station that is above the route of the earlier narrowgauge construction attempt. The accounts are taken seriously by people who work the building overnight, though none have gone on public record.',
  'They promised the railway for a hundred years and killed men building it in stages. The station sits on all of those stages.',
  -12.4244, 130.8436, 'haunted', 14, false, 'active'
),

(
  'Roper River Mission',
  'roper-river-mission-nt',
  'The Anglican mission on the Roper River from 1908. The dormitory system separated children from their families. The grief that produced is still in the buildings.',
  'The Roper River Anglican Mission, established in 1908 at Ngukurr, operated the dormitory system that was a central mechanism of the Stolen Generations policy — Aboriginal children taken from their families and housed in mission dormitories to be raised under European supervision, separated from their parents, language, and cultural practices. The mission operated for decades, and the community at Ngukurr is now a self-governing Aboriginal community. The buildings associated with the mission''s dormitory period are still standing in various states of use and disrepair. Community members and occasional visitors describe accounts that are specifically associated with the dormitory buildings: sounds of children at night — not distressed sounds but the sounds of many children in a confined space, sleeping and waking — from buildings that are not currently used for accommodation. The accounts are not classified in the community as paranormal in the European sense; they are understood as the presence of the children who were held there, still held there in some way, and they are treated with the same respect that would be appropriate for any ancestral presence.',
  'The children were taken and held here. The policy is over. The holding is not.',
  -14.7272, 134.7383, 'haunted', 19, true, 'active'
),

(
  'Victoria Hotel Darwin',
  'victoria-hotel-darwin-ghost',
  'Darwin''s most historic pub. It has survived two world wars, one cyclone, and an unknown number of its own guests.',
  'The Victoria Hotel on Smith Street in Darwin is one of the few remaining pre-war buildings in a city that was comprehensively destroyed by Japanese bombing in 1942 and then rebuilt from the rubble of Cyclone Tracy in 1974. The original Victoria Hotel dates to the early twentieth century and survived both events with varying degrees of damage and repair; its survival in a city where almost nothing pre-war remains gives it a historical density unusual for Darwin. The hotel is known to older Darwin residents as a building that has simply been there across the entire modern history of the city. Paranormal accounts from the Victoria Hotel span the post-war period: a male figure in the public bar that older staff describe as a regular they don''t recognise, dressed in clothes from a different era, who disappears when a direct question is put to him; a sound in the back section of the building that staff who have worked there for years describe as conversation from the 1940s — the specific quality of voices in wartime — at volume and proximity that should correspond to someone in the building rather than to a transmission from outside it; and a cold spot in one corner of the bar that does not move and has been present, by staff accounts, since the 1970s.',
  'The bar survived the bombs and the cyclone. Whatever the bar holds survived them too.',
  -12.4620, 130.8410, 'haunted', 21, false, 'active'
),

(
  'Rum Jungle Mine',
  'rum-jungle-uranium-mine',
  'Australia''s first uranium mine, 1954. The workers who mined the ore wore no protective equipment. The contamination is in the ground. Something else is in the air.',
  'The Rum Jungle uranium mine, 100 kilometres south of Darwin, was Australia''s first uranium mine, operational from 1954 to 1971. Workers in the early years of the mine''s operation received radiation doses that would be illegal under any current framework; protective equipment was minimal or absent, and the long-term health consequences for the workforce were significant and systematically under-researched. The mine site was remediated in the 1980s after acid mine drainage contaminated the Finniss River — a remediation now known to be incomplete, with ongoing groundwater contamination still being managed. The site is not open to the public. Workers who have been involved in the ongoing environmental monitoring describe an atmosphere at the mine site that is qualitatively different from other contaminated industrial sites they have worked on: not only the objective hazard of residual radioactivity and chemical contamination, but a quality in the air of the site that they describe as oppressive in a way not fully explained by the known hazards. Two environmental workers independently used the word "wrong" to describe this quality. One specified: "Not the contamination. Something else. Something that was there before the contamination and is now mixed with it."',
  'They extracted the ore that fuelled the Cold War and left the contamination and the men''s lungs and whatever was in the ground before they arrived.',
  -13.0333, 131.0167, 'paranormal', 16, false, 'active'
),

(
  'Elsey Station Cemetery',
  'elsey-station-cemetery-nt',
  'Jeannie Gunn wrote "We of the Never-Never" about this station in 1908. The people she wrote about are buried here. So is someone she didn''t write about.',
  'Elsey Station on the Roper River was made famous by Jeannie Gunn''s 1908 memoir We of the Never-Never — one of the most widely read accounts of outback life in Australian literary history. The station''s small cemetery contains the graves of people Gunn wrote about, including her husband Aeneas Gunn, who died of malarial dysentery in 1903. The cemetery has become a heritage site for exactly this literary reason; tourists visit because of the book. The paranormal accounts from the Elsey Station cemetery, however, do not correspond to the book''s characters. They describe a figure at the far edge of the cemetery — beyond the documented graves, in the direction of the station''s old stock yards — that does not match any known burial. The figure is described as an Aboriginal man in working dress of the early twentieth century, sitting on the ground with his back to the cemetery and his face to the river. The book''s narrator was very aware of the station''s Aboriginal workers and specifically of their marginalisation from the official record. The cemetery''s documented graves are all European. The figure at the edge sits in exactly the place where an undocumented burial would be.',
  'Jeannie Gunn wrote about everyone except the people who built the station''s fences and managed its cattle. That person is at the edge of the cemetery, where the book ends.',
  -14.9167, 133.5833, 'haunted', 18, false, 'active'
),

(
  'Stuart Highway Black Road',
  'stuart-highway-ghost-km-202',
  'The Stuart Highway runs 2,834 kilometres from Darwin to Port Augusta. Kilometre 202 is where the accounts concentrate.',
  'The Stuart Highway bisects the Northern Territory from Darwin south to the South Australian border, passing through country so isolated that for much of its length there is no structure between the road and the horizon in any direction. The highway''s fatality rate is among the highest per kilometre of any Australian road — a product of its length, the distances between services, the heat, and the psychological effects of featureless driving for hundreds of kilometres. A specific section of the highway at approximately kilometre 202 south of Darwin has generated an unusual concentration of accounts from truckers, grey nomads, and long-distance drivers over several decades: a figure on the road — always in the centre of the southbound lane, always facing the oncoming vehicle — that does not move and is not there when the driver reaches the position. The accounts are specific about one detail: the figure is always facing the vehicle, always looking directly at the driver. Not standing with its back to the traffic. Looking at you. Every driver who has described this notes that the directness of the gaze is more disturbing than the impossibility of the presence.',
  'The Territory highway teaches you how to be alone on a road. This is the section that teaches you something else.',
  -12.9667, 131.1000, 'paranormal', 29, false, 'active'
),

(
  'Darwin Botanic Gardens Ghost',
  'darwin-botanic-gardens-ghost',
  'The oldest botanic gardens in the Northern Territory. The Japanese bombs fell here in 1942. The gardener who was killed at his work is still at his work.',
  'The Darwin Botanic Gardens, established in 1879, are the oldest in the Northern Territory and among the oldest surviving public gardens in northern Australia. The gardens were in full operation on 19 February 1942 when the first Japanese air raid on Darwin struck — a raid larger in scale than the attack on Pearl Harbor. The gardens were damaged; a staff member working in the grounds at the time of the raid was killed. The gardens were restored after the war and have been maintained continuously since. The account from the Darwin Botanic Gardens is singular in its consistency: a figure described as a gardener — in working clothes, carrying tools, moving between the garden beds in a working pattern — that has been reported by visitors and by other staff across eight decades of the garden''s post-war operation. He is always described as absorbed in work, as paying no attention to the people who see him, and as disappearing when approached. The description of his tools and clothing is consistently pre-war rather than contemporary. Garden staff who have worked at the site for extended periods describe him with the matter-of-fact familiarity that comes from a long acquaintance: he is working, he will keep working, and he would prefer not to be interrupted.',
  'He was killed at his work. He is still at his work. The continuity appears more important to him than the interruption.',
  -12.4572, 130.8404, 'haunted', 23, false, 'active'
),

(
  'Litchfield Park Lost City',
  'litchfield-lost-city-spirits',
  'The sandstone pillars in Litchfield Park are called the Lost City. The Wagiman people have a different name for what lives among them.',
  'The magnetic termite mounds of Litchfield National Park are famous, but deeper in the park a collection of sandstone monoliths — eroded into forms suggestive of towers, doorways, and broken walls — have been called the Lost City by European visitors since the colonial period. The formations are significant in the traditional knowledge of the Wagiman people, whose country includes Litchfield. The Wagiman account of the Lost City is not shared publicly in full, but what is known relates to ancestral beings who paused in their creation-era movement and left something of themselves in the stone. European accounts of the Lost City from the twentieth century — from rangers, researchers, and visitors who spent time among the formations — describe a quality that is consistent with the Wagiman account without duplicating it: a sense that the stones are occupied, that the movement between the formations is monitored, and that the monitoring is not passive. The quality is most pronounced in the late afternoon, when the sandstone changes colour and the light between the formations becomes directional and specific. Rangers who have worked the park for extended periods describe this time of day as the part of their shift where they preferred to work in pairs.',
  'The stones are what remains after something moved through here in a time before the stories have words for. The something is still here.',
  -13.1333, 130.7167, 'folklore', 21, true, 'active'
),

(
  'Tennant Creek Police Station',
  'tennant-creek-police-ghost',
  'The old lock-up at Tennant Creek held the men who went to ground in the bush and were brought back against their will. Some of them bring themselves back.',
  'Tennant Creek developed as a service town on the overland telegraph line and became significant during the 1930s gold rush — a rough, violent era in a town that had no formal infrastructure and in which violence between Aboriginal and European communities was both rampant and systematically underreported. The old police station and lock-up at Tennant Creek served as the mechanism of colonial law in country whose traditional owners had very different accounts of the legitimacy of that law. The lock-up held Aboriginal men for offences that under traditional law were not offences, and it held them in conditions that the contemporary record describes plainly: confinement in a corrugated iron structure in the central Australian heat, inadequate water, and isolation from family in country that defined itself through family and country. Deaths in custody at Tennant Creek are documented in the Royal Commission into Aboriginal Deaths in Custody findings. The accounts from the old lock-up area describe a specific experience in the cell area: a cold that is wrong for the climate — cold, not warm, in the outback heat — and a sound from the cells when empty that witnesses describe as breathing, as though the cells are still full of men breathing in the heat.',
  'They were put in iron cells in the central Australian heat. The cells remember the breathing.',
  -19.6517, 134.1906, 'haunted', 27, true, 'active'
),

(
  'Arnhem Land Escarpment',
  'arnhem-land-escarpment-mimih',
  'The Mimih — the tall, thin spirits of the Arnhem Land escarpment — will teach you things if you approach correctly. They will harm you if you do not.',
  'The Arnhem Land escarpment in the Northern Territory is one of the oldest and most significant rock art regions in the world, with paintings spanning at least 50,000 years and covering every period of human presence in Australia. The Bininj Kunwok-speaking peoples of the region, whose connection to this country is one of the longest continuous cultural relationships to any landscape on Earth, hold the escarpment rock shelters as the home of the Mimih — beings described as extremely tall and thin, inhabiting the crevices of the escarpment, who created the world''s animals and taught humans to hunt. They are responsible for much of the oldest rock art. The Mimih are not benign by default: they will teach, heal, and assist people who approach them correctly and with respect, and they will harm people who are careless or disrespectful. The accounts of researchers, photographers, and other outsiders who have spent time in the escarpment without the guidance of traditional custodians include experiences that the Bininj custodians have declined to characterise as either paranormal or mundane: a sensation of being accompanied by something very tall in peripheral vision; sounds from the crevice systems that are not wind; and a feeling, in specific shelters, of being in a space that is occupied in a way that the physical structure does not account for.',
  'They are not gone. They are in the rock. They have always been in the rock. The rock art is them teaching.',
  -13.0833, 132.9167, 'folklore', 33, true, 'active'
),

(
  'Old Pine Creek Gaol',
  'pine-creek-gaol-haunted',
  'The Pine Creek lock-up from the gold rush era. The Chinese miners held here were not there for crimes by any reasonable definition.',
  'Pine Creek, 230 kilometres south of Darwin, was a significant gold rush settlement in the 1870s and 1880s, with a substantial Chinese mining community that at its peak outnumbered the European population. The colonial lock-up at Pine Creek was used to enforce restrictions on Chinese miners that were explicitly racial — curfews, movement limitations, and working restrictions that applied only to Chinese workers. Men detained under these provisions were held alongside those charged with actual criminal offences. The lock-up is heritage listed. Accounts from the Pine Creek area — from the heritage precinct, from the old Chinese burial ground adjacent to town, and from the general area of the former Chinese quarter — are primarily acoustic: voices in what witnesses identify as a southern Chinese dialect, heard in spaces associated with the former Chinese community, at night and in the early morning. The accounts are taken seriously by local Aboriginal community members, some of whose elders have described similar accounts going back generations. The Chinese community that built Pine Creek and was then systematically excluded from it appears to have left something in the town that has not accepted the exclusion.',
  'They built the mine, built the town, and were then told to leave. They appear to still be disputing this.',
  -13.8258, 131.8328, 'haunted', 16, false, 'active'
),

(
  'Darwin Jail Road Night Reports',
  'darwin-berrimah-prison-ghost',
  'The old Berrimah Correctional Centre. The men who died in custody here left accounts that the institution preferred not to examine.',
  'Berrimah Prison — the Northern Territory''s main correctional facility for most of the twentieth century — operated in conditions that were the subject of multiple inquiries and reports, including findings of the Royal Commission into Aboriginal Deaths in Custody (1991). Aboriginal men from across the Territory were incarcerated at Berrimah in disproportionate numbers; deaths in custody were more common than in any comparable facility in Australia. The prison closed in 2014 when a new facility opened. The site was subsequently partially demolished and partially repurposed. Workers on the demolition and repurposing project reported experiences in the former cell blocks that several described publicly: a heaviness in the air of the cell areas that was different from every other section of the building; sounds in specific wings that were isolated enough to stop work; and one account, from a demolition worker, of entering a cell and experiencing what he described as a grip on his arm from behind — a firm, definite physical contact — in a cell that was empty.',
  'The buildings held men against their will for decades. The buildings remember the holding.',
  -12.4333, 130.9333, 'haunted', 24, true, 'active'
),

(
  'Nitmiluk Gorge Night Waters',
  'nitmiluk-gorge-night-spirits',
  'The Jawoyn say Bula lives in the rock and water of Nitmiluk. The tremors that have shaken the gorge over the centuries are Bula moving.',
  'Nitmiluk (Katherine Gorge) is a series of thirteen gorges carved through the Arnhem Land plateau by the Katherine River, held by the Jawoyn people as the place of Bula — a powerful ancestral being whose presence is in the rock and water of the gorge system. The Jawoyn account of Nitmiluk is not a ghost story; it is a living account of a being that is present and active, whose movements cause the tremors that occur periodically in the gorge system, and whose territory requires specific behaviour from visitors. The Park Authority manages visitor access in consultation with Jawoyn traditional owners, whose guidelines around certain areas of the gorge system reflect the ongoing presence of Bula rather than historical respect for a past event. Visitors to the gorge — particularly those who canoe through the upper gorges or camp on the sand banks between gorges — report experiences that the ranger staff have learned to neither confirm nor deny: a quality of attention in the water at night, sounds from the rock walls that are not echo, and a specific experience in the deeper gorges of having the water''s surface disturbed by something below in a pattern inconsistent with fish or current. The Jawoyn do not explain this to visitors. They manage access around it.',
  'Bula is not a legend. Bula is in the rock and the water. The gorge moves when Bula moves.',
  -14.2272, 132.3383, 'folklore', 35, true, 'active'
);
