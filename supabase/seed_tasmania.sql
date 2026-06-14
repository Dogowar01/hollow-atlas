-- ============================================================
-- HOLLOW ATLAS — Tasmania Seed Locations
-- Run in: Supabase Dashboard → SQL Editor → New query
-- ============================================================

insert into public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
values

-- 1. Port Arthur — The Parsonage
(
  'Port Arthur — The Parsonage',
  'port-arthur-parsonage',
  'Ghost sightings recorded here since 1870.',
  'More than 1,000 people died at Port Arthur during its 47-year operation as a penal settlement (1830–1877). Ghost stories date almost to the moment it closed — making it one of the earliest documented haunted sites in Australia. The Parsonage is considered the most active building: reports include bright flashing lights, loud banging, ghostly footsteps, phantom strangulations, and multiple apparitions — among them a small girl with her face pressed against the Medical Officer''s Residence window, a soldier in red at Tower Cottage, and a disembodied head in the old dissection room. The "Lady in Grey," believed to be a woman who died in childbirth, has been reported by independent witnesses across decades. The site''s official ghost tours have logged more than 2,000 unexplained incidents. Photographers consistently capture unexplained figures in long exposures inside the buildings.',
  'This place has been narrating its own history since before anyone thought to write it down. The dead here did not leave — they simply stopped being counted.',
  -43.1359, 147.8503, 'haunted', 89, true, 'active'
),

-- 2. Isle of the Dead
(
  'Isle of the Dead',
  'isle-of-the-dead',
  '1,646 buried. Most without names. The division holds in death.',
  'The Isle of the Dead served as burial ground for approximately 1,646 people who died within the Port Arthur penal settlement. Around 1,100 were convicts, buried in unmarked mass graves at the southern end of the island. The northern section — marked by headstones — was reserved for free settlers, soldiers, and officials. The division of class maintained in life was maintained in death, and that division remains visible in the landscape today. The most striking historical account comes from Mark Jeffrey, a convict who lived on the island as the resident gravedigger. Jeffrey claimed to have encountered a horned creature with smouldering eyes among the graves at night. Modern visitors consistently report an overwhelming sense of melancholy, disembodied whispering, and ghostly figures standing among the unmarked southern graves before vanishing entirely.',
  'The island does not haunt indiscriminately. It remembers exactly who was buried where, and why they were kept apart. That knowledge has not faded.',
  -43.1421, 147.8528, 'haunted', 54, true, 'active'
),

-- 3. Willow Court Asylum
(
  'Willow Court Asylum',
  'willow-court-asylum',
  'Australia''s oldest psychiatric hospital. Closed in 2000. Still not quiet.',
  'Willow Court opened in 1827 as the New Norfolk Insane Asylum — Australia''s oldest continuously operating psychiatric institution. Its sandstone barracks were completed in 1831, the name derived from two willow trees planted by Lady Jane Franklin in the forecourt. Over 173 years and at least seven different official names, the institution held patients diagnosed with conditions ranging from alcoholism to severe psychosis. Many were effectively warehoused for decades with no treatment pathway. The hospital closed in November 2000. Reports of paranormal activity emerged almost immediately: apparitions of former staff and patients, unexplained sounds in the ward corridors, and disturbingly, the figures of children in areas that were never children''s wards. In February 2011, the Derwent Valley Council formally approved a paranormal investigation of the site — an unusual official acknowledgment of the interest surrounding it.',
  'There is a particular quality to a place that was meant to contain suffering and failed at it. Willow Court still holds what it was built to hold.',
  -42.7822, 147.0591, 'haunted', 67, true, 'active'
),

