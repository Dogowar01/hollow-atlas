-- ============================================================
-- HOLLOW ATLAS — Victoria Extra: Haunted & Paranormal
-- 15 deep-cut locations beyond the original 30
-- Run AFTER seed_victoria.sql
-- Then run seed_vic_extra_images.sql
-- Then re-run add_state_column.sql (idempotent)
-- ============================================================

INSERT INTO public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
VALUES

(
  'Barwon Park Mansion',
  'barwon-park-mansion',
  'Thomas Austin introduced rabbits to Australia here. Elizabeth Austin died in her bedroom in 1910. Neither has fully departed.',
  'Barwon Park at Winchelsea was constructed between 1869 and 1871 for pastoralist Thomas Austin and his wife Elizabeth — a 42-room Italianate mansion in basalt, regarded as one of the finest surviving examples of its type in Victoria''s Western District. Thomas Austin is most notorious for introducing 24 wild rabbits to his property in 1859 for sport shooting, a decision that produced one of the most ecologically catastrophic introductions in Australian history. He died in 1871, shortly after the mansion was completed, from an infected finger cut sustained while working with horses. Elizabeth Austin remained at Barwon Park for nearly four decades, becoming one of Victoria''s most significant female philanthropists; the Austin Hospital in Heidelberg was established in her name. She died in her bedroom at Barwon Park in 1910. It is in this room that paranormal investigations have most consistently returned anomalous results: thermographic cold signatures, EVP recordings containing female voice frequencies, and witness accounts of a woman observed seated at what would have been the room''s original dressing table position. The National Trust administers the property and conducts public paranormal investigation events. Elizabeth''s is the name most consistently associated with the reports.',
  'She outlived her husband by almost four decades. She outlived the house''s last private occupation by longer still.',
  -38.2347, 143.9820, 'haunted', 28, true, 'active'
),

(
  'Daylesford Convent Gallery',
  'daylesford-convent-gallery',
  'The nuns left in 1974. The sisters who died in the building did not receive the same notice.',
  'The Convent at Daylesford was established in 1863 as a Sacred Heart convent and school, perched on a hill above the spa town and commanding views of the Wombat State Forest. The complex of bluestone and timber buildings operated as a convent, school, and retreat for over a century before the Sisters of the Presentation withdrew in 1974. It is now a gallery, event venue, and heritage precinct. The site has generated paranormal accounts since its earliest days as a secular venue: a figure in a habit observed on the upper floors of the main building, footsteps on the stone corridors after closing, objects in the gallery spaces rearranged between the last staff member leaving and the first arriving. Three former nuns who died in the building during the convent''s operational period have been proposed as candidates for the presence. The accounts are distinctive in their restraint — almost all describe behaviour consistent with someone continuing a routine (walking a known corridor, moving objects to their correct positions) rather than distress or malice. Whatever remained appears to have continued the work rather than resented the gallery''s arrival.',
  'A century of devotion to a place leaves something. The form it takes here is very quiet and very purposeful.',
  -37.3531, 144.1474, 'haunted', 19, false, 'active'
),

(
  'The Haunted Hills',
  'gippsland-haunted-hills',
  'They have been called the Haunted Hills since 1866. The name was not an invention.',
  'A range of low, densely forested hills in the Latrobe Valley near Traralgon was described as "haunted" by European settlers from the 1860s onward — not as hyperbole but as a practical description of what was experienced there. The name stuck and is used on current maps. The earliest accounts come from timber cutters and travellers who reported sounds — voices, bells, rhythmic percussion — from the interior of the hills at night, in terrain where no settlement existed. In 1866 two skeletons were found in the hills in circumstances that generated a formal inquiry; their identities were never established and the cause of death was not determined. Aboriginal Australians of the Gunaikurnai nation had specific protocols for the hills that they declined to share with European settlers but that were treated as serious rather than conventional. Later accounts add visual elements to the sonic ones: figures between the trees, lights moving at ground level without apparent source, and a specific crossing point on a track through the hills that multiple walkers have independently described as a location where they turned back without being able to explain the decision. The hills are not formally recognised as a heritage or protected site in a paranormal context. They are just called what they have always been called.',
  'Some places earn their names. This one was named in a period when people named places plainly and meant what they said.',
  -38.2000, 146.5000, 'haunted', 23, false, 'active'
),

