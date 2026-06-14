-- ============================================================
-- HOLLOW ATLAS — Victoria Seed Locations (30 entries)
-- Run in: Supabase Dashboard → SQL Editor → New query
-- Run seed_victoria_images.sql afterwards to attach cover photos
-- ============================================================

insert into public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
values

-- ── HAUNTED ──────────────────────────────────────────────────

-- 1. Aradale Mental Asylum & J Ward
(
  'Aradale & J Ward',
  'aradale-j-ward',
  'Over 13,000 patients died here. The criminally insane were kept in a separate building that closed in 1991.',
  'Aradale Mental Asylum opened in 1867 on the outskirts of Ararat, designed in English Gothic Revival by colonial architect J.J. Clark, its towers and stone corridors constructed to project permanence and authority. At its peak it held over 1,200 patients and employed hundreds of staff. The adjacent J Ward — a separate granite building opened in 1886 — served as Victoria''s institution for the criminally insane, housing prisoners whose mental illness had been judged by the courts to outweigh their criminal responsibility. J Ward closed in 1991; Aradale followed in 1998. In 131 years of operation, approximately 13,000 patients died at the combined institution, the majority buried in unmarked graves in the grounds. The most consistently reported apparition is that of Dr. James Dobbyn, a former medical superintendent who died under unexplained circumstances at the institution, and who is encountered most frequently in J Ward''s isolation corridor. Both buildings are now open for night investigations. J Ward is a museum; Aradale houses a hospitality training campus, which is either evidence of resilience or irony, depending on your perspective.',
  'J Ward held the people the law couldn''t punish and the asylum couldn''t release. They stayed until they died, in cells designed for permanent occupation. Dr. Dobbyn supervised all of it, and then he stayed too.',
  -37.2811, 142.9100, 'haunted', 118, true, 'active'
),

-- 2. Old Melbourne Gaol
(
  'Old Melbourne Gaol',
  'old-melbourne-gaol',
  'One hundred and thirty-five executions. Ned Kelly was the most famous. The death masks remember all of them.',
  'Old Melbourne Gaol''s first bluestone cell block was completed in 1845, predating the city''s incorporation as a municipality by several years. The gaol operated for 84 years, during which 135 people were executed within its walls — 133 men and 2 women. The most significant execution occurred on November 11, 1880, when Ned Kelly was hanged at age 25. His death mask, cast immediately after execution, is among the collection of 30 death masks preserved in the original cell block — the faces of executed prisoners captured in plaster at the moment of their death, now staring from glass cases at visitors who file past them in the original corridors. The collection also includes fragments of Kelly''s iron armour and the scaffold on which he died. The gaol closed in 1929 and served as an army recruit training facility during World War II before opening as a museum in 1972. Staff and night-tour participants describe cell doors moving in sealed blocks, footsteps on empty upper landings, and the specific sensation of being followed through the condemned cells after closing.',
  'The death masks stare from their cases with an intensity that living faces rarely achieve. They were cast immediately after the rope — the last expression each face would ever make, preserved in plaster before the warmth left. Ned Kelly is among them: twenty-five years old, the most famous man on the scaffold. He has been in that building for a hundred and forty years.',
  -37.8078, 144.9635, 'haunted', 143, true, 'active'
),

-- 3. Beechworth Lunatic Asylum
(
  'Beechworth Lunatic Asylum',
  'beechworth-lunatic-asylum',
  'Nine thousand patients died here and were buried in the grounds. Ellen Kelly was committed while her son was in the ranges.',
  'The Beechworth Lunatic Asylum opened in 1867, built from local granite quarried by patient and convict labour across its 128-acre grounds. It operated for 128 years, closing in 1995. In that time, approximately 9,000 patients died within the institution and were buried without individual marked graves in paddocks at the property''s edge. Among the asylum''s historically notable residents was Ellen Kelly, mother of Ned Kelly, committed in 1878 while her son was an outlaw at large in the ranges above Beechworth. She remained for three years, long enough to learn that Ned had been captured, tried, and executed, and was released in 1881. The institution is now a luxury heritage hotel — Beechworth Retreat — with accommodation in the original ward buildings. Guests report cold descents in sealed corridors, unexplained knocking from unoccupied rooms, and the figure of a woman observed at the edge of the formal gardens at dusk. The morgue building, retained in original condition, is included on ghost tours as the most active site on the property and has returned consistent anomalous readings across seven separate investigations.',
  'Nine thousand people died in these grounds and were buried without marked graves. Ellen Kelly came here in 1878 knowing her son was being hunted. She stayed three years, long enough to hear that he had been hanged, and then she walked out through the gate. What she left behind is less certain.',
  -36.3589, 146.6908, 'haunted', 97, true, 'active'
),

-- 4. Pentridge Prison
(
  'Pentridge Prison',
  'pentridge-prison',
  'The last man hanged in Australia died here in 1967. Ned Kelly''s bones were found in an unmarked grave in D Division.',
  'Pentridge Prison — the "Bluestone College" — was constructed from 1851 in basalt quarried on the site, its walls rising to dominate the suburb of Coburg for a hundred and forty-six years. The prison closed October 1, 1997. Its history contains several intersections with Australian mythology: Ned Kelly''s remains were buried in an unmarked grave in D Division in 1929, where they lay mixed with other prisoners'' bones until DNA analysis in 2011 confirmed their identity. Kelly was reburied at Greta in 2013. Major riots scarred the prison in 1952 and 1955. Mark Brandon "Chopper" Read served significant time in H Division, Pentridge''s high-security wing. On February 3, 1967, Ronald Ryan was hanged here — the last judicial execution in Australian history. Ryan maintained until the end that he had not fired the shot that killed prison warder George Hodson during a 1965 escape. Whether the last man executed in Australia was guilty of the precise crime for which he was killed has not been definitively established. Pentridge is now a housing development. Residents of D Division apartments and visitors to the commercial precinct consistently report unexplained cold and movement in the former cell areas.',
  'Ronald Ryan was the last man hanged in Australia. He died on February 3, 1967, saying he had not fired the shot. The question of whether he had will never be answered now. The bluestone absorbed it, the way bluestone absorbs everything: completely, without returning it.',
  -37.7222, 144.9600, 'haunted', 109, true, 'active'
),