-- 4. Richmond Bridge
(
  'Richmond Bridge',
  'richmond-bridge',
  'He was thrown from this bridge in 1829. He never left.',
  'Australia''s oldest surviving stone arch bridge was built between 1823 and 1825 using convict labour. George Grover — a transported convict who had completed his sentence and found work as a flagellator — supervised the site with exceptional brutality. He forced convicts to drag heavy trolleys while he sat on top whipping them, administering lashings regardless of any infraction. One night in 1829, Grover fell asleep drunk on the bridge. Convicts found him, beat him with a pickaxe, and threw his body into the Coal River below. His ghost is among Tasmania''s best-documented apparitions: a shadowy figure crossing the bridge or standing on its banks, sometimes following visitors away from the site. A separate legend involves a small black dog, said to be Grover''s animal — appearing as a warning that Grover''s spirit is near. Both accounts predate the modern era of paranormal tourism.',
  'The bridge carries weight it was not designed to carry. Every stone in it was placed by a man Grover would have whipped. They are still here. So is he.',
  -42.7356, 147.4372, 'haunted', 43, true, 'active'
),

-- 5. Sarah Island
(
  'Sarah Island',
  'sarah-island',
  'In 1823 alone, 9,100 lashes were recorded here.',
  'Operating from 1822 to 1833, Sarah Island was Tasmania''s first and most brutal penal station — predating Port Arthur, and far more severe in its daily punishment regime. Convicts worked from dawn to dusk in leg-irons in the driving rain of the remote west coast. In 1823 alone, 9,100 lashes were formally recorded. The most notorious figure to emerge here is Alexander Pearce, an Irish convict transported for stealing six pairs of shoes. He escaped with seven others into the wilderness. One by one, his companions were killed and eaten. Recaptured and returned to the island, the magistrate disbelieved his cannibalism confession. He escaped again in 1823, this time with Thomas Cox. When recaptured, portions of Cox remained in his pockets. Pearce was hanged in Hobart Town on 19 July 1824. His skull was sold to American phrenologist Samuel George Morton and is now held at the Penn Museum in Philadelphia.',
  'Sarah Island produced men who did things that words were not built to describe. The wilderness swallowed most of the evidence. What remains is enough.',
  -42.1538, 145.4015, 'strange_history', 38, true, 'active'
),

-- 6. Hobart Convict Penitentiary
(
  'Hobart Convict Penitentiary',
  'hobart-convict-penitentiary',
  '32 executions. 40,000 prisoners. The solitary cells were sealed and forgotten.',
  'The Hobart Penitentiary began in 1821 as the Hobart Prison Barracks and grew into the city''s main place of incarceration and execution. Over 40,000 prisoners passed through between 1821 and the 1960s. The 1834 chapel was built directly above 36 solitary confinement cells — the smallest of which were sealed in 1847 as too inhumane even for 19th-century standards, with no light or ventilation. Thirty-two executions were carried out here between 1857 and 1946. The underground cell network beneath the chapel is a consistent focal point for reported phenomena: cold spots in sealed chambers, shadow figures in the solitary tunnels, and auditory occurrences near the former gallows. The National Trust, which manages the site, operates official paranormal investigation nights — an unusual degree of institutional acknowledgment for a heritage property.',
  'The cells beneath the chapel were sealed while people were still alive above them. That decision is still being processed by the building.',
  -42.8812, 147.3274, 'haunted', 71, true, 'active'
),

-- 7. Anglesea Barracks Military Gaol
(
  'Anglesea Barracks Military Gaol',
  'anglesea-barracks-military-gaol',
  'Soldiers. Then girls. Australia''s only surviving 19th-century military prison.',
  'Built in 1847, the Military Gaol at Anglesea Barracks is Australia''s only surviving 19th-century military prison, located within the oldest military barracks still in active use in the country. Originally designed to hold wayward soldiers — a gaoler''s quarters and twelve cells — it later served as a girls'' reformatory from 1881 to 1905, following the withdrawal of the last British regiment in 1870. A building that began as punishment for professional soldiers became, within a decade, a place of confinement for young women from the colony. The overlap of military incarceration and juvenile female detention in the same twelve rooms, across nearly six decades, has created the kind of layered institutional history that paranormal investigators describe as producing persistent, cross-layered activity. The Army Museum of Tasmania now occupies the broader barracks complex.',
  'This building held soldiers and girls within the same twelve cells, decades apart. Both populations left things behind that did not dissolve when the door was opened for the last time.',
  -42.8955, 147.3231, 'haunted', 28, true, 'active'
),