(
  'Maldon Kangaroo Hotel',
  'maldon-kangaroo-hotel',
  'The ten horses died in the stable fire in the 1870s. The hotel guests still hear them at night.',
  'The Kangaroo Hotel in the goldfields town of Maldon has operated in one form or another since the height of the Victorian gold rush, when Maldon was a prosperous and populous mining centre. In the 1870s a fire in the hotel''s stables killed ten horses — an event recorded in the town''s local history and still discussed in Maldon, which has maintained its nineteenth-century character more completely than almost any other Victorian goldfields town. The Kangaroo Hotel is heritage listed as part of the Maldon Historic Reserve, which encompasses most of the town. Accounts of paranormal activity at the hotel centre exclusively on sounds: hooves on cobblestones in the vicinity of where the original stables stood, the sounds of horses in distress — not the sustained sounds of a fire, but the short, sharp vocalisations of animals startled or in pain — and a persistent smell of hay and horse in areas of the property that have not been used for stabling in over a century. Guests who report these sounds typically assume they have a mundane explanation until they check the time: the sounds occur consistently between 2 and 4 AM, when no horses are in the vicinity and the street outside is quiet.',
  'Animals do not understand what has happened to them. The ten horses apparently still do not.',
  -36.9976, 144.0668, 'haunted', 24, false, 'active'
),

(
  'Royal Hotel Seymour',
  'royal-hotel-seymour-vic',
  'It was a hotel. Before that it was a morgue. The guests from both periods overlap.',
  'The Royal Hotel in Seymour dates to the late 1840s and is one of the oldest surviving licensed premises in regional Victoria. Before its current function, and during parts of its earlier history, the building served as a temporary morgue for the district — a function that was common for hotels in small colonial towns where no dedicated mortuary facility existed, and where the cellar provided necessary cool storage. This dual history is attested in the town''s records. The haunting accounts at the Royal Hotel are divided between the ground-floor bar and the cellar: the bar generates reports of a figure at the end of the room in Victorian dress, visible when the bar is quiet and absent when the room is busy; the cellar generates a more visceral response — multiple staff members over multiple decades have refused to work in the cellar alone, without being able to specify what they encountered, using language that describes not a sighting but a presence that was insistent about not wanting company. One former barman put it specifically: "It wasn''t frightening. It was worse than frightening. It wanted something from you and you didn''t know what it was."',
  'The building served the living and the dead for so long that the distinction became, in some functional sense, blurred.',
  -37.0236, 145.1378, 'haunted', 17, false, 'active'
),

(
  'Tahbilk Winery',
  'tahbilk-winery-cellars',
  'The oldest winery in Victoria. The cellar was built in 1860. Something has been in it since before then.',
  'Tahbilk Winery on the Nagambie Lakes was established in 1860 and is the oldest operating winery in Victoria and one of the oldest in Australia. The original underground cellars, hand-dug and lined with hand-made brick, are still in use. The winery''s 1860 vintage Shiraz vines are among the oldest continually bearing Shiraz vines in the world. The land was occupied by the Taungurung people for thousands of years before European settlement; the specific area around the winery contains significant cultural heritage that is only partially documented. Paranormal accounts from Tahbilk cluster in the original cellar complex and in the area around the old wooden vineyard huts. The cellar accounts are of a sensory rather than visual nature: a distinct drop in air temperature in one section of the cellar that does not correspond to the natural thermal properties of the space, a smell described as old cloth and something else that witnesses cannot categorise, and a persistent sense of being followed through the cellar passages that resolves into nothing when you turn around. The hut area accounts are visual: a figure between the vine rows at dusk, in clothing that is not right for the period — that is, not contemporary, and also not nineteenth-century European.',
  'The vines are over 160 years old. The land they grow in is much older than that, and keeps different accounts.',
  -36.8833, 145.0667, 'haunted', 15, false, 'active'
),

