-- ============================================================
-- HOLLOW ATLAS — New South Wales Extra: Haunted & Paranormal
-- 15 deep-cut locations beyond the original 30
-- Run AFTER seed_nsw.sql
-- Then run seed_nsw_extra_images.sql
-- Then re-run add_state_column.sql (idempotent)
-- ============================================================

INSERT INTO public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
VALUES

(
  'Picton Mushroom Tunnel',
  'picton-mushroom-tunnel',
  'The ghost train still whistles. Emily Bollard is still in the middle of the tracks.',
  'The Redbank Range Railway Tunnel at Picton was constructed in 1867 as part of the Great Southern Railway — the first railway tunnel used by NSW Railways. By 1919 it was decommissioned, its gradient and ventilation too poor for modern use. During World War II the RAAF stored mustard gas and munitions inside it in preparation for an expected Japanese chemical attack. None of that is the part locals remember. In 1884 a decapitated man was discovered in the tunnel; his identity and the manner of his death were never established. In 1916 a 51-year-old woman named Emily Bollard was struck and killed by a train while cutting through the tunnel, her body dragged into Picton Station. Her ghost — typically described as a faceless white figure — has been reported in the tunnel continuously since. Witnesses describe abrupt temperature drops, the sound of a train whistle with no train, and a sensation of displaced air suggesting an oncoming locomotive in a tunnel that has carried no rolling stock for over a century. The tunnel is now closed to the public. Picton itself has accumulated enough accounts across multiple sites that it is considered the most haunted town in New South Wales, a designation that began with the tunnel and has never quite left it.',
  'She was just cutting through. That is all she was doing. The tunnel remembered it differently.',
  -34.1769, 150.6046, 'haunted', 44, true, 'active'
),

(
  'Jenolan Caves',
  'jenolan-caves-wiburd',
  'He worked here for fifty years. He named the chambers after hell. He never left.',
  'Jenolan Caves in the Blue Mountains is one of the world''s most extensive cave systems, with known passages extending over 40 kilometres. James Carvosso Wiburd arrived as caretaker in 1885 and remained for nearly half a century, dying in 1942. He was a freemason with a particular interest in the underworld — not metaphorically. He named cave chambers after specific features of classical and biblical hell: the Temple of Baal, the River Styx, the Chamber of Moloch. His ashes were interred deep in the cave system he had spent his life inside. The haunting accounts began almost immediately after his death and have continued without significant interruption since. Tour guides report a tall man in a crumpled suit and moustache appearing in peripheral vision, then absent when looked at directly. Gates rattle in sections of cave with no airflow. Lights in secured areas activate and deactivate without apparent cause. Guide Geoff Melbourne documented encounters over multiple years and identified the figure from period photographs: it corresponds to Wiburd''s known appearance in the late 1930s. The caves receive over 250,000 visitors annually. A meaningful fraction of them report something in the deeper chambers that they decline to describe specifically but do not describe as comfortable.',
  'He named the caves after hell and spent fifty years mapping them. What he found there, he kept.',
  -33.8192, 150.0214, 'haunted', 31, true, 'active'
),

(
  'The Fisher''s Ghost',
  'fisher-ghost-campbelltown',
  'Frederick Fisher disappeared in 1826. Then he was seen sitting on his own fence post, pointing at the creek.',
  'Frederick Fisher was a freed convict farming near Campbelltown who vanished in June 1826. His neighbour George Worrall claimed Fisher had returned to England. Several months later, a local man named John Farley reported seeing a figure sitting on Fisher''s fence post at dusk — a figure he identified as Fisher himself, who pointed silently toward a nearby creek before disappearing. Farley reported the incident to the local constable. The creek was searched. Frederick Fisher''s decomposed body was found exactly where the apparition had indicated. George Worrall was tried for murder, convicted on largely circumstantial evidence, and hanged in February 1827. Fisher''s Ghost is considered Australia''s most historically documented ghost story — it generated formal police action and a murder conviction within months of the sighting, making it unusual among colonial ghost accounts in having a verifiable legal outcome directly linked to the paranormal report. The town of Campbelltown has commemorated the story for nearly two centuries; Fisher''s Ghost Creek is a named watercourse on current maps. Whether John Farley saw what he claimed to see, or whether he simply knew where the body was and chose this means of reporting it, remains genuinely unresolved.',
  'The dead man pointed. The living man followed the direction. The murderer was caught. Make of the sequence what you will.',
  -34.0617, 150.8142, 'haunted', 52, true, 'active'
),