-- 8. Cascades Female Factory
(
  'Cascades Female Factory',
  'cascades-female-factory',
  'Built on swampland. UNESCO listed. Children born here often did not leave.',
  'Purpose-built in 1828 and operating until 1856, the Cascades Female Factory was intended to separate female convicts from "the temptations of Hobart" and extract productive labour from them through laundry and needlework. Located on damp swampland beneath Mount Wellington, the institution was chronically overcrowded, poorly ventilated, and cold. Disease and infant mortality were high. Children born inside were placed in a nursery; many died. It is the only surviving female factory in Australia with intact enough remains to convey what the system actually was. Inscribed on the UNESCO World Heritage List in 2010, it is now formally recognised as a place of global historical significance. Visitor accounts consistently describe cold presences and unexplained sounds in the ruins, concentrated particularly around the nursery site.',
  'The nursery wing is the part of this place that refuses to be reclaimed by heritage tourism. Something there continues to record what happened to those children.',
  -42.9052, 147.3203, 'strange_history', 52, true, 'active'
),

-- 9. Franklin House
(
  'Franklin House',
  'franklin-house-launceston',
  'Investigators asked for a name. The audio captured: "Will."',
  'Built in 1838 for Britton Jones, a former convict who had established himself as a Launceston brewer and innkeeper, Franklin House operated as a boys'' school between 1842 and 1866 under schoolmaster William Keeler Hawkes. In 1960 it became the first property acquired by the National Trust of Tasmania. Staff reported unusual experiences in the building almost immediately, concentrated in the former boys'' dormitory. In early 2013, the Tas Ghost Hunting Society conducted a formal investigation. In a sitting room, investigators recorded elevated electromagnetic field readings. During a session addressing an empty room, they asked "What is your name?" — and claim to have captured an audio response: "Will." The Launceston Skeptics publicly challenged the findings. The identity of "Will" — whether a former student, staff member, or audio pareidolia — remains unresolved. Hawkes, the schoolmaster, is sometimes put forward. No definitive record of a student named Will dying on the premises exists.',
  'The question was asked in an empty room. Something in the building understood that it was being addressed and responded with the only word it had left.',
  -41.4736, 147.1481, 'haunted', 19, true, 'active'
),

-- 10. Queenstown Lunar Landscape
(
  'Queenstown Lunar Landscape',
  'queenstown-lunar-landscape',
  'They burned 3 million tonnes of timber. The hills have not recovered.',
  'Gold was discovered in the Mount Lyell area in the 1880s. Commercial copper production began in 1896 using a pyritic smelting process that discharged massive quantities of sulphur dioxide. Combined with the felling of approximately 3 million tonnes of timber between 1896 and 1923 to fuel eleven smelting furnaces, the hillsides surrounding Queenstown were stripped bare within a generation. The exposed conglomerate rock — pink and grey hues of Mount Lyell and Mount Owen — created what became known as the "moonscape." As of now, acid mine drainage continues to contaminate the Queen River and its watershed. Scientists describe sections as biologically dead. The King River downstream remains one of the most severely polluted waterways in Australia. Some local residents still defend the landscape as uniquely beautiful. Others regard it as an ongoing environmental crime scene stretching back 130 years.',
  'This is what extraction looks like when it finishes. Not an accident — a calculation. The land was worth less than the metal inside it, and the company knew that before the first furnace was lit.',
  -42.0820, 145.5529, 'strange_history', 31, true, 'active'
),

-- 11. Pillinger Ghost Town
(
  'Pillinger Ghost Town',
  'pillinger-ghost-town',
  'Rail tracks extend into the harbour and disappear under the water.',
  'Pillinger was constructed in 1898 as a dual-purpose port on the remote shores of Macquarie Harbour: East Pillinger held three wharves, a sawmill, brickworks, and ore crusher; West Pillinger had hotels, stores, and a police station. At its peak it was a functioning industrial settlement. When the Mount Lyell Mining company chose Strahan as its preferred port, Pillinger became economically obsolete almost overnight. The last family — the Crossans — departed in 1943. Today the ruins include two brick kilns, three boiler engines, a partial train carriage, and sections of rail line that extend several hundred metres out into the harbour before vanishing beneath the water. The effect is surreal: a railway line simply walking into a lake, with nothing on the other side.',
  'The rail tracks do not end. They continue into the water at the same angle, at the same gauge, with the same purpose they always had. The harbour simply rose to meet them.',
  -42.2250, 145.3920, 'abandoned', 22, true, 'active'
),