(
  'Dunolly Criterion Hotel',
  'dunolly-criterion-hotel',
  'The woman on the upper floor has been there since the 1860s. She does not answer when spoken to.',
  'The Criterion Hotel at Dunolly was built in 1861 during the height of the Victorian gold rush, when Dunolly was a significant mining centre. The town''s most remarkable moment came in 1869, when the Welcome Stranger nugget — the largest alluvial gold nugget ever found, weighing 72 kilograms — was discovered just outside the town. The hotel has operated continuously since the gold rush era and is one of the few surviving licensed premises from that period in the central goldfields. The haunting accounts at the Criterion are single-figure and consistent: a woman seen in the upper storey of the building, typically in the room at the far end of the upper hallway, who does not respond to voices, does not vary her behaviour based on the observer, and who ceases to be present when the room is entered. The accounts come from staff, guests, and on several occasions from people standing outside the building and looking up at the windows. No specific historical individual has been identified as corresponding to the figure. The accounts span at least four decades of the hotel''s post-goldfields operation and show no sign of diminishing.',
  'The gold rush brought thousands of people to this valley and then removed most of them. This one stayed behind without the gold.',
  -36.8622, 143.7283, 'haunted', 13, false, 'active'
),

(
  'Werribee Mansion',
  'werribee-mansion-ghost',
  'The Chirnside family built the largest private house in Victoria. Thomas Chirnside shot himself in his bedroom in 1887.',
  'Werribee Park mansion was constructed between 1874 and 1877 by Thomas and Andrew Chirnside, two Scottish-born brothers who had accumulated one of the largest pastoral holdings in Victoria. The Italianate mansion''s 60 rooms made it the largest private house in the colony, set within formal gardens modelled on English country houses. Thomas Chirnside shot himself in his bedroom on 19 February 1887, at the age of 63. The circumstances were attributed to depression following business losses. He was found in his room with a gunshot wound to the head and died shortly after. The Chirnside family connection to the property ended in the early twentieth century; the mansion eventually became a Salesian brothers'' college before its current function as part of a hotel and heritage precinct. The bedroom where Thomas Chirnside died has generated consistent accounts since the building''s transition to a visitor-accessible site: the sound of a single gunshot in an otherwise quiet building, always from the upper storey; a figure seen on the formal garden terrace below the bedroom windows at night, looking up; and a specific account from a hotel guest who woke to find the room temperature had dropped sharply and the window — which they had left closed — was open.',
  'He built the largest house in Victoria and then shot himself in it. The house kept the moment.',
  -37.9061, 144.6833, 'haunted', 29, true, 'active'
),

(
  'Point Lonsdale Lighthouse',
  'point-lonsdale-lighthouse',
  'The Rip has killed hundreds of ships. The lighthouse keeper who served the longest is still at his post.',
  'The Point Lonsdale Lighthouse guards the western entrance to Port Phillip Bay at The Rip — one of the most dangerous maritime passages in the world, where the full tidal force of Port Phillip Bay meets Bass Strait through a channel barely 3 kilometres wide. The current lighthouse was established in 1902, replacing earlier lights that had served since the 1850s. The Rip has claimed over 50 ships and hundreds of lives. The long-serving lighthouse keepers of the Victorian era spent years of their lives at the post, maintaining the light through conditions that isolated them entirely from the nearest settlement. The most consistently reported presence at the lighthouse is associated with a keeper identified from records as having served the longest continuous stint in the lighthouse''s history. His figure is described as appearing on the exterior of the lighthouse tower at night — not at the light itself but on the external gallery below it — and looking out toward The Rip in the posture of someone watching for ships in distress. The accounts come from boats passing through The Rip at night, from residents of Point Lonsdale village, and from the few people with legitimate access to the lighthouse grounds after dark. He is not described as distressed. He is described as focused.',
  'He spent years watching The Rip so ships would not die in it. He appears to have never stopped.',
  -38.2784, 144.6167, 'haunted', 21, false, 'active'
),