(
  'Hyde Park Barracks',
  'hyde-park-barracks-ghosts',
  'Fifty-six thousand convict men slept here. The hammocks are gone. The sounds are not.',
  'Hyde Park Barracks in central Sydney was designed by Francis Greenway and completed in 1819 as accommodation for male convicts working in the colony. Between 1819 and 1848, approximately 56,000 transported men passed through it. After 1848 it became a female immigration depot, housing thousands of Irish famine refugees and assisted immigrants, many of whom died in the building from disease and malnutrition. Archaeological excavations in the 1980s recovered over 8,000 objects from beneath the floorboards — buttons, clay pipe fragments, coins, personal items — that had fallen through the cracks in the hammock room floors over three decades of convict habitation. The building is now a museum. Staff and overnight researchers report sounds that the building''s acoustic properties cannot account for: rhythmic creaking consistent with hammocks in motion in rooms that have contained no hammocks for 175 years, footsteps in a regular pattern in the upper dormitories after closing time, and on two documented occasions, the sound of a large group of people moving through the ground floor at night — a shuffling, purposeful mass movement — that ceases when lights are activated. The building has been the subject of formal paranormal investigations that returned inconclusive but anomalous results.',
  'They took everything from these men except their sleep. Whatever sleep left behind, it left here.',
  -33.8717, 151.2131, 'haunted', 27, true, 'active'
),

(
  'Wisemans Ferry Inn',
  'wisemans-ferry-inn',
  'Solomon Wiseman built this inn with convict labour. He used to watch his workers from the upper window. He still does.',
  'The Wisemans Ferry Inn on the Hawkesbury River was established by Solomon Wiseman in 1827, making it one of the oldest continuously licensed hotels in Australia. Wiseman was a former Thames lighterman who had been transported to New South Wales for theft and built his considerable fortune in the colony, becoming the first ferry operator on the Hawkesbury crossing. The inn itself was constructed largely by convict labour assigned to Wiseman under the colonial labour assignment system. Wiseman died in 1838. His grave is in the grounds. Accounts of his ghost in the upper rooms of the inn date to the late nineteenth century and continue into the present — typically a heavyset figure observed at the upper windows, looking down toward the river crossing as though monitoring traffic or workers. More recently, overnight guests in upper rooms report a sensation of being observed from the doorway during the night, objects displaced between sleeping and waking, and in one account from 2015, a figure visible in the window glass of the upper hallway that was not present in the hallway itself. The inn continues to operate. The ferry crossing Wiseman established still runs — the longest-running ferry service in Australia.',
  'He built an empire on a river crossing and never stopped watching who came and went. He still hasn''t.',
  -33.3812, 150.9778, 'haunted', 19, false, 'active'
),

(
  'Junee Roundhouse',
  'junee-roundhouse',
  'The largest working railway roundhouse in the southern hemisphere. The engine driver who died here works a different shift now.',
  'The Junee Locomotive Roundhouse was constructed in 1947 and remains the largest working railway roundhouse in the southern hemisphere — a 42-stall semicircular engine house designed to service the steam locomotives of the Main South Line. The building retains its original machinery, inspection pits, and overhead gantries. It is now heritage-listed and operated partly as a museum. The haunting accounts centre on a specific figure: an engine driver killed in a workplace accident in the roundhouse during the steam era, whose name does not appear in official records but whose description — overalls, oil-stained face, cap, one arm held at an angle suggesting old injury — is consistent across accounts separated by decades. Workshop staff during the operational period reported the figure appearing at the entrance to specific stalls late in the night shift, and volunteers at the current museum have described the smell of coal smoke and hot metal in areas of the building where no machinery has been operational for years. The figure has never been described as threatening. It is described as watchful — the attitude of someone checking whether the work is being done properly.',
  'He never stopped being an engine driver. The building kept the job open for him.',
  -34.8692, 147.5814, 'haunted', 16, false, 'active'
),