-- 5. Geelong Gaol
(
  'Geelong Gaol',
  'geelong-gaol',
  'The dark cells have no windows. They were designed to remove light as a disciplinary instrument.',
  'Geelong Gaol was constructed between 1849 and 1853 in bluestone, following the same architectural principles as Pentridge: walls of sufficient thickness that the building temperature remains nearly constant year-round, cells designed for psychological isolation, and exercise yards open to the sky but sealed against any view of the world beyond the perimeter. The gaol operated for 138 years, closing in 1991 after nine executions conducted between 1865 and 1882. In the aftermath of the Eureka Stockade uprising of 1854, prisoners from the Ballarat goldfields were held at Geelong prior to transfer — the gaol briefly housing men whose political convictions were being prosecuted as treason. The dark cells — windowless isolation rooms in which prisoners could be held for indefinite periods in total darkness as a formal punishment — survive intact from the original construction. Staff and tour guides report figures visible in cell windows from the exterior courtyard after closing, footsteps in the gallows room, and a persistent sensation in the dark cells of a presence that does not want to be confined. The sensation is unsurprising given what the cells were designed to do.',
  'The dark cells were built to remove light as an instrument of discipline — the theory being that the mind, deprived of all reference, would eventually conform to whatever the institution required. Whether that worked is not recorded. What was left behind in those cells does not require light to be felt.',
  -38.1497, 144.3553, 'haunted', 72, true, 'active'
),

-- 6. Cape Otway Lighthouse
(
  'Cape Otway Lighthouse',
  'cape-otway-lighthouse',
  'The oldest lighthouse on mainland Australia was built because the sea was taking too many ships.',
  'Cape Otway Lighthouse was completed in 1848, the first lighthouse erected on the Australian mainland, built specifically in response to the catastrophic rate of shipwrecks as vessels rounded the southern extremity of the continent from the west. The waters between Cape Otway and Bass Strait had become known as the "Shipwreck Coast" — more than 200 vessels were wrecked on this stretch of the Victorian coastline between 1837 and 1869, before adequate navigation aids existed. Lighthouse keepers at Cape Otway served in exceptional isolation, rotations lasting months on an exposed headland. Two keepers died in service at the station. The associated telegraph station, opened in 1859, handled ship-to-shore communication for the passing maritime traffic and was the point at which passing vessels reported their position to the colony. The light remains operational today. The keeper''s cottage and outbuildings serve as heritage accommodation. Guests report a child''s voice in the former nursery of the keeper''s residence, cold spots within the lighthouse tower itself, and the sound of movement in the telegraph station after midnight. The Gadubanud people, the original inhabitants of the cape and its surrounds, experienced significant mortality in the immediate area during the colonial period; their history here is documented only in fragments.',
  'The light was built because the sea was taking too many ships. Two hundred wrecks in thirty years — almost seven ships a year, each one a catastrophe, each one building the case for a lighthouse on the headland. The keepers who maintained it lived here in months-long isolation. Some brought their families. Some of those families left marks in the walls that are not easily explained.',
  -38.8581, 143.5131, 'haunted', 64, false, 'active'
),

-- 7. Ballarat Gaol
(
  'Ballarat Gaol',
  'ballarat-gaol',
  'The first prisoners inside had marched under the Southern Cross at Eureka three weeks before.',
  'The Old Ballarat Gaol was constructed in bluestone from 1857, and among its earliest inmates were men arrested following the Eureka Stockade uprising of December 3, 1854 — prisoners transferred from temporary confinement as the formal gaol was completed. The irony of housing the men who had demanded democratic rights in a building their own labour helped complete was not lost on contemporary observers. The gaol operated until the 1970s, conducting 17 executions, the last in 1876. The bluestone construction — the same local basalt used throughout colonial Victoria''s institutional buildings — gives the structure its characteristic atmosphere: the walls absorb and hold cold at all seasons, and the cell blocks are never warm. The building is now an arts and community centre. Event staff, visiting performers, and overnight guests in the heritage accommodation consistently report unexplained sounds in the former cell wings, objects relocated between sessions, and a pervasive sense of surveillance in the exercise yard — a sensation that is architecturally explicable but no less affecting for that. The gallows room is the most consistently reported active location.',
  'The first men in these cells had stood at Eureka Stockade three weeks earlier, under a flag that said they wanted rights. The gaol said something different. Both things were built from the same bluestone — the flag''s supporters carried it in one direction, and the gaol carried it in another.',
  -37.5600, 143.8580, 'haunted', 53, false, 'active'
),

-- ── PARANORMAL ───────────────────────────────────────────────