-- 12. Mathinna Gold Rush Town
(
  'Mathinna Gold Rush Town',
  'mathinna-gold-rush-town',
  'Third largest town in Tasmania. A murder no one solved. Then silence.',
  'Alluvial gold was discovered in the Black Horse Gully area in 1852, and by the 1890s Mathinna had grown into the third largest town in Tasmania. Around 300 men per shift worked the Golden Gate mine, which produced over 260,000 ounces of gold between 1888 and 1932. On 20 June 1913, farmer William James Mullins left home to check possum traps and never returned. His remains were discovered two weeks later in a wooden funeral pyre. His killer was never identified. With the gold rush already winding down and the murder unresolved, Mathinna began emptying. Today around 200 people remain. The surrounding crown land is riddled with abandoned mine shafts, prospect holes, and old workings — most unfenced and unmarked — giving the landscape the character of a place that swallowed its history whole. The shafts go down further than is comfortable to think about.',
  'Eight tonnes of gold came out of this ground. What went in — what was burned in that pyre, what was put in those shafts — was never properly counted.',
  -41.5736, 147.8671, 'abandoned', 17, true, 'active'
),

-- 13. Zeehan Gaiety Theatre
(
  'Zeehan Gaiety Theatre',
  'zeehan-gaiety-theatre',
  'Once the largest concert hall in Australia. Now: fewer than 700 in the whole town.',
  'The Gaiety Theatre was built in 1898 during Zeehan''s silver boom at a cost of £7,075. At its peak it was the largest concert hall in Australia, hosting over 1,000 guests per night. Zeehan''s Main Street supported more than 20 hotels; the Silver City''s population was in the thousands. As the silver and lead mines exhausted their yields in the early 20th century, the Silver City emptied. The theatre and hotel fell into decline. Today fewer than 700 people live in the entire municipality. The building survives largely intact — its Victorian-era concert hall architecture preserved by the town''s sudden halt rather than any deliberate effort. Paranormal investigations have been conducted here since 2020, using electromagnetic detection and audio recording equipment. A place built for 1,000 voices now holds none.',
  'The acoustics were designed for a full house. They still are. The building does not know the audience stopped coming.',
  -41.8833, 145.3333, 'haunted', 14, false, 'active'
),

-- 14. Oatlands — Solomon Blay''s Town
(
  'Oatlands — Solomon Blay''s Town',
  'oatlands-solomon-blay',
  'Australia''s most prolific hangman lived here for 50 years.',
  'Named by Governor Macquarie in 1821 and developed as a military garrison, Oatlands contains more intact colonial sandstone buildings than any rural town in Australia. The Oatlands Courthouse, completed in 1829 by convict labour, served simultaneously as chapel, police office, and court. Floggings, chain gangs, and executions were routine here for decades. It was also the home base of Solomon Blay, Tasmania''s most feared hangman. From 1837 to 1887, Blay is believed to have executed more than 200 people — a figure that, if accurate, makes him one of the most prolific executioners in Australian colonial history. He lived in the town throughout. He shopped at its stores. He walked its streets. The people whose necks he had broken had, in many cases, also walked those streets. Oatlands does not publicise this.',
  'Blay lived here among the people he worked for and the families of people he had killed. A town that size has a long memory, even when it pretends not to.',
  -42.3017, 147.3639, 'strange_history', 25, true, 'active'
),