(
  'Carcoar',
  'carcoar-nsw',
  'The most intact small colonial town in New South Wales. Some of the original residents never moved out.',
  'Carcoar, in the Central Tablelands west of Bathurst, is considered the most perfectly preserved small colonial town in New South Wales — a single streetscape of Georgian and Victorian commercial and domestic buildings, almost entirely intact from the 1840s to 1880s, that has never been substantially demolished or developed. It was the site of the first daylight bank robbery in Australian history, committed by Johnny Gilbert and Ben Hall in 1863. The town''s scale — a few hundred residents — has always been small enough that every building''s history is locally known and transmitted. Multiple buildings in Carcoar carry ghost accounts that are specific, locally persistent, and in several cases extend back four or five generations: a figure in the former banking chambers that moves along the old counter line; a woman observed in the upper storey of one of the commercial buildings during hours when the building is unoccupied; recurring cold spots in the former police lockup that do not correspond to ventilation or construction. No formal investigation has been conducted. The accounts persist because the town persists — unchanged, undemolished, with the same families and the same buildings accumulating the same stories across the same geography for 180 years.',
  'A town that was never rebuilt never lost its original occupants. They are simply no longer in the visible portion of the record.',
  -33.6167, 149.1333, 'haunted', 14, false, 'active'
),

(
  'Rookwood Necropolis',
  'rookwood-necropolis',
  'The largest cemetery in the southern hemisphere. Over one million people are buried here. Some of them have not accepted this.',
  'Rookwood Necropolis in western Sydney was established in 1867 and is the largest cemetery in the southern hemisphere, covering over 286 hectares and containing the remains of over one million people interred across 46 distinct religious and secular sections. At its Victorian peak it had its own dedicated railway line — the Mortuary Station in Regent Street, now demolished, dispatched funeral trains to Rookwood on a daily schedule. The cemetery contains the graves of convicts, gold rush immigrants, plague victims from the 1900 bubonic outbreak, and the unknown dead of two world wars. Paranormal accounts from Rookwood are distinguished from typical cemetery ghost stories by their specificity and variety: a woman in Victorian mourning dress seen repeatedly near the Anglican section who has been photographed on multiple occasions, the photographs showing a figure not visible to the photographer at the time of exposure; sounds of children playing in sections of the cemetery that contain exclusively adult burials; and a consistent report from groundskeeping staff of a specific lamp post in the older section that illuminates without power — a lamp post that was decommissioned and disconnected from the electrical grid in 1994.',
  'One million people is not an abstraction. It is a city of the dead, with the full complexity that implies.',
  -33.8703, 151.0414, 'haunted', 38, true, 'active'
),

(
  'Gladesville Hospital',
  'gladesville-hospital-nsw',
  'Australia''s oldest psychiatric hospital. It opened in 1838. The last patients left in 1997. The building is still full.',
  'Gladesville Hospital — originally the Tarban Creek Lunatic Asylum — was established in 1838 and operated continuously as a psychiatric facility for 159 years, making it the oldest psychiatric hospital in Australia. At its peak in the early twentieth century it held over 2,000 patients in conditions that mixed institutional care with practices now recognised as abuse: prolonged solitary confinement, hydrotherapy, experimental treatments, and restraints that caused injury. The hospital''s own death register, covering patients who died within the institution and were buried in the hospital''s grounds, contains over 1,500 entries. The main building and grounds are now a residential development and creative precinct. Residents and visitors to the precinct consistently report disturbances concentrated in the original ward buildings: unexplained sounds at night, figures seen through windows of secured areas, and a pervasive unease described by multiple residents as not like ordinary anxiety — targeted, directional, as though coming from a specific part of the building rather than from within themselves. Several residents have left. The development company has not commented publicly on the reports.',
  'A hundred and fifty years of suffering is not nothing. It goes somewhere when the last door closes.',
  -33.8333, 151.1333, 'haunted', 33, true, 'active'
),