-- 8. Loch Ard Gorge
(
  'Loch Ard Gorge',
  'loch-ard-gorge',
  'Fifty-two people died. The two who survived sheltered in a cave that is still accessible at low tide.',
  'The Loch Ard was a Scottish-built iron clipper carrying 54 people — 17 crew and 37 passengers, most of them Irish immigrant families — when it struck the limestone cliffs near Port Campbell in the pre-dawn hours of June 1, 1878. The ship was destroyed within minutes. Fifty-two people died. The two survivors were Eva Carmichael, an 18-year-old Irish woman, and Tom Pearce, a 19-year-old apprentice seaman who pulled her from the surf and sheltered her in a cave at the base of the gorge. Pearce climbed the cliff at dawn and found help at a nearby station. Eva was evacuated, received briefly as a celebrity, and returned to Ireland within weeks — her entire family had perished in the wreck — and never set foot in Australia again. The gorge takes its name from the ship. The cave where Pearce and Carmichael sheltered is accessible at low tide. Visitors after dark consistently report a young woman in Victorian dress near the cave entrance and lights moving across the rock face at water level. A small cemetery at the gorge head holds the recovered victims. Eva''s figure is reported with such consistency that the gorge''s visitor literature acknowledges the sightings without committing to an explanation.',
  'Eva Carmichael survived the wreck, the gorge, the cave, and the celebrity, then returned to Ireland and stayed there. The whole rest of her family died in forty minutes. She did not come back. The gorge was named for the ship that killed them. Her figure is still reported near the cave.',
  -38.9164, 143.0992, 'paranormal', 88, true, 'active'
),

-- 9. Hanging Rock
(
  'Hanging Rock',
  'hanging-rock',
  'A volcanic formation that disorients compasses, swallows people, and inspired a story so convincing many believe it is true.',
  'Hanging Rock — Ngannelong — is a mamelon formed by volcanic activity approximately 6.1 million years ago, rising abruptly from the plains of the Macedon Ranges north of Melbourne. The Dja Dja Wurrung and Wurundjeri peoples used the site for ceremony and regarded it as spiritually significant in ways that the colonial settlers could not gain access to through observation or conversation. The rock itself is a labyrinth of vertical fissures, concealed caves, and overhanging boulders that disorient visitors in ways that are difficult to account for entirely by unfamiliar terrain. Compass anomalies have been reported at the site since the first European surveys. Joan Lindsay''s 1967 novel Picnic at Hanging Rock — dramatised in Peter Weir''s 1975 film — drew on the atmosphere of the formation to construct a story about three schoolgirls who vanish there on Valentine''s Day 1900. The story is entirely fictional. There are no missing girls. But the film''s effect on perception of the rock has been permanent: visitors arrive expecting something to happen, and in a formation where people routinely lose their orientation, encounter each other in impossible places, and find that time moves differently inside the fissures than outside, those expectations are regularly met.',
  'The rock is six million years old and disorients compasses. Joan Lindsay invented the missing girls. Both of these things are true, and the first does not require the second to make the place strange. The fissures close behind you as you move into them and the sky narrows to a strip overhead.',
  -37.1344, 144.6583, 'paranormal', 76, true, 'active'
),

-- 10. Lake Tyrrell
(
  'Lake Tyrrell',
  'lake-tyrrell',
  'A salt lake so flat it reflects the entire sky. At night, the stars are simultaneously above and below.',
  'Lake Tyrrell is a vast salt lake in the Mallee of north-western Victoria, approximately 35 kilometres long and 16 kilometres wide. The Wotjobaluk people have lived alongside the lake for tens of thousands of years, and their relationship with the site is embedded in language, ceremony, and knowledge that European documentation has been able to record only in fragments. When dry, the lake forms an unbroken plane of salt crystal that reflects everything above it — sky, weather, and at night the complete star field, the Milky Way visible simultaneously overhead and below the feet. When flooded, brine shrimp turn the water pink. Strange lights over the lake have been reported for well over a century: some attributable to the Fata Morgana mirage effects proposed for the Min Min phenomenon, others documented under conditions that make atmospheric mirage formation improbable. The remoteness of the Mallee means that unusual phenomena at Lake Tyrrell are reported by people without an audience to perform for — station hands, agricultural workers, and surveyors working alone on the salt at night — who describe what they observed without expecting to be believed. The lights move independently of wind direction, maintain coherent paths across the surface, and disappear when approached.',
  'When the lake dries completely it becomes a mirror so exact that the sky and the surface are indistinguishable. You can walk across it and watch yourself reflected from two metres below. At night the stars are in the ground and overhead simultaneously. The lights that move across the salt are a separate matter.',
  -35.3500, 142.7833, 'paranormal', 47, false, 'active'
),

-- ── FOLKLORE ─────────────────────────────────────────────────

-- 11. Bunyip of the Western District
(
  'Bunyip of the Western District',
  'bunyip-western-district',
  'The most historically documented creature in Australian folklore has been consistently described from these lakes for two centuries.',
  'The Western District of Victoria — the lakeland country between the Grampians and the coast, centered on Lake Corangamite, Lake Bolac, and the Hopkins River — contains the most historically documented concentration of bunyip sightings in Australia. The Wemba Wemba and Djab Wurrung peoples held extensive traditions concerning a large aquatic creature in permanent waterways. European settlers began recording encounters from the late 1830s. In 1846 the Geelong Advertiser published a detailed witness account describing a creature of "about 13 feet in length, more resembling an alligator than anything else — but having a head like a calf, no tail, and short legs." In 1847, a large fossil skull displayed in Sydney was independently identified by multiple Aboriginal witnesses as a bunyip skull; the scientific assessment determined it was a fossil diprotodont. The skull subsequently disappeared from the collection. Sightings at Lake Corangamite and Lake Bolac continued into the twentieth century. No specimen has been recovered, no carcass examined. The creature''s persistence in the colonial record — across cultures, across decades, from witnesses with no connection to each other — resists easy dismissal as collective imagination.',
  'The Aboriginal peoples of the Western District had been describing the same creature for a thousand years before European settlers arrived and started seeing it too. The diprotodont skull was identified by dozens of Aboriginal witnesses and then given a scientific name and disappeared. These two facts are not unrelated.',
  -38.1333, 143.5000, 'folklore', 55, false, 'active'
),