(
  'Mount Franklin Crater',
  'mount-franklin-crater-vic',
  'An extinct volcano that the Dja Dja Wurrung called something that translates, roughly, as "the place of changed air."',
  'Mount Franklin near Daylesford is an extinct volcanic crater, the caldera now forming a shallow bowl of native vegetation accessible by a short walking track. The area is within the traditional country of the Dja Dja Wurrung people, who held the site as significant for reasons they communicated to early European settlers in terms of caution rather than prohibition — it was not forbidden to approach, but it required specific attitudes. The phrase used in recorded accounts, translated as "the place of changed air," refers to a property of the site rather than an event associated with it. European accounts of the crater consistently note a quality of stillness that observers describe as unusual: the absence of bird sound in the immediate vicinity of the caldera, a flattening of ambient wind inside the crater bowl regardless of conditions outside it, and a sense of being observed that is described not as threatening but as specific — as though the observation is purposeful rather than incidental. On three separate occasions in the twentieth century, groups of visitors have reported seeing a figure in the crater that was not one of their party, and which had disappeared by the time the group reached the position where it was seen. The site has no formal heritage protection as a paranormal location.',
  'The Dja Dja Wurrung named it accurately. The air changes when you enter. Something about the quality of attention changes too.',
  -37.3500, 144.1667, 'paranormal', 16, false, 'active'
),

(
  'Sorrento Continental Hotel',
  'sorrento-continental-hotel',
  'Built in 1875. The man who died in room nine has not checked out.',
  'The Continental Hotel at Sorrento on the Mornington Peninsula was built in 1875 and is one of the oldest surviving hotels on the Peninsula, a grand Victorian structure that served the summer trade of Melbourne''s wealthy families taking sea air. Its long operational history has accumulated a corresponding depth of paranormal accounts — not concentrated in a single dramatic event but distributed across the building in a pattern consistent with long-continued habitation by many people in many different circumstances. The most documented account involves room nine: a male figure, seen briefly and clearly by multiple separate guests over several decades, wearing what is described as formal but somewhat outdated clothing, standing near the window looking toward the bay. He is never seen twice in the same night; the accounts always describe a single observation before he disappears. Staff who have worked the hotel for extended periods speak of him with the familiarity of a recurring but manageable feature of the building. The hotel''s history includes at least one death on the premises — a guest in the 1890s whose identity appears in local records but whose specific room allocation does not. The consensus among long-serving staff is that room nine is that room.',
  'A hotel is a building where strangers stay briefly. He has been the longest-staying guest by a significant margin.',
  -38.3416, 144.7399, 'haunted', 22, false, 'active'
),

(
  'Emu Bottom Homestead',
  'emu-bottom-homestead-sunbury',
  'Built in 1836, it is one of the oldest surviving homesteads in Victoria. The original owner was murdered. His killer was never identified.',
  'Emu Bottom Homestead near Sunbury is one of the oldest surviving homestead structures in Victoria, with portions of the main building dating to 1836. The original occupant, a pastoralist who took up the land in the earliest years of the Port Phillip settlement, died under circumstances that the colonial records describe as suspicious — a violent death on the property whose perpetrator was never charged or identified. The homestead changed hands multiple times before eventually being acquired by the Sunbury Council and then the National Trust. The building and its grounds are now managed as a heritage site and function venue. The paranormal accounts from Emu Bottom are of two distinct types: daytime accounts, concentrated in the oldest section of the building, of a heavy cold that appears to move toward and then away from visitors in a pattern suggesting purposeful movement; and night accounts, from staff who have worked evening events, of a male figure observed outside the building in the near paddock, visible from the windows and apparently standing still, that is absent when the paddock is checked. The outdoor figure is always described as facing the house.',
  'He never saw his murderer''s face. He appears to still be looking for it.',
  -37.5333, 144.7333, 'haunted', 11, false, 'active'
),