(
  'Saumarez Homestead',
  'armidale-saumarez-homestead',
  'The White family built this house in 1888 and lived in it for four generations. The fifth is not in the census.',
  'Saumarez Homestead near Armidale was built in 1888 for the White family, prosperous New England pastoralists, and remained in continuous White family occupation until it was donated to the National Trust in 1984 — nearly a century of single-family habitation in an almost entirely intact house. The homestead contains the original furnishings, clothing, documents and personal effects of four generations of the White family, preserved with a degree of completeness rare even in historic house museums. The most consistently reported presence is identified by staff as a specific family member — a woman whose portrait hangs in the upstairs sitting room and who is described by those who encounter her apparition as matching the portrait closely in dress and bearing. She has been seen in the upstairs rooms, at the head of the main staircase, and on one occasion by two staff members simultaneously in the entrance hall. The National Trust has been cautious in discussing the accounts publicly, but staff who have worked the homestead for extended periods treat her as an established feature of the building rather than an anomaly. The name they give her is the name in the portrait.',
  'Four generations of the same family in the same house. The fifth stayed on without the paperwork.',
  -30.4975, 151.6697, 'haunted', 18, false, 'active'
),

(
  'Kiama Lighthouse',
  'kiama-lighthouse-1887',
  'The keeper died here in 1920. His wife stayed on for years afterward. Neither of them seems to have fully left.',
  'The Kiama Lighthouse, established at Blowhole Point in 1887, replaced an earlier light that had served the treacherous Kiama coastline since 1863. The lighthouse keeper''s cottage adjacent to the light tower served as the official residence for keepers and their families until the light was automated in 1920 — the same year keeper William Wilson died in the residence. His wife Mary continued to occupy the cottage for several years after his death, the Department of Lands permitting her to remain in lieu of any other arrangement. The cottage and tower are now heritage-listed and managed by Kiama Council. Paranormal accounts from Kiama Lighthouse are divided between two figures — a man associated with the tower itself, reported by visitors as a presence felt rather than seen, described consistently as emanating from the direction of the light mechanism; and a woman in the cottage, seen clearly enough on several occasions that witnesses have initially assumed her to be a costumed re-enactor or museum volunteer. On each occasion where this assumption was followed up, no such person was present and no such program was scheduled. The cottage records identify only one woman as having lived there continuously from the lighthouse''s operational period.',
  'The light kept ships off the rocks for sixty years. Something kept the keepers here long after the ships stopped needing them.',
  -34.6704, 150.8548, 'haunted', 22, false, 'active'
),

(
  'Settlers Arms Inn',
  'st-albans-settlers-arms',
  'The oldest continuously licensed inn on the Macdonald River. The stockman who drank here in 1851 is still at the bar.',
  'The Settlers Arms Inn at St Albans on the Macdonald River was licensed in 1848, making it one of the oldest continuously operating inns in New South Wales. It was built in sandstone by convict labour assigned to the local land grant holders, and served the cedar-cutting and farming communities of the isolated Macdonald Valley for over 170 years. The inn''s isolation — accessible by a single road that floods regularly, with no nearby town — has kept its character largely unchanged. The ghost accounts at the Settlers Arms are of a specific, recurring figure: a man in working clothes from the mid-to-late nineteenth century, sitting at the end of the bar or standing near the fireplace, who is described with sufficient consistency across separate accounts that he has acquired a name among regular patrons — "the stockman." He is reported to pay no attention to other patrons, to hold what appears to be a glass he does not drink from, and to disappear when approached directly. The accounts span at least three generations of the inn''s management. The current operators neither confirm nor deny him, but are reported to have left a glass at his end of the bar on significant dates.',
  'Some men find a place that fits them and never leave. The Macdonald Valley kept this one.',
  -33.2333, 150.9167, 'haunted', 17, false, 'active'
),