-- 12. Bunjil, Gariwerd
(
  'Bunjil''s Shelter',
  'bunjil-gariwerd',
  'The creator of the Djab Wurrung and Jardwadjali peoples watches from a rock shelter that is 22,000 years older than any European religion.',
  'The Grampians — Gariwerd to the Djab Wurrung and Jardwadjali peoples who have inhabited the region for over 22,000 years — contain one of the most significant concentrations of Aboriginal rock art in south-eastern Australia, with more than 80 recorded sites. Central to the spiritual tradition of the region is Bunjil: the wedge-tailed eagle who created the land, the people, and the law, and who continues to watch over the country. Bunjil''s Shelter, a shallow cave in the national park, contains an ochre painting of Bunjil in eagle form, flanked by two dingoes — a work whose physical age is estimated at several hundred years, though the tradition it depicts extends across millennia. The painting represents not an historical figure but an ongoing presence: Bunjil is understood by Djab Wurrung people to be active in the world now, not merely remembered. To stand in the shelter is to encounter a religious tradition that was continuous and living on this continent 22,000 years before any European religion arrived here. The shelter is accessible within the national park and is treated as a restricted heritage site under Victorian law.',
  'Bunjil made the people, the land, and the law, and then became an eagle and watched. The painting in the shelter depicts a being that Djab Wurrung people understand to still be present — not as history, but as now. Twenty-two thousand years is a long time to have been somewhere. The Grampians hold that duration in a way the interpretation boards at the trailheads cannot fully convey.',
  -37.1025, 142.3614, 'folklore', 44, true, 'active'
),

-- ── ABANDONED ────────────────────────────────────────────────

-- 13. Walhalla
(
  'Walhalla',
  'walhalla',
  'The richest reef mine in Victoria''s history operated in a valley so narrow the sun reaches the main street for four hours a day.',
  'Walhalla occupies a narrow valley at the head of Stringers Creek, 46 kilometres from Moe in the Gippsland Ranges, so enclosed that the main street receives direct sunlight for only a few hours each winter day. Gold was discovered here by Edward Stringer in 1862, and the Long Tunnel Extended mine became the richest single reef mine in Victoria''s history, producing over 45 tonnes of gold in its working life. The town that grew around it reached a peak population estimated between 4,000 and 7,000 in the late 1890s, with hotels, a cricket ground pressed into the narrow valley floor, a narrow-gauge tramway hauling supplies through the ranges, and a hillside cemetery so steep that the graves are stacked at implausible angles above the town. When the Long Tunnel closed in 1914, the population drained within years. The tramway was dismantled, the buildings stripped of reusable materials. The valley returned to its natural state of deep shadow and silence. Today approximately 15 people live permanently in Walhalla. The cricket ground, cemetery, and several preserved buildings remain. Walking the main street at dusk, in a valley that the mountains close behind you like a book, is to understand why the town was built here and why it could not outlast the mine.',
  'The sun reaches the main street for four hours a day in winter. The town built itself into a valley so narrow that the mountain presses from both sides. Gold makes people accept arrangements they would otherwise refuse. When the gold stopped, so did the acceptance, and the mountain continued pressing.',
  -37.9278, 146.4547, 'abandoned', 79, true, 'active'
),

-- 14. Steiglitz
(
  'Steiglitz',
  'steiglitz',
  'A courthouse built in 1875 is the only thing still standing in a town that had a population of thousands.',
  'Steiglitz stands in the Moorabool Valley south of Ballarat, a gold rush settlement that grew rapidly after 1851 and declined with equal speed as accessible alluvial deposits were exhausted. At its height in the 1860s and 1870s, Steiglitz held several hundred residents and sufficient administrative activity to justify constructing a formal courthouse in 1875 — a solid brick building in Italianate style that survives intact and is classified by the National Trust of Australia. The settlement around it does not. A grid of streets still registers in the vegetation patterns, and brick chimney stacks rise at intervals through the regrowth where houses once stood — the brick too heavy to cart away, the timber long since salvaged or decomposed. The last residents departed in the 1920s. Steiglitz Historic Park now preserves the courthouse and the street-grid outline visible from the surrounding scrub. Walking the former streets through regrown bush, with chimneys marking each former dwelling, is to move through a settlement that communicated its ending through architecture: not collapsed under crisis, but simply stopped.',
  'The courthouse was built in 1875, which means someone in 1875 still believed the town had a future worth investing formal institutions in. Within ten years that conviction had reversed. The courthouse stayed because brick courthouses stay when nobody pulls them down. Everything else adopted the logic of the scrub.',
  -37.7833, 144.0833, 'abandoned', 51, false, 'active'
),

-- 15. Fryerstown
(
  'Fryerstown',
  'fryerstown',
  'The cemetery on the hill is full of men who died of miners'' phthisis. The disease was listed in the register as something else.',
  'Fryerstown sits in the granite country of the Mount Alexander ranges, nine kilometres from Castlemaine, in a landscape that still shows the marks of the 1850s gold rush in its topography — worked creek beds, disturbed hillsides, paddock walls built from quarried stone that served no agricultural purpose. The town grew around Fryers Creek from 1851, reaching a peak of several thousand residents who built a hotel, schools, churches, and the infrastructure of intended permanence. The St. Alipius Catholic Church, erected in 1861, still stands and serves the reduced community. The hospital, stores, and most of the residences do not. The cemetery on the ridge above the town contains the graves of goldfield residents from the 1850s and 1860s — many of them young, many of them Irish, and a significant number recorded in the death register under "miner''s phthisis" or "fever," the diagnostic language of the time. Miners'' phthisis is silicosis: the lungs filling with granite dust from inadequately ventilated shafts. It killed slowly and was known by those who worked the shafts to be killing them. Today Fryerstown has perhaps 80 permanent residents. The church and the hillside cemetery remain as the clearest evidence of what was once here.',
  'The cemetery at Fryerstown is full of men who died of miners'' phthisis — silicosis — listed in the register under language that obscured the mechanism: the dust, the shafts, the ventilation that was never adequate. The church they built while dying of it still stands on the hill above them.',
  -37.1167, 144.3847, 'abandoned', 38, false, 'active'
),