-- 15. Bridgewater Causeway
(
  'Bridgewater Causeway',
  'bridgewater-causeway',
  'You drive over it every day. Convicts in leg-irons built it by hand.',
  'Established in 1828 at what was then called Black Snake, the Bridgewater Convict Station held the largest convict chain gang on the main road between Hobart and Launceston. Re-offenders — convicts who had already breached the terms of their sentences — were the primary inmates. Punished with heavy iron leg-irons, they were forced to quarry stone by hand, wheel it in barrows to the Derwent River, and use it to construct the causeway that still forms part of the road crossing today. The physical legacy of this labour is invisible to most modern travellers. The Bridgewater causeway is used daily by thousands of commuters who pass over stonework laid by men in chains without any awareness of what built it. The convict station itself has vanished. The causeway endures.',
  'The road does not advertise how it was made. It simply carries weight — the same function it was always built for, now without any acknowledgment of who paid for it.',
  -42.7386, 147.2304, 'strange_history', 11, true, 'active'
),

-- 16. Maria Island — Darlington Probation Station
(
  'Maria Island — Darlington',
  'maria-island-darlington',
  'Three failed colonies in one ruin-scape. No one permanent lives here now.',
  'The first penal settlement at Darlington was established in 1825 for convicts deemed less severe than those sent to Macquarie Harbour. The island''s isolation was meant to be the deterrent — but convicts found it comparatively easy and called it a "place of ease," infuriating colonial authorities, who abandoned it in 1832. The probation station era (1842–1850) saw it repopulated; at peak capacity in 1846, 492 convicts were held here. After transportation ended, Italian entrepreneur Diego Bernacchi established a winery and silk farm in 1884, renaming Darlington "San Diego." That venture collapsed in the early 1900s. Today Darlington has no permanent civilian inhabitants — only park rangers. Fourteen convict-era buildings survive alongside Bernacchi''s wine cellars and the crumbling silk factory, three distinct failed enterprises layered on the same ground.',
  'Three different groups of people came here with plans. None of them worked. The island absorbed each attempt and returned to silence. It has been doing this for 200 years.',
  -42.6004, 148.0543, 'abandoned', 29, true, 'active'
),

-- 17. Maatsuyker Island Lighthouse
(
  'Maatsuyker Island Lighthouse',
  'maatsuyker-island-lighthouse',
  'In 1908, a keeper reported lights under the water. Then he vanished.',
  'Australia''s most southerly lighthouse has operated since 1891 on an island battered by some of the worst weather in the Southern Ocean, directly in the path of the Roaring Forties. Keepers were posted here for months at a stretch, effectively cut off from the mainland. The isolation, darkness, and constant storm conditions created documented psychological pressure on station personnel. In winter 1908, assistant keeper Thomas Grady''s behaviour became increasingly agitated in the days before he, his boat, and any record of his family vanished without trace. The head keeper''s official report noted Grady had claimed to see lights moving beneath the water near the island, and had heard voices calling from empty rooms. No wreckage was ever recovered. The lighthouse today operates as a volunteer weather station posting. The waters around it are among the deepest and least surveyed on the Australian coastline.',
  'The sea near this island is not empty. Grady knew that. The official report recorded what he said and then closed the file. The sea has not closed anything.',
  -43.6556, 146.0922, 'paranormal', 8, false, 'active'
),

-- 18. Campbell Street Gaol Site
(
  'Campbell Street Gaol Site',
  'campbell-street-gaol',
  'An estimated 400 people were executed here. The site is now a car park.',
  'Before the gallows were relocated to the Penitentiary in 1857, the Campbell Street Gaol served as the place of execution for an estimated 300–400 people over several decades of colonial governance. These included convicts, bushrangers, and those convicted of murder in a period when the colony maintained a rigid and frequently applied death penalty. Many executions were public events attended by crowds, serving as spectacles of colonial law and order. The site has been substantially built over. Most Hobart residents walk past it or park on it without awareness of what occurred there. The institutional memory of the site is preserved primarily through colonial newspaper archives. There is no marker. There is no sign. The city simply grew over it.',
  'The ground here was consecrated by repetition rather than ceremony. Four hundred times, a trapdoor. Four hundred times, a crowd. The city built a car park on top and called it progress.',
  -42.8803, 147.3300, 'strange_history', 16, true, 'active'
);