(
  'Benalla Black Spot',
  'benalla-hume-freeway-black-spot',
  'The stretch of the Hume near Benalla has killed more people than the statistics should allow. Drivers report a passenger.',
  'A section of the Hume Freeway in the vicinity of Benalla has accumulated a fatality record disproportionate to its road conditions, traffic volume, and visibility — properties that in comparable sections of the highway correlate with lower accident rates. The anomaly has been noted by VicRoads and road safety researchers without satisfactory explanation; the stretch does not have the sharp corners, merge points, or sight-line obstructions that characterise other black spots. Paranormal accounts from this stretch differ from the typical highway ghost story in their specificity: multiple drivers over multiple decades describe a specific experience just before losing control of their vehicles — a passenger seat figure glimpsed in peripheral vision, sometimes seen in the rear-view mirror instead, that causes the driver to react involuntarily and leave the road. The figure is described in terms that are consistent across accounts from people who have not spoken to each other: a passenger who was not there before, noticed suddenly, and who the driver turns to look at fully. Several survivors of accidents on this stretch have named this as the immediate cause. The pattern is well enough known locally that Benalla residents treat the stretch with specific caution, particularly at night.',
  'The road is straight. The sight lines are clear. The fatality numbers do not match the infrastructure. Something else is happening here.',
  -36.5500, 145.9800, 'paranormal', 35, false, 'active'
),

(
  'Haunted Hills Hotel',
  'haunted-hills-hotel-drouin',
  'The hotel sits at the entrance to the hills they named the Haunted Hills. It has been the staging point for accounts that never fully resolved.',
  'The Haunted Hills Hotel at Drouin West sits at the edge of the range of hills that have carried the name "Haunted Hills" since the 1860s, when European settlers found the area sufficiently disturbing to record the quality formally. The hotel''s position as the nearest licensed premises to the hills has made it, over 150 years, the place where people who went into the hills and experienced something came afterward to try to explain it. The accounts gathered here — across generations of licensees who collected them in the same half-attentive, half-believing way that Australian country publicans collect unusual stories — form a longer and more varied record than the hills themselves generate. Travellers who avoided the hills after dark. Timber workers who left jobs rather than continue in certain sections. A surveying team in the 1920s whose field notes describe inexplicable compass variations in a tight geographic area, later dismissed as instrument error. A 1963 account from a truck driver who stopped at the hotel in the middle of a night shift, unable to articulate what he had seen except that it had been standing in the middle of the road and that it had not moved when he drove at it.',
  'The hills earned their name. The hotel has been collecting the evidence for a century and a half. The filing system is informal but substantial.',
  -38.1167, 145.9000, 'haunted', 18, false, 'active'
),

(
  'Sunbury Vineyard Cemetery',
  'sunbury-vineyard-cemetery',
  'The oldest private cemetery in Victoria. Over fifty graves. The headstones are in the vineyard rows.',
  'The private cemetery on the Craiglee pastoral run near Sunbury contains over fifty graves from the 1840s through the early 1900s — workers, family members, and unidentified individuals associated with one of Victoria''s earliest squatting runs. The cemetery predates the Sunbury township and is considered the oldest private cemetery in Victoria. It sits among the vines of what is now Craiglee Winery, the headstones incorporated into the working vineyard rather than set apart from it. The proximity of agricultural activity to the burial ground — vine-dressers working between the rows, harvests conducted within metres of the graves — has generated a distinctive category of account: not a ghost story in the conventional sense but a persistent awareness reported by vineyard workers of being accompanied while working alone among the grave rows. The awareness is consistently described as benign and specifically as familiar rather than threatening — the sense of someone standing nearby who has stood nearby before, in the same place, doing the same kind of work. Several workers over the years have described working faster or more carefully in the cemetery rows, as though being assessed by someone whose assessment they valued.',
  'The dead and the vines have coexisted here for 180 years. The arrangement appears to suit both parties.',
  -37.5000, 144.6500, 'haunted', 9, false, 'active'
);