-- 16. Tarnagulla
(
  'Tarnagulla',
  'tarnagulla',
  'In 1857 a single prospector found 20,000 ounces of gold here. By 1920 the town had been substantially returned to the land.',
  'Tarnagulla in central Victoria grew from 1857 when gold was found in reef and alluvial deposits across the Tarnagulla Creek system. The discovery of the 34-ounce "Lady of the Lake" nugget and subsequent significant finds drew thousands of miners to a landscape that would yield over 50,000 ounces from its reefs. The town that developed reached a population of several thousand in the 1870s and 1880s, with a main street of commercial buildings, three churches, a mechanics'' institute, and the infrastructure of a confident settlement. As gold production declined through the 1890s and early 1900s, the population dispersed gradually. By the 1920s most commercial activity had ceased. Today Tarnagulla has fewer than 200 residents. The main street retains several heritage buildings in varying states of repair — the post office, a hotel, and the mechanics'' institute — alongside vacant allotments where larger commercial buildings once stood. The surrounding hills still carry the tailings and disturbed ground of the reef workings, and the old cemetery east of town records the goldfield community''s dead with the specificity that cemeteries preserve long after the living have moved on.',
  'The gold here was found in reefs, which meant blasting and crushing rock rather than sifting creek gravel. The dust from reef mining accumulated in the lungs of the men who processed it, and the cemetery east of Tarnagulla records the results with the neutrality that death registers maintain.',
  -36.7000, 143.8333, 'abandoned', 31, false, 'active'
),

-- 17. Blackwood
(
  'Blackwood',
  'blackwood-goldfields',
  'The Wombat State Forest grew back around the gold rush settlement. Most of it is forest again.',
  'Blackwood sits in the Wombat State Forest between Trentham and Daylesford, a former gold rush settlement that the surrounding bush has been reclaiming at its own pace for over a century. Gold was found in the Lerderderg River gorge system from the early 1850s, and a community of several hundred established itself in the forest along Blackwood Creek. At its modest peak the settlement had a hotel, a general store, a school, and the small church whose ruins survive. The forest here is dense — mountain ash and messmate stringybark on the wetter slopes, with the creek running year-round through the gorge below — and the bush regenerated quickly across cleared land once mining ceased. Today Blackwood has perhaps 150 permanent residents, a general store, and a garden (St. Erth) that has operated continuously since the 1860s as one of Victoria''s oldest cultivated gardens. Walking the creek flats and the old diggings below the town, it is the gorge and the forest that are dominant. The settlement fitted itself into a gap that the forest has mostly closed.',
  'The forest grew back around the settlement the way forests do — incrementally, over decades, without announcement. The diggings along the creek are the clearest evidence of what was here. The garden at St. Erth has been maintained continuously since the 1860s, which is the most stubborn thing the settlement left behind.',
  -37.4667, 144.2833, 'abandoned', 27, false, 'active'
),

-- 18. Graytown
(
  'Graytown',
  'graytown',
  'A town of four thousand people in 1860. Now a few dozen residents and the ruins of what they built.',
  'Graytown in the Strathbogie Ranges near Heathcote was one of the larger gold rush settlements of north-central Victoria, reaching a population estimated at 4,000 in the early 1860s following gold discoveries along the local creek system. The town developed a main street of commercial premises, a courthouse, several hotels, a post office, and residential streets that extended for several blocks from the commercial centre. As the gold declined through the 1870s, the population fell away faster than many comparable goldfield towns — the surrounding land was too poor for successful pastoral conversion, removing the economic alternative that sustained other settlements past their mining era. By 1900 Graytown''s population had collapsed. Today a small community of a few dozen residents occupies the area, the remaining heritage buildings in various states of preservation, and the old cemetery where the death register lists the goldfield community under the causes that were understood at the time. The ruins of several commercial premises stand among regrowth on the former main street, their brick walls open to the sky, the floor plans legible in the foundations.',
  'Four thousand people in 1860 and a few dozen now. The land around Graytown was too poor for farming once the gold was gone, which meant the population left without leaving a pastoral economy behind it. The ruins on the main street have open skies where the ceilings were. The cemetery has closed them.',
  -36.9667, 144.7667, 'abandoned', 24, false, 'active'
),

-- 19. Yallourn
(
  'Yallourn',
  'yallourn',
  'A town of five thousand people was demolished in 1985 to extend a coal mine. Nothing remains above ground.',
  'Yallourn was built from 1921 by the State Electricity Commission of Victoria as a model workers'' town for the Yallourn Power Station and open-cut brown coal mine in the Latrobe Valley. Designed by Walter Burley Griffin — who also designed Canberra — the town followed garden city principles: curved streets, parks, a central shopping centre, and housing designed to a standard above what the workers'' wages alone could have secured. By the 1970s Yallourn housed approximately 5,000 people with a functioning school, hospital, sporting clubs, and a community that had existed for three generations. In 1975 the State Electricity Commission announced that the coal seam beneath the town would be mined, requiring Yallourn''s complete demolition. Residents were given compensation and relocated. Between 1981 and 1989, every building in Yallourn was destroyed. The power station was demolished in 1998. The site is now an open-cut mine void. No structure from Yallourn survives above ground. The town''s existence is recorded in photographs, in the memories of those who lived there, and in a small collection held by the Latrobe Valley Authority. The mine that replaced it is still operating.',
  'The State Electricity Commission built the town, operated the town, and then demolished the town when it became inconvenient to leave it standing. The coal was more valuable than the community. Three generations of residents were given compensation and relocated. The town was then removed from the landscape as thoroughly as it is possible to remove a thing.',
  -38.1833, 146.3833, 'abandoned', 58, true, 'active'
),