(
  'Braidwood',
  'braidwood-nsw-colonial',
  'The entire town is heritage listed. Multiple buildings have accounts. No one agrees on who the figures are.',
  'Braidwood on the Monaro Highway is one of the most completely intact colonial towns in New South Wales, heritage listed in its entirety rather than building by building. Settled in the 1820s as a pastoral district and growing during the gold rushes of the 1850s, Braidwood has retained its main street, commercial buildings, churches, courthouse and residential streetscape from the Victorian era in near-complete form. The town''s heritage listing has prevented demolition and major renovation, inadvertently preserving whatever accumulated within the structures as well as the structures themselves. Paranormal accounts in Braidwood are distributed across multiple properties without concentration in any single building — the former courthouse, two of the hotels on the main street, the Catholic church grounds, and a specific residential property on Wallace Street have all generated independent accounts from owners and visitors who were unaware of accounts from the other sites. The figures described do not correspond to any single identified individual and range across period from approximately the 1840s to the 1910s, suggesting either multiple presences or a more general quality of the town itself rather than any single event or person.',
  'Heritage-list an entire town and you preserve everything it held. Including what it held without knowing.',
  -35.4456, 149.8028, 'haunted', 12, false, 'active'
),

(
  'Old Goulburn Gaol',
  'goulburn-historic-gaol',
  'The cells predate the current gaol. The occupants of the cells do not know this.',
  'The original Goulburn lockup and gaol complex, portions of which date to 1840, preceded the better-known current gaol and served the Southern Tablelands district through the most violent period of colonial expansion — the bushranging era, the goldfields period, and the labour conflicts of the 1890s. The oldest sections of the structure are among the earliest surviving penal buildings in inland New South Wales. Multiple executions were carried out within the walls, and the death register for the original complex contains entries that predate the colony''s transition to formal capital records. The most consistently reported experience at the older section of the complex — now heritage-listed but largely inaccessible to the public — is described by the few people with legitimate access as a feeling of acute, specific surveillance: not a generalised unease but the precise sensation of being watched from a defined direction, typically from the area of the original solitary cells, that does not diminish with familiarity or repeated visits. Two separate heritage consultants engaged over the years have noted this in their reports, one in unusual detail, before returning to architectural observations.',
  'The cells were designed to produce a specific psychological state in their occupants. The design outlasted its intended use.',
  -34.7531, 149.7199, 'haunted', 14, false, 'active'
),

(
  'Newcastle Signal Station',
  'newcastle-signal-station',
  'The convicts who built Newcastle were punished here before they were punished anywhere else.',
  'The Newcastle Signal Station on Flagstaff Hill is one of the oldest surviving structures in the Hunter Valley, associated with the convict coal-mining settlement established at Newcastle from 1804 — a posting so brutal that it was used as a secondary punishment within the convict system, reserved for men who had committed further offences after transportation. The convict lumber yard and associated punishment infrastructure at Newcastle were designed to break the most resistant men the system had encountered. Floggings here were on a scale that exceeded Port Arthur. Multiple men died in the Newcastle complex from punishment and disease. The signal station itself was used to observe and control shipping in the harbour; the convict infrastructure below it controlled the men doing the mining and timber work. Accounts from the signal station area describe sounds rising from the directions of the former lumber yard workings — rhythmic striking, voices in distress, and on several occasions the sound of something being dragged across stone — at night and in early morning. The sounds are localised to the hillside below the station rather than the station building itself, consistent with the geography of where the punishment work was conducted.',
  'The worst punishment in a penal colony was a secondary posting. That fact alone should tell you something about what happened here.',
  -32.9185, 151.7813, 'haunted', 21, true, 'active'
);