-- ── STRANGE HISTORY ──────────────────────────────────────────

-- 20. Ned Kelly's Last Stand
(
  'Glenrowan — Kelly''s Last Stand',
  'kelly-last-stand-glenrowan',
  'The plan required a train to derail. A schoolteacher with a lantern ensured it did not.',
  'The siege at Glenrowan in June 1880 was the final chapter of the Kelly Outbreak — a two-year period of robbery, police killing, and outlaw survival that had made Ned Kelly the most wanted man in Victoria. The plan was to lift the rails on the police line near Glenrowan, derail the special police train, and then operate freely across the colony while police were in disarray. What disrupted it was a hostage released too early: schoolteacher Thomas Curnow, allowed by Kelly to walk home, flagged down the approaching train with a lantern. Police surrounded Ann Jones'' Inn where the gang and sixty hostages were confined through a night-long siege. The Kelly gang wore crude iron armour fashioned from ploughshares, each suit weighing approximately 44 kilograms, protecting the torso and head but leaving the legs exposed. At dawn on June 28, Ned Kelly walked out of the fog into the police line and was brought down by shots to his unprotected legs. Joe Byrne was killed by a police bullet in the early hours. Dan Kelly and Steve Hart died when the inn was burned. Kelly was hanged at Old Melbourne Gaol on November 11, 1880, aged 25. His last words are disputed. "Such is life" is the version that survived.',
  'Three men dead in a burning inn; one man walked into the fog wearing 44 kilograms of iron and was brought down by shots to the legs. The plan required the train to derail. A schoolteacher with a lantern decided it would not. Such is life — the phrase works as resignation or as irony, which is perhaps why it survived.',
  -36.4667, 146.2333, 'strange_history', 96, true, 'active'
),

-- 21. Eureka Stockade
(
  'Eureka Stockade',
  'eureka-stockade',
  'Twenty minutes of fighting in December 1854 changed the terms of citizenship in Victoria.',
  'The Eureka Stockade was the last armed rebellion on Australian soil. At 3 a.m. on December 3, 1854, 276 British soldiers and mounted police attacked a makeshift fortification on the Eureka Lead outside Ballarat, where between 120 and 150 armed miners had gathered to resist colonial authority. The battle lasted approximately twenty minutes. Twenty-seven miners and five soldiers were killed. The miners'' grievances were specific: a mining licence costing 30 shillings per month, enforced through arbitrary and often corrupt inspections, with no political representation in the colonial legislature for those who paid it. The Southern Cross flag — raised on Bakery Hill four days before the attack — became the symbol of the rebellion. Thirteen men were tried for high treason. All were acquitted, juries declining to convict men whose cause had wide public sympathy. Within eighteen months, the colonial government had enacted most of the Ballarat Reform League''s demands: parliamentary representation for miners, replacement of the licence with an affordable Miner''s Right. Peter Lalor, the rebellion''s military commander, was subsequently elected to the Victorian Legislative Assembly. The Eureka Flag survives in the Museum of Australian Democracy at Eureka in Ballarat.',
  'Twenty minutes. In twenty minutes on a December morning in 1854, the terms of citizenship in Victoria were renegotiated — imperfectly, incompletely, but unmistakably. The flag the miners raised is still in Ballarat. The reform it demanded is now called democracy.',
  -37.5583, 143.8581, 'strange_history', 107, true, 'active'
),

-- 22. Burke and Wills
(
  'Burke and Wills Departure',
  'burke-and-wills-departure',
  'Fifteen thousand people watched them leave Melbourne. Two of the nineteen came back.',
  'The Victorian Exploring Expedition departed Royal Park in Melbourne on August 20, 1860, watched by an estimated 15,000 people. Robert O''Hara Burke — a former Irish police inspector with no surveying experience — led 19 men and 27 camels north toward the Gulf of Carpentaria, with the intention of crossing Australia from south to north for the first time. The planning was catastrophic from the outset: excessive supplies, internal disputes, and pace decisions that exhausted the animals. Burke reached the Gulf of Carpentaria on February 9, 1861 — close enough to smell salt water in the tidal mangroves — but could not see open water through the dense vegetation. The party turned south. On the return journey, Charles Gray died of illness. Burke and Wills both died of starvation within kilometres of the Cooper Creek depot, where a relief party had waited four months before departing that same morning. The expedition''s sole survivor, John King, was found alive on September 15, 1861 by a rescue party, having been kept alive by the Yandruwandha people of the Cooper Creek region. Burke and Wills'' remains were returned to Melbourne and accorded a state funeral on January 21, 1863 — the largest public funeral in Victorian history. The departure point in Royal Park is marked with a monument.',
  'Fifteen thousand people watched them leave Royal Park on August 20, 1860. The expedition had more than enough of everything except good judgment. Burke reached the Gulf of Carpentaria but could not see the sea through the mangroves, and died forty kilometres from help having solved the wrong problem.',
  -37.7856, 144.9558, 'strange_history', 74, true, 'active'
),

-- 23. Convincing Ground Massacre
(
  'Convincing Ground',
  'convincing-ground-massacre',
  'Sealers killed a group of Gunditjmara people at Portland Bay in the early 1830s over a stranded whale. The ground is named for what they did.',
  'The Convincing Ground massacre took place at Portland Bay in the early 1830s, making it among the earliest documented mass killings of Aboriginal people by European settlers in what would become Victoria. A group of Gunditjmara people who had gathered at the bay to process a stranded whale were attacked by a party of sealers who wanted the carcass for themselves. The killing was extensive; estimates of the death toll range from dozens to over 200. The site takes its name from the term current in the sealers'' trade for violent coercion: the Gunditjmara people were "convinced" — beaten — into surrendering the whale. Portland Bay was not formally settled by European pastoralists until November 1834, when the Henty brothers established their station, meaning the massacre occurred in the period of irregular maritime contact that preceded formal colonisation — a period when records were kept selectively and violence against Aboriginal people was neither prosecuted nor routinely reported. The Convincing Ground is now a coastal flat near the town of Portland. It was unmarked for most of Australian history and has been the subject of ongoing scholarly and community work to establish its precise location and the full circumstances of what occurred there.',
  '"Convincing" was the term the sealers used for beating people into surrender. The Gunditjmara people were being convinced to give up a whale they had gathered to process. Portland was settled formally the following year, and the records of what happened before settlement are mostly what the settlers chose to write down.',
  -38.3550, 141.6100, 'strange_history', 41, true, 'active'
),

-- 24. Warrigal Creek Massacre
(
  'Warrigal Creek',
  'warrigal-creek-massacre',
  'The man who cleared Gippsland of its people has a highway named for him. The people he cleared have a creek.',
  'Warrigal Creek in East Gippsland was the site of one of the largest documented massacres in Victorian colonial history, carried out in April–May 1843 by a party of Highland Scottish stockmen led by pastoralist Angus McMillan. Between 60 and 150 Gunaikurnai people were killed at the creek crossing, in nominal retaliation for the earlier killing of one European settler. McMillan had been conducting a systematic series of attacks on Gunaikurnai communities across Gippsland since 1840, a campaign that researchers estimate killed over 1,000 Aboriginal people in total and secured the pastoral occupation of the region through violence. No charges were ever laid. McMillan was celebrated as the "discoverer" of Gippsland. The Princes Highway — the main road connecting Melbourne to East Gippsland — carries his name. Statues stand in Bairnsdale and Heyfield. The creek is not marked. The statues have attracted explanation plaques in recent years; the highway retains his name. The debate about what, if anything, should be done with monuments to a man who conducted a documented massacre campaign has been conducted in Gippsland for two decades without resolution.',
  'The man who cleared Gippsland of its people has a highway named for him, and statues, and the title of discoverer. The people he cleared have Warrigal Creek. For a hundred and eighty years these have been presented as unrelated facts about the same history. They are not unrelated.',
  -37.9000, 147.5500, 'strange_history', 49, true, 'active'
),

-- 25. Murchison POW Escape
(
  'Murchison Camp Breakout',
  'murchison-pow-escape',
  'On the night of March 4, 1944, 251 Japanese prisoners went over the wire at once. It was Australia''s bloodiest prisoner-of-war incident.',
  'The Murchison prisoner of war camp in central Victoria held Japanese military prisoners captured during World War II. On the night of March 4–5, 1944, in the largest mass escape in Australian prisoner-of-war history, 251 Japanese prisoners staged a breakout using improvised weapons, baseball bats from the camp''s recreation area, and wire-cutting tools fabricated in the prison workshop. For many participants, surrender had constituted death under the Japanese military code — they were already without honour and had little to lose. The alarm was raised as prisoners flooded the perimeter wire. Four Australian guards were killed or seriously wounded. Twenty-five Japanese prisoners were killed in the escape and its immediate suppression. The remainder were recaptured within days in the surrounding farmland. No prisoner reached freedom. The Murchison escape is the deadliest prisoner-of-war incident in Australian history. The camp site now operates as a heritage park. A Japanese memorial garden was established through bilateral community effort in 1992 — built by the descendants of those who had been captors and those who had been captives, on the ground where the violence occurred. The cricket ground where prisoners played sport, and practised the swing that became a weapon, is preserved.',
  'For many of the men who went over the wire at Murchison, they had been dead by Japanese military reckoning since the moment of their capture. Surrender was dishonour; dishonour was death. The escape was not a bid for freedom in the usual sense. It was a bid for a different kind of death, on better terms. The baseball bats were already in their hands.',
  -36.6167, 145.2333, 'strange_history', 57, true, 'active'
),

-- 26. Creswick Mine Disaster
(
  'Creswick Mine Disaster',
  'creswick-mine-disaster',
  'Twenty-two men drowned underground on December 12, 1882. They are still in the shaft.',
  'On December 12, 1882, the Bradford''s Shaft gold mine at Creswick — ten kilometres north of Ballarat — was flooded when an old abandoned puddling dam ruptured upstream and forced water through a series of connected underground workings. Twenty-two men were below ground when the water came through. The inundation was too rapid for any to reach the shaft in time. Rescue operations began immediately but the volume of water entering the system made approach impossible; the lower levels were displaced of breathable air within hours. Twenty-two men drowned. None of the bodies was ever recovered. Their average age was 30 years; most were married with children. The disaster was the worst in Victorian goldfield history and prompted legislative review of abandoned shaft mapping and mine safety, though effective gold mining regulation was already becoming moot as production declined across the central goldfields. The Bradford''s Shaft was sealed. The men remain underground. A memorial in Creswick records their names in a cemetery where none of them is buried — the stones marking men who are still in the ground, just not the ground where the stones stand.',
  'The bodies are still in the shaft. That detail has not changed in a hundred and forty years. The memorial lists their names in a cemetery where none of them is actually buried. They are still underground, the way the gold was still underground — in the same shaft, in some cases the same level.',
  -37.4250, 143.8997, 'strange_history', 43, true, 'active'
),

-- 27. Black Thursday
(
  'Black Thursday, 1851',
  'black-thursday-1851',
  'Forty-seven degrees. One million sheep. Five million acres burning on a single day — five months before Victoria existed as a colony.',
  'On February 6, 1851, the Port Phillip District experienced a day of fire that would be recorded as Black Thursday — the worst natural disaster in the region''s history. Temperature in Melbourne reached 47 degrees Celsius. Northerly winds of extreme velocity carried fire simultaneously across five million acres from the Western District coast to Gippsland, from the Pyrenees to Port Phillip Bay. Twelve human deaths were recorded in official accounts, though the actual toll across the sparsely settled interior was certainly higher. One million sheep, 10,000 cattle, and thousands of horses died. Five months later, Victoria separated from New South Wales as its own colony. Six months after that, gold was discovered at Ballarat. The pastoral economy that Black Thursday had devastated was already being displaced by a gold-rush economy that would transform the continent within three years. William Strutt painted Black Thursday from eyewitness accounts in 1864, producing a panoramic work that remains in the State Library of Victoria — the most direct visual record of a day so extreme that the pastoralists who survived it questioned whether the land was habitable at all. It was. The gold rush proved that decisively.',
  'Forty-seven degrees and one million sheep. Black Thursday arrived five months before Victoria became Victoria, and six months before the gold was found at Ballarat. It is as though the land went through the worst it could manage and then presented the gold as compensation — or as a test of whether people would return. They did.',
  -37.5000, 143.2000, 'strange_history', 62, true, 'active'
),

-- 28. Buckland River Riot
(
  'Buckland River Riot',
  'buckland-river-riot',
  'At dawn on July 4, 1857, four thousand men attacked a Chinese mining settlement in one of Victoria''s most beautiful valleys.',
  'On the morning of July 4, 1857, a mob of approximately 4,000 European miners descended on a Chinese mining settlement of around 2,000 people at the Buckland River in north-east Victoria. The attack was coordinated and anticipated: it began at dawn. Tents were looted and burned, gold dust and equipment were stolen, and between 2 and 3 Chinese miners were killed outright, with 50 or more injured and an unknown number dying of exposure after fleeing into the surrounding ranges without possessions or shelter. The Buckland Valley attacks preceded the more widely documented Lambing Flat riots in New South Wales by four years, establishing the pattern: European miners organising mob violence to expel Chinese competition, colonial governments responding with immigration restriction legislation that implemented the same goals by legal means. The Victorian government''s response was regulatory: new restrictions on Chinese immigration. The Buckland Valley — spectacular in its alpine scenery, the valley floor running beneath peaks that carry the names given by European surveyors in the 1850s — contains no significant public marking of what occurred there on July 4, 1857.',
  'July 4th — American Independence Day — was the date chosen for the attack. Whether this was symbolic or coincidental is not recorded. Four thousand men at dawn against two thousand people who had been mining gold in a beautiful valley, who then ran into the mountains without their possessions. The legislation that followed did the same thing more quietly.',
  -36.7167, 146.8333, 'strange_history', 36, false, 'active'
),

-- 29. Point Nepean
(
  'Point Nepean',
  'point-nepean',
  'The first shot fired by the British Empire in World War One may have been fired here — at a German merchant ship trying to leave the bay.',
  'Point Nepean occupies the western headland at the entrance to Port Phillip Bay, across the narrow strait from Queenscliff. A quarantine station operated on the peninsula from 1852 to 1981, processing thousands of immigrants arriving by sea and isolating those who carried disease. The fortifications — the Nepean Battery — were built in the 1880s to command the entrance to the bay. On August 5, 1914, the day after Britain declared war on Germany, the battery fired a warning shot across the bow of the German merchant vessel SS Pfalz as it attempted to leave Port Phillip Bay and evade internment. The shot — fired before any other confirmed engagement involving British Empire forces — is argued by some military historians to be the first shot fired by the Empire in World War I. Whether this distinction is precisely accurate is debated, but no earlier confirmed engagement has been identified. The battery fired again at the outbreak of World War II in 1939. The fortifications — tunnels, gun emplacements, magazines, and barracks — survive in exceptional completeness within Point Nepean National Park, accessible by restricted permit through the former military exclusion zone. The quarantine station''s cemetery holds the remains of those who arrived in the bay and did not leave it.',
  'The first shot of the First World War may have been fired here — at a German merchant ship trying to leave the bay before the news of the declaration caught up with it. Whether it was the first shot or one of the first shots is for historians to decide. The bay it was trying to escape is visible from the gun emplacement that fired at it.',
  -38.3167, 144.6833, 'strange_history', 52, true, 'active'
),

-- 30. Phar Lap
(
  'Phar Lap',
  'phar-lap',
  'He won thirty-seven races and died at five years old in California. His heart is in Melbourne. The cause of death is disputed.',
  'Phar Lap was a New Zealand-bred thoroughbred who dominated Australian racing from 1929 to 1932, winning 37 of 51 starts including the 1930 Melbourne Cup and 14 consecutive races across a single extraordinary streak. He was taken to North America in early 1932 to demonstrate Australian racing internationally, winning the Agua Caliente Handicap in Mexico on March 20 by a convincing margin in an unfamiliar environment. Sixteen days later, on April 5, 1932, he was found dead in his stall at Menlo Park, California. He was five years old. The official finding was acute duodenitis — gut inflammation — possibly triggered by insecticide-sprayed feed. The unofficial theory: poisoning by American racing interests threatened by his performance. Neither explanation has been definitively confirmed or refuted. Hair analysis conducted in 2000 identified elevated arsenic levels consistent with either insecticide exposure or deliberate administration; the data cannot resolve which. His heart, weighing 6.35 kilograms — approximately twice the normal thoroughbred average — is on display at the Melbourne Museum. His hide is in Wellington, New Zealand. His skeleton is at the Australian Museum in Sydney. No country fully claimed him, so he was divided between the countries that had use for him.',
  'He won thirty-seven of fifty-one races and died at five years old, alone in a stable in California, two weeks after his greatest international performance. His heart was twice the normal size, which explains the career but not the death. The arsenic in his hair explains the death but not which hand put it there.',
  -37.8136, 144.9689, 'strange_history', 83, true, 'active'
);
