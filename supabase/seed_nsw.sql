-- ============================================================
-- HOLLOW ATLAS — New South Wales Seed Locations (30 entries)
-- Run in: Supabase Dashboard → SQL Editor → New query
-- Run seed_nsw_images.sql afterwards to attach cover photos
-- ============================================================

insert into public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
values

-- ── HAUNTED ──────────────────────────────────────────────────

-- 1. Monte Cristo Homestead
(
  'Monte Cristo Homestead',
  'monte-cristo-junee',
  'Australia''s most haunted house has kept its dead for a hundred and forty years.',
  'Built in 1885 by Christopher William Crawley on a hill overlooking Junee, Monte Cristo was home to one of the Riverina''s wealthiest landowners. Crawley died in his chair in 1910, having barely left the property in his final years. His wife Elizabeth then refused to leave for almost 23 years after his death, venturing beyond the gate only twice. During the Crawley era, a stable boy burned to death after falling from the balcony; a maid fell from the top verandah; a caretaker''s child died on the steps; and a mentally ill man was chained in the cottage for 30 years. The family abandoned the house in 1948. Reg and Olive Ryan purchased it in 1963 and spent decades restoring it while reporting persistent cold spots, unexplained sounds, and apparitions. Monte Cristo has been investigated by every major paranormal research group in Australia. The cottage where the chained man was kept is considered the most active site on the property. Six paranormal investigations have concluded simultaneously that the laundry, the main bedroom, and the cottage are the three most active points.',
  'Christopher Crawley watched his empire from this hill until his chair absorbed him. His wife outlasted him by decades, refusing to step beyond the gate as though the world outside might dissolve her. The house kept everyone who ever truly belonged to it.',
  -34.8700, 147.5853, 'haunted', 112, true, 'active'
),

-- 2. Maitland Gaol
(
  'Maitland Gaol',
  'maitland-gaol',
  'Australia''s oldest continuously operating country gaol held the worst of the colony for 150 years.',
  'Maitland Gaol opened in 1848 on a rise above East Maitland, designed by colonial architect Mortimer Lewis in a radial plan allowing a single guard to observe multiple wings simultaneously. It was the oldest continuously operating gaol in Australia when it finally closed in 1998. Sixteen men were hanged within its walls between 1849 and 1897, the last being Charles Hines — who maintained his innocence to the moment of execution. Public hangings continued until 1861, with crowds arriving by boat from Newcastle. The gaol survived the catastrophic 1955 Hunter Valley floods that submerged much of the town below. A major riot in 1983 destroyed significant sections of the facility, leaving scorch marks still visible on the sandstone. Former inmates and staff consistently report cell doors slamming in empty wings, measured footsteps on the iron walkways, and voices in the isolation block where the most disturbed prisoners were held in conditions that were described in official inquiries as deliberately psychologically destructive.',
  'A hundred and fifty years of sentences, some just, some not. The walls absorbed every appeal, every silence, every last meal. Charles Hines still walks the execution yard, they say — because innocence has nowhere else to go.',
  -32.7356, 151.5567, 'haunted', 87, true, 'active'
),

-- 3. Berrima Gaol
(
  'Berrima Gaol',
  'berrima-gaol',
  'The Southern Highlands'' oldest prison never fully released its dead.',
  'Completed in 1839 to a panopticon design — a central observation tower from which every cell could be monitored — Berrima Gaol was built as a model of reformative incarceration and became notorious for its brutality instead. Among those executed here was Lucretia Dunkley in 1843, the only woman ever hanged at Berrima, convicted alongside her lover John Knatchbull for the murder of Ellen Jamieson. During World War I the gaol held 329 German civilian internees, including officers from the legendary commerce raider SMS Emden, captured after her Indian Ocean campaign. The internees planted gardens, staged theatrical productions, and constructed tunnels in attempted escape. Several died of illness and old age, their graves still marked nearby. The gaol reopened as a working farm and wine facility before eventual heritage conversion. Visitors consistently report anomalies in the vicinity of the former women''s ward — a section that housed female prisoners in conditions that drew official condemnation as early as 1843.',
  'The panopticon promised that the watched man would reform himself. What it delivered instead was perpetual exposure — every thought, every hour, every grief observable from a central tower. Some never recovered the habit of privacy.',
  -34.4716, 150.3344, 'haunted', 61, true, 'active'
),

-- 4. Cockatoo Island
(
  'Cockatoo Island',
  'cockatoo-island',
  'A harbour island that was a prison before it was a shipyard. Both left their mark.',
  'Wareamah — Cockatoo Island in English — sits in the upper reaches of Sydney Harbour and has served successively as a convict prison, reformatory, shipyard, and naval base. From 1839 to 1869 it held male convicts who carved the island''s sandstone tunnels and grain silos by hand, working ten-hour days under threat of flogging. The reformatory that followed housed female and juvenile offenders, including children as young as eight, under conditions described in official inquiries as systematically abusive. The punishment cells cut into the living rock survive in their original state. The Fitzroy Dock, completed in 1890, was the largest dry dock in the southern hemisphere. During World War II the shipyards operated around the clock, and at least 22 industrial deaths are documented in the records. Camping visitors report footsteps in the empty tunnels, the sound of machinery in the old engine rooms after midnight, and children''s voices near the reformatory buildings — a detail that is hard to dismiss given the site''s history.',
  'The children carved no names here — they were not permitted names, only numbers. The tunnels they dug through solid stone remain because stone does not forget effort. When the machinery sounds at night, someone is counting whether the shift quota has been met.',
  -33.8530, 151.1670, 'haunted', 74, true, 'active'
),

-- 5. Old Government House, Parramatta
(
  'Old Government House',
  'old-government-house-parramatta',
  'The oldest colonial building on the continent holds its dead like a closed fist.',
  'Old Government House in Parramatta is the oldest surviving European building on the Australian continent, constructed between 1799 and 1816 under Governors Hunter and Macquarie. It served as the vice-regal residence for the first twelve governors of New South Wales, men wielding absolute authority over a convict colony of transported criminals and their overseers. Governor Bligh — of Mutiny on the Bounty fame — was held here under house arrest during the Rum Rebellion of 1808. The servants'' quarters in the basement were occupied by convict workers who slept inches from the foundations of the governors'' dining rooms above them. Listed as a UNESCO World Heritage Site in 2010 as part of the Australian Convict Sites inscription, the house now holds a permanent collection of colonial-era furnishings. Staff report cold draughts in sealed rooms, objects repositioned overnight, and a persistent sensation of being watched from the staircase landing — which is precisely where governors stood to oversee the convict labour in the courtyard below.',
  'Twelve governors looked out from this verandah at a country that was not theirs to look at. Each left something behind: a policy, an order, a silence. The house collected them all and locked the door.',
  -33.8127, 151.0008, 'haunted', 56, true, 'active'
),

-- 6. Trial Bay Gaol
(
  'Trial Bay Gaol',
  'trial-bay-gaol',
  'Built as a model prison on a clifftop headland, it became a prisoner of war camp and then a ruin.',
  'Trial Bay Gaol stands on a granite headland at South West Rocks on the NSW Mid North Coast, overlooking the bay where the brig Governor Phillip wrecked in 1816. Construction began in 1877 under an experimental model: prisoners would build a breakwater creating a harbour, earning wages, sustaining themselves through productive work rather than punishment. The scheme proved economically unviable and the facility was abandoned in 1903 with the breakwater unfinished. When World War I began, the completed gaol was repurposed as an internment camp for 580 German nationals — many long-term Australian residents including doctors, musicians, and businessmen. The internees established orchestras, sporting leagues, a garden, and a German-language newspaper within the walls. Twenty-three internees died during the internment period and are buried at the site. After 1918 the gaol was never returned to prison use. The granite ruins on the clifftop are now a national park. Visitors report movement in peripheral vision along the intact cell corridors, and recorded audio from the mortuary wing consistently picks up anomalous low frequencies.',
  'They built it to reform men through labour, and the labour built nothing that lasted. The men who arrived in wartime — German-Australians who had lived here for decades — built an entire community inside the walls instead: music, sport, a newspaper. They understood something about survival that the original architects had not intended to teach.',
  -30.8769, 153.0581, 'haunted', 48, false, 'active'
),

-- 7. Wentworth Gaol
(
  'Wentworth Gaol',
  'wentworth-gaol',
  'At the junction of two rivers, in the far corner of the state, a sandstone gaol still holds its dead.',
  'Wentworth Gaol was built in 1879 at the confluence of the Murray and Darling rivers in the extreme south-west of New South Wales. The gaol served the pastoral districts of the far south-west, where the isolation of station country meant crimes went undetected for long periods and transportation of prisoners to distant courts was itself a weeks-long ordeal. Eight people were hanged at Wentworth between 1879 and 1927, when the gaol closed permanently. The building is constructed in local sandstone, structurally intact since closure, and now operated as a museum. The cell blocks retain original ironwork, and the execution yard is accessible to visitors. Staff and paranormal investigation teams have documented recurring incidents in the same specific cells across multiple visits — the cells that housed those awaiting execution. Three separate investigation groups, visiting independently over a span of eight years, have reported identical unexplained audio phenomena in the south-east cell block. The extreme isolation of Wentworth amplifies whatever presence the building has accumulated.',
  'The Murray and the Darling meet at Wentworth, which means the town sits at the end of two of the longest rivers in Australia. Things travel a long way to reach Wentworth. The men who died in the gaol had usually travelled a long way to get there — via routes nobody would have chosen.',
  -34.1067, 141.9139, 'haunted', 39, false, 'active'
),

-- ── PARANORMAL ───────────────────────────────────────────────

-- 8. Q Station, Manly
(
  'Q Station',
  'q-station-manly',
  'Forty thousand people passed through these gates. Not all of them left.',
  'The North Head Quarantine Station operated from 1832 to 1984, processing vessels arriving in Sydney Harbour that carried contagious disease. Over 152 years, more than 16,000 people were quarantined on the headland — some for weeks, some for months, some for the remainder of their short lives. The station contains 72 heritage buildings including accommodation, medical wards, a mortuary, and a third-class shower block where passengers were fumigated on arrival. Official records document 572 burials in the on-site cemetery, though researchers believe the true figure may reach 4,000 — many early burial records were destroyed by fire. Diseases treated here included bubonic plague, cholera, smallpox, typhoid, influenza, and scarlet fever. The 1918 Spanish flu detainees arrived on the troopship Boonah; 35 died at the station. Visitors to the site report children''s voices near the first-class quarters, figures in the mortuary windows, and handprints on clean surfaces in the shower block where fumigation was conducted. Seven separate paranormal investigations have all identified the third-class precinct as the most active zone.',
  'They came from everywhere. They died from everywhere. The headland absorbed them without judgment, the way disease does — making no distinction between the first class and the third, between the guilty and the innocent, between the one who would recover and the one who would not.',
  -33.8221, 151.2894, 'paranormal', 103, true, 'active'
),

-- 9. Hawkesbury River Monster
(
  'Hawkesbury River Monster',
  'hawkesbury-river-monster',
  'Whatever lives in the Hawkesbury has been recorded there since before European settlement.',
  'The Hawkesbury River system north-west of Sydney has accumulated a consistent body of creature sightings stretching back before European contact. The Darug and Darkinjung peoples described a large aquatic creature — called Mirreeulla or Moolyewonk in oral accounts — depicted in rock engravings near the river''s banks. From the late eighteenth century, European settlers added their own accounts: a long-necked, large-bodied creature with smooth dark skin, surfacing briefly in the deeper central channels before submerging without trace. The most frequently cited sightings cluster between Wisemans Ferry and the tidal limit near Spencer. Researcher Rex Gilroy collected over 130 witness accounts in the 1970s and 1980s, and subsequent investigators have documented further claims from commercial fishermen, recreational boaters, and riverside residents. Hypotheses include an undiscovered elasmosaurid, an oversized freshwater eel, or persistent misidentification of known animals. The river reaches depths at which bottom survey remains incomplete. No confirmed specimen has ever been produced, but the consistency of descriptions across cultures and two centuries of observation is difficult to attribute entirely to imagination.',
  'The Darug people drew it on the rock faces above the waterline, which means they saw it frequently enough to consider it worth recording. After tens of thousands of years of testimony, the scientific community has declined to investigate seriously. The river keeps its own records.',
  -33.5000, 150.9000, 'paranormal', 58, false, 'active'
),

-- 10. Min Min Lights
(
  'Min Min Lights',
  'min-min-lights-nsw',
  'The outback lights that follow travellers and vanish before dawn.',
  'The Min Min phenomenon — a strange luminescence floating above the ground in remote outback areas — has been reported across far western New South Wales, western Queensland, and the Northern Territory for over a century. In New South Wales, accounts concentrate in the country west of Bourke and along the Darling River basin. Witnesses consistently describe a pale, diffuse glow that maintains a fixed distance from the observer regardless of approach speed, pursues vehicles and horses across open plain, and disappears when directly targeted. Aboriginal oral traditions of the region predate European settlement and associate the lights with the spirits of the dead. In 2003, Professor Jack Pettigrew of the University of Queensland proposed a meteorological explanation — an unusual form of Fata Morgana mirage refracting distant light sources below the horizon across the flat plain. Witnesses dispute this, noting that reported conditions frequently did not permit atmospheric mirage formation, and that the lights'' behaviour — sustained pursuit over kilometres — cannot be explained by passive optical phenomenon. The debate has not been resolved.',
  'The plain west of Bourke is so flat that you can watch a storm approach for three hours before it arrives. That same flatness carries light from impossible distances and bends it in ways the eye cannot prepare for. Whether the lights are physics or something older, they have been following people across these plains since long before there were roads to follow them on.',
  -30.0889, 145.9378, 'paranormal', 44, false, 'active'
),

-- ── FOLKLORE ─────────────────────────────────────────────────

-- 11. Yowie of the Blue Mountains
(
  'Yowie of the Blue Mountains',
  'yowie-blue-mountains',
  'A bipedal creature has been reported in these valleys for as long as the mountains have been named.',
  'The Blue Mountains west of Sydney constitute the most frequently cited location for Yowie sightings in New South Wales. The creature — described consistently as bipedal, between 1.8 and 3 metres tall, covered in dark brown or black hair, with a broad flat face and an overwhelming odour — appears in the oral traditions of the Gundungurra and Darug peoples, who have names for it predating European contact by an unknown period. The first European newspaper account appeared in the Sydney Morning Herald in 1876, describing an encounter near Katoomba. Since then, researchers have catalogued over 3,000 Yowie reports across Australia, with the Blue Mountains and adjacent Kanangra Boyd wilderness accounting for the highest density of sightings per square kilometre on the continent. The Megalong Valley, Grose Wilderness, and escarpment above Blackheath are most frequently named. No physical specimen has been recovered. Plaster casts of alleged footprints — some reaching 56 centimetres in length — have been taken at multiple Blue Mountains sites since the 1970s. None has been verified by peer-reviewed zoological study. Interest has not diminished.',
  'The Gundungurra people did not invent the creature — they remembered it. Whether it exists as biology or as necessary myth, the Blue Mountains have always required something vast and unverifiable to match their scale.',
  -33.7215, 150.3120, 'folklore', 67, false, 'active'
),

-- ── ABANDONED ────────────────────────────────────────────────

-- 12. Newnes Shale Oil Town
(
  'Newnes',
  'newnes-ghost-town',
  'The shale oil capital of Australia lasted thirty years before the wilderness absorbed it.',
  'The town of Newnes in the Wolgan Valley operated from 1906 to 1935 as the centre of Australia''s shale oil industry, a Commonwealth Oil Corporation venture that briefly made it the largest shale oil producer in the southern hemisphere. At its peak in 1907, Newnes housed over 800 workers and their families, with a hotel, school, post office, recreation hall, and cricket ground carved from dense bush in a canyon accessible only by narrow-gauge railway. The retort kilns — large circular chambers in which oil shale was heated to extract kerosene and lubricating oil — numbered over forty at the operation''s height, making this the largest collection of its type ever built in Australia. When cheaper petroleum from conventional crude undercut the shale product, the operation collapsed. The facility closed in 1935 and the town cleared within months. The railway was later dismantled, and the valley''s extreme isolation preserved the ruins. The beehive retort kilns still stand in a line along the valley floor. The hotel shell, foundry remains, and building foundations are intact. The surrounding bush has advanced continuously across the site for ninety years.',
  'The shale gave oil for thirty years, which seemed like forever to the men who extracted it. Then petroleum from the ground proved cheaper, and the valley was returned to the arrangement it had maintained for sixty million years before the Corporation arrived: sandstone, fern, silence.',
  -32.9478, 150.2583, 'abandoned', 71, false, 'active'
),

-- 13. Silverton
(
  'Silverton',
  'silverton-ghost-town',
  'Three thousand people lived here. When they left, some of them took the houses.',
  'Silverton sits seventeen kilometres north-west of Broken Hill in the far west of New South Wales, in a landscape so cinematically stark that it has served as a location for over 140 films and television commercials. Silver was discovered in 1882, and the town reached a peak population of approximately 3,000 by 1888. The ore body ran out faster than expected. When Broken Hill''s mines proved richer, the population migrated — historic accounts describe residents loading their houses onto wagons and carting them across the plain. By 1890 the population had collapsed to a few hundred. Today, fewer than fifty people live in Silverton permanently. The Silverton Hotel, a gaol converted to a gallery, an art museum, and scattered private residences are maintained largely through tourism. Films shot here include Mad Max 2, Razorback, and A Town Like Alice. The surrounding landscape — vast, red, broken by low ridges — has changed almost nothing since 1888. Visitors report an unaccountable unease in the former residential area east of the hotel, where empty house pads stretch in a grid that no longer corresponds to anything standing.',
  'They took the houses with them. That detail stays with me — the practicality of it, the ruthlessness. When a town is finished, the useful parts travel and the rest becomes scenery. Silverton has been scenery for a hundred and thirty years, which is a long time to be looked at.',
  -31.8825, 141.2278, 'abandoned', 88, true, 'active'
),

-- 14. Yerranderie
(
  'Yerranderie',
  'yerranderie-silver-city',
  'Cut off by a rising dam, the silver city outlasted the flood that was supposed to take it.',
  'Yerranderie operated as a silver mining town in the Blue Mountains from the early 1900s, reaching a population of approximately 3,000 at its peak. Between 1900 and 1912 the mines produced 5,381,000 ounces of silver, making it one of the most productive operations in Australian history. The town had a post office, bank, stores, school, and several hotels. When the mines closed in the 1920s, the population dispersed. The anticipated inundation from Warragamba Dam — completed 1960, filling to create Lake Burragorang — was expected to submerge the valley. The engineers'' calculations placed Yerranderie just above the flood line, and the water never reached it. The town survived through a surveyor''s margin. Accessible only by unsealed four-wheel drive tracks through the Blue Mountains wilderness, Yerranderie is now one of the most authentic ghost towns in New South Wales, retaining the post office, several corrugated-iron buildings, and domestic structures from its operational era. The post office still accepts mail. No permanent residents remain.',
  'The dam was supposed to drown it. The engineers got the calculation slightly wrong, and Yerranderie stayed above the waterline — surviving through a surveyor''s error what it could not survive through commerce. The post office still accepts mail, though the population it was built to serve is elsewhere.',
  -34.0550, 150.2556, 'abandoned', 52, false, 'active'
),

-- 15. Hill End
(
  'Hill End',
  'hill-end',
  'On one October morning in 1872, this hillside produced the largest gold specimen ever found. Then it was over.',
  'Hill End in the Central Tablelands reached a peak population exceeding 30,000 during the gold rush of the 1860s and early 1870s — briefly the largest inland town in New South Wales. On October 19, 1872, miners Bernhardt Holtermann and Louis Beyers uncovered what became known as the Holtermann Specimen: a slab of slate laced with gold weighing 286 kilograms, the largest single mass of native gold ever recorded. The record has never been broken. Within a year, accessible gold was exhausted and the exodus began. By the 1880s, a few hundred people remained from tens of thousands. Photographer Charles Bayliss documented the town during its height, leaving a meticulous visual record of its brief prosperity. Declared a historic site by the National Parks and Wildlife Service in 1967, Hill End now holds approximately 100 permanent residents. Many original stone and timber buildings survive, and the Royal Hotel has operated continuously since the gold rush era. Walking the main street in the early morning, with the heritage buildings and the empty allotments around them, is to stand in a town that was finished mid-sentence.',
  'For one morning in October 1872, two men touched the largest piece of gold anyone would ever find. The record has stood for over a hundred and fifty years. By January 1873 the town already knew it was over, though it took another decade to fully stop pretending otherwise.',
  -33.0278, 149.4228, 'abandoned', 63, true, 'active'
),

-- 16. Kiandra
(
  'Kiandra',
  'kiandra',
  'The highest gold rush in Australia invented skiing, then became the snow.',
  'Kiandra in the Snowy Mountains sits at 1,395 metres above sea level — the highest altitude of any gold rush settlement in Australian history. Gold was discovered in November 1859 and within three months the town housed between 8,000 and 10,000 people, building on frozen ground through the first winter with minimal shelter. The rush collapsed as rapidly as it arrived: by 1861 the accessible alluvial gold was gone and the population drained away. What Kiandra left behind, beyond its ruins, was the sport of skiing in Australia. Norwegian miners fashioned skis from timber in 1861 to cross the deep winter snowpack and established the Kiandra Snow Shoe Club — considered the oldest ski club in the world. The last permanent resident left in 1974. Only four buildings now remain on the cleared site, which the Snowy Mountains Highway crosses at a point that gives no indication of the ten thousand people who once stood here in summer tents on frozen ground. A significant Chinese mining community had established itself at Kiandra despite hostility documented elsewhere on the goldfields.',
  'Eight thousand people arrived at 1,400 metres in three months, in winter, on frozen ground, without adequate preparation. That is either the definition of desperation or the definition of hope — most likely both. They left skiing behind and nothing else of consequence.',
  -35.8790, 148.5160, 'abandoned', 41, false, 'active'
),

-- 17. Old Adaminaby
(
  'Old Adaminaby',
  'old-adaminaby',
  'A whole town was moved before the water arrived. In drought years, it surfaces.',
  'The original township of Adaminaby in the Snowy Mountains sat on ground that the Snowy Mountains Hydro-Electric Scheme would inundate when Lake Eucumbene was created behind Eucumbene Dam. Between 1956 and 1958 the town was progressively relocated seven kilometres north to a new site. The relocation was orderly in form — buildings were moved or demolished, residents offered compensation — but incomplete in practice. Street infrastructure, foundations, cemetery fencing, and structural remnants were left as the water rose. During severe drought, when Lake Eucumbene drops to historically low levels, Old Adaminaby surfaces. Fence posts appear above the waterline, then road alignments, then the outlines of building foundations, then — in the most extreme droughts — the skeletal remains of the original cemetery. Photographs from the 2007 drought show substantial structural remnants emerging over a period of months. The phenomenon has recurred multiple times since the dam reached capacity in 1967. There is something specifically disquieting about a cemetery that appears and disappears according to annual rainfall. The town below the water is permanent; the lake is the temporary thing.',
  'The engineers moved the town but could not move everything. In drought years the lake gives back what it was never finished taking — fence lines, road alignments, the measured geometry of a cemetery. A whole town below the surface, waiting for dry years to make itself visible again.',
  -36.0120, 148.7680, 'abandoned', 57, false, 'active'
),

-- 18. Captains Flat
(
  'Captains Flat',
  'captains-flat',
  'When the mine closed, the town discovered what eighty years of extraction had left in the water.',
  'Captains Flat is a former lead, zinc, copper, gold and silver mining town in the Molonglo River valley, roughly halfway between Canberra and the NSW South Coast. Mining began in 1882 and continued until the closure of the principal mine in 1962. At its operating peak in the late 1950s, the town housed approximately 2,000 people with a school, hotel, and local league. When the mine closed, the population dispersed within a decade. What the industry left behind was a contamination legacy of severe proportion. The tailings heaps — containing lead, arsenic, cadmium, and copper — leached continuously into the local watershed for decades after closure. Lake Bathurst and the surrounding area became one of the most severely heavy-metal contaminated water systems in Australia. Remediation began in the 1990s and continued into the 2000s. Today approximately 200 people live in Captains Flat, surrounded by remediated tailings, fenced exclusion zones, and a landscape that still registers elevated heavy metal levels in waterway sediment. The walking track around the old mine site is signposted with contamination warnings. The town''s football club, which once competed across the region, disbanded in the 1970s.',
  'The men who worked the mine did not know fully what they were leaving. They left it in the ground, in the water, in the bodies of children who played on the slag heaps. The remediation took thirty years and the valley still carries what was done to it in the chemistry of every stream.',
  -35.5800, 149.4500, 'abandoned', 33, false, 'active'
),

-- ── STRANGE HISTORY ──────────────────────────────────────────

-- 19. Gosford Glyphs
(
  'Gosford Glyphs',
  'gosford-glyphs',
  'Someone carved three hundred Egyptian hieroglyphs into sandstone near Gosford. The question is who.',
  'In a sheltered sandstone gully within Brisbane Water National Park approximately ten kilometres from Gosford, over 300 carvings resembling ancient Egyptian hieroglyphs cover two rock faces. Their existence has been documented since the 1970s. The carvings generated competing claims: some argued they represented a pre-colonial Egyptian or Phoenician visit to Australia in the second millennium BCE, which would rewrite the history of human navigation. Egyptologists from Macquarie University examined the inscriptions and concluded they contain glyphs from different historical periods, incorrectly oriented and arbitrarily combined, making no coherent linguistic sense in any known Egyptian script. The most widely accepted explanation holds that the glyphs were carved in stages — possibly beginning with WWI veterans in the 1920s who had served in Egypt, with later additions by students working from hieroglyph reference books in the 1980s. No physical evidence of pre-colonial contact with ancient Egypt has been found anywhere in Australia. Despite this, the site attracts thousands of visitors annually and a persistent community continues to insist that the professional assessment is a deliberate cover-up.',
  'The argument about who made them is more interesting than the carvings themselves. Three hundred marks in sandstone, meaningless as a sentence, potent as a question — evidence not of ancient Egypt, but of the lengths to which people will reach to make the land older than it already is.',
  -33.3783, 151.2969, 'strange_history', 79, false, 'active'
),

-- 20. Lambing Flat Riots
(
  'Lambing Flat',
  'lambing-flat-riots',
  'On June 30, 1861, a mob of three thousand men marched under a banner that said what it meant.',
  'The goldfields at Lambing Flat in central-western New South Wales were the site of Australia''s most sustained and violent anti-Chinese campaign during the gold rush era. Chinese miners had arrived from the mid-1850s, drawn by the same gold as European, American, and Pacific Island diggers. Resentment among European miners — partly economic, predominantly racial — erupted in a series of confrontations between October 1860 and June 1861. The climax came on June 30, 1861, when a mob estimated at 2,000 to 3,000 men carrying a banner reading "Roll Up! Roll Up! No Chinese" attacked a camp of approximately 2,000 Chinese miners. Tents were destroyed, possessions looted and burned, and an estimated 250 Chinese men were severely injured. The wounded were carried by cart to Yass hospital. The colonial government''s response was the Chinese Immigration Act of 1861, which imposed a poll tax and strict entry restrictions. The town was subsequently renamed Young, after NSW Treasurer John Young, as a deliberate attempt to distance the settlement from what had happened there. The Roll Up banner survives in the Lambing Flat Folk Museum.',
  'The banner read "Roll Up! Roll Up! No Chinese." Two thousand five hundred miles of ocean, and the men on those goldfields still brought their hatreds intact. Young renamed itself for a politician. The Chinese miners it expelled named nothing.',
  -34.3094, 148.3019, 'strange_history', 55, true, 'active'
),

-- 21. Myall Creek Massacre
(
  'Myall Creek',
  'myall-creek-massacre',
  'The first and only time colonial settlers were successfully prosecuted for the mass murder of Aboriginal people.',
  'On June 10, 1838, a group of twelve mounted stockmen rode to Myall Creek station near present-day Delungra in northern New South Wales and killed approximately 30 Wirrayaraay people — men, women, and children — who had been camped peacefully on the property at the invitation of the head stockman. The victims'' bodies were burned. The killers were arrested, and the first trial ended in acquittal when the jury refused to convict. Attorney-General John Plunkett tried again with seven of the men on a reduced charge. On December 18, 1838, all seven were convicted and hanged — the first and only time in Australian colonial history that European settlers were successfully prosecuted and executed for the mass murder of Aboriginal people. The convictions were deeply controversial; the squatting class regarded them as a fundamental injustice. The majority of frontier killings before and after Myall Creek were never prosecuted. A memorial established in 2000 by a joint Aboriginal and non-Aboriginal committee is considered one of the most significant sites of reconciliation in Australia, visited annually on June 10.',
  'John Plunkett tried twice because once was not enough to get a jury to agree that the Wirrayaraay people at Myall Creek had rights worth protecting. The second trial succeeded. Seven men hanged. The squatters called it the wrong kind of murder. The memorial came a hundred and sixty-two years later.',
  -29.7550, 150.4697, 'strange_history', 66, true, 'active'
),

-- 22. Norfolk Island Penal Colony
(
  'Norfolk Island Second Settlement',
  'norfolk-island-penal-colony',
  'Designed to be the worst place in the British Empire short of death. It succeeded.',
  'Norfolk Island served as a secondary penal settlement for the most intractable convicts in the Australian colonies from 1825 to 1855, under a policy explicitly stated by Governor Darling: it was to be "a place of extremest punishment short of death." The island''s first settlement (1788–1814) had been mild by comparison. The second was not. Conditions included solitary confinement, arbitrary flogging, chain gangs constructing stone buildings still standing today, and an official culture of systematic degradation designed to break personality. In 1834 a mutiny by 130 convicts was suppressed; seven ringleaders were hanged. The 1846 uprising involved the entire convict population. Historian Robert Hughes recorded accounts of men developing a rational preference for death — manifesting in what became known as the "Norfolk Lottery," allegedly murder pacts in which men drew lots for who would kill and who would be killed, both preferring execution or return to the mainland over another year on the island. Whether the lottery occurred exactly as described remains disputed by historians. The last convicts were removed to Van Diemen''s Land in May 1855.',
  'Governor Darling''s phrase was precise: "extremest punishment short of death." The men on Norfolk Island interpreted it as permission to prefer death, and some proceeded accordingly. The stone buildings they constructed still stand — a fact that tells you something about the relationship between forced labour and permanence.',
  -29.0408, 167.9547, 'strange_history', 82, true, 'active'
),

-- 23. The Dunbar Wreck
(
  'The Dunbar',
  'dunbar-wreck',
  'One hundred and twenty-two people. One survivor. The wrong gap in the cliffs.',
  'On the night of August 20, 1857, the clipper ship Dunbar approached Sydney Heads after 81 days at sea from Plymouth, England, carrying 63 passengers and a crew of 59. Captain James Green, navigating in darkness and heavy weather, mistook The Gap — a deep notch in the sandstone cliffs of South Head — for the entrance to Sydney Harbour. The ship struck the cliff base and was destroyed within minutes. Of 122 people aboard, 121 died. The sole survivor, able seaman James Johnson, clung to a narrow rock ledge for 36 hours while wreckage and bodies washed around him before rescuers lowered ropes from the clifftop. The ship''s cargo washed ashore along the harbour beaches for weeks. The anchor recovered from the wreck is now displayed near Watson Bay. The disaster directly prompted construction of the Hornby Lighthouse at South Head, first lit in 1858. The precise indentation where the ship struck is visible at the base of The Gap at low tide. The site remains one of the most visited maritime heritage locations in Sydney, and The Gap itself subsequently became one of Australia''s most notorious sites of self-harm — a convergence of associations that is hard to separate from the original catastrophe.',
  'Captain Green had made the voyage to Sydney before, in daylight. On that particular night, in that particular weather, the gap in the cliffs looked precisely like the one that led to safety. One hundred and twenty-one people paid for the resemblance.',
  -33.8597, 151.2797, 'strange_history', 91, true, 'active'
),

-- 24. Battle of Broken Hill
(
  'Battle of Broken Hill',
  'battle-of-broken-hill',
  'On New Year''s Day 1915, two men opened fire on a trainload of picnickers — the first attack on Australian civilians by foreign nationals on Australian soil.',
  'On January 1, 1915, a special train carrying approximately 1,200 members of the Broken Hill Oddfellows Lodge on their annual New Year''s Day picnic excursion to Silverton was attacked by two gunmen firing from behind cover on a low ridge north of the city. The attackers, Gool Mohamed and Mulla Abdulla, had pinned a note declaring the attack a response to Australia''s participation in the war against the Ottoman Empire; they flew a Turkish flag from their position. In the hour-long engagement that followed — involving police and armed civilian volunteers — four picnickers were killed and seven wounded. Both attackers were shot dead. The incident is the first and only attack on Australian civilians by foreign nationals on Australian soil during World War I, and one of the very few in Australian history. The attack triggered intense anti-German and anti-foreigner sentiment throughout Broken Hill, resulting in the torching of the local German Club. The attackers were interred without the traditional three-volley military salute, at the request of the local Islamic community. A monument marks the site of the engagement on the ridge.',
  'They flew a Turkish flag on a ridge above the silver city and opened fire on a New Year''s Day picnic. The date, the target, the flag — it requires the kind of believing-in that precedes understanding. The German Club burned that same week, because in 1915 the connections people drew were not always the right ones.',
  -31.9505, 141.4337, 'strange_history', 47, true, 'active'
),

-- 25. Castle Hill Rebellion
(
  'Castle Hill Rebellion',
  'castle-hill-rebellion',
  'On the night of March 4, 1804, three hundred convicts rose and marched for freedom.',
  'The Castle Hill Rebellion of March 4–5, 1804 was the largest and most significant convict uprising in Australian colonial history. It was organised primarily by Irish convicts transported after the failed United Irishmen rebellion of 1798, who brought with them both the experience of political insurrection and the conviction that their transportation was unjust rather than criminal. On the night of March 4, approximately 300 convicts at the Castle Hill government farm and the Toongabbie settlement rose simultaneously, seizing weapons, burning buildings, and marching south toward Parramatta declaring their intention of reaching a ship. Their leader, Philip Cunningham — a veteran of 1798 — called for "Death or Liberty." Major George Johnston intercepted the column with 29 soldiers of the NSW Corps near Rouse Hill. Johnston called a parley, then seized Cunningham under a flag of truce. Leaderless, the column was charged and dispersed. Nine rebels were killed. Cunningham and William Johnston were hanged the following morning. Fifteen others received 500 lashes each. The uprising is known in Irish-Australian tradition as the Battle of Vinegar Hill, after its Irish antecedent.',
  'Philip Cunningham had already risen once in Ireland in 1798, and failed, and been transported for it. He rose again in 1804 on the other side of the world with 300 men at his back. Major Johnston took him under a flag of truce. The Irish do not forget that particular detail.',
  -33.7672, 151.0037, 'strange_history', 44, true, 'active'
),

-- 26. Waterloo Creek Massacre
(
  'Waterloo Creek',
  'waterloo-creek-massacre',
  'The largest colonial massacre in Australian history was suppressed for over a century.',
  'On January 26, 1838, a mounted police detachment led by Major James Nunn and a party of civilian volunteers attacked a large encampment of Gomeroi people at Waterloo Creek, near present-day Moree in northern New South Wales. Estimates of the death toll range from 40 to over 300; the variance reflects deliberate suppression of the event rather than uncertainty about whether it occurred. Nunn''s official report described a minor skirmish. Contemporary witnesses, private letters, and survivor accounts examined by later historians suggest a massacre on a scale that may make Waterloo Creek the largest single killing in Australian colonial history. No charges were ever laid. Governor Gipps sought to have Nunn court-martialled but was blocked by military authority. The event was effectively suppressed from public record for over a century, beginning to surface in scholarly literature only in the 1980s. Waterloo Creek sits within the broader context of the Frontier Wars — a period of sustained armed conflict between colonial forces and Aboriginal nations that the Australian government has never formally acknowledged as war. The date of the attack, January 26, corresponds to the anniversary the colony chose to mark as its founding.',
  'The same date. In 1838 it already carried symbolic weight as the colony''s founding moment. Attacking a Gomeroi camp on that date was a message. The message was received. The massacre was then concealed for a hundred years, which is a different kind of message.',
  -29.8000, 150.5000, 'strange_history', 38, false, 'active'
),

-- 27. Gundagai Flood 1852
(
  'Gundagai, 1852',
  'gundagai-flood-1852',
  'The town was warned. The town did not move. Then the Murrumbidgee rose nine metres in one night.',
  'On June 25, 1852, the Murrumbidgee River at Gundagai rose more than nine metres during a flood event that remains the deadliest natural disaster in Australian history. Of approximately 250 people in the town that night, 89 were killed — more than a third of the population in a single night. The town had been built on a flood plain despite explicit and specific warnings from Wiradjuri people, who described the site as one that flooded catastrophically and could not be safely occupied. Colonial authorities dismissed these assessments as superstition incompatible with the needs of pastoral settlement. The 1852 event vindicated every warning. The town was subsequently relocated to higher ground, and a monument records the names of the 89 dead. The bodies of many victims were never recovered from the floodwaters. The Wiradjuri people''s knowledge of the Murrumbidgee''s flood history — accumulated over thousands of years of habitation in the valley — was precisely correct, available to the colonists, and ignored as a matter of policy. No official acknowledgment of this has been made.',
  'The Wiradjuri said the plain flooded. They had watched it flood for thousands of years and knew the patterns. The colonial administration built a town on it anyway — because dismissing Indigenous knowledge was not merely a prejudice in 1852, but a policy. Eighty-nine people died proving the policy wrong.',
  -35.0639, 148.1019, 'strange_history', 53, true, 'active'
),

-- 28. Hartley Historic Village
(
  'Hartley Historic Village',
  'hartley-historic-village',
  'The railway bypassed it in 1869. Fifty years later, it had barely changed.',
  'Hartley Historic Site preserves a nineteenth-century village in the Great Dividing Range west of Sydney, on the route that convict road gangs carved through the mountains between 1814 and 1832. Hartley was established as a courthouse settlement in 1837, when colonial architect Mortimer Lewis designed the Hartley Courthouse — a formal Greek Revival sandstone building that survives intact and is considered his finest remaining work. The village served as an administrative and legal centre for the western districts. When the Great Western Railway was routed through Lithgow rather than Hartley in 1869, the town lost its commercial purpose almost immediately. Without railway traffic to sustain it, Hartley neither grew nor substantially changed. Businesses closed, residents departed, but the buildings — well-constructed in local stone — remained standing. By the time heritage authorities surveyed the site in the 1970s, Hartley contained one of the most intact colonial streetscapes in New South Wales: courthouse, inns, a Catholic church of 1839, and domestic cottages with their original fittings. The National Parks and Wildlife Service now maintains the village. The courthouse is in active use for heritage events.',
  'The railway went through Lithgow and Hartley froze in 1869. Not dramatically — no flood, no fire, no epidemic. Just a route decision forty kilometres away. The buildings stayed because stone buildings stay when nobody pulls them down, and nobody had reason to pull these down.',
  -33.5456, 150.0881, 'abandoned', 46, true, 'active'
),

-- 29. Ben Hall's Last Stand
(
  'Ben Hall''s Last Stand',
  'ben-halls-last-stand',
  'Australia''s most wanted bushranger was shot thirty times. He was twenty-seven years old.',
  'Benjamin Hall was one of the most prolific bushrangers in colonial New South Wales, leading a gang that operated across the central-western districts from 1863 to 1865. Hall was unusual: well-dressed, reportedly courteous to victims, and in possession of legitimate grievances — his cattle property had been seized and his wife had left him following a wrongful police arrest early in his career. His gang conducted over a hundred robberies and held the township of Canowindra captive for three days in 1863, feeding the population and entertaining them before departing. The colonial government''s response was the Felons Apprehension Act of 1865, which allowed named outlaws to be shot on sight without arrest, trial, or legal consequence. On May 5, 1865, Hall was ambushed at his campsite beside Billabong Creek near Forbes by a combined force of police and informers. He was shot approximately 30 times. His body was publicly exhibited in Forbes. He was 27 years old. His grave in Forbes cemetery and the site of the ambush near the creek are both marked and regularly visited. The ambush site retains the quality of a place where something was settled without being resolved.',
  'Thirty shots. They made sure of it, the way the law made sure in 1865 — with legislation that removed the need for arrest or trial. Ben Hall was twenty-seven, which is young to have earned the kind of fear that requires thirty bullets to resolve.',
  -33.3834, 147.9634, 'strange_history', 59, true, 'active'
),

-- 30. Breelong / Jimmy Governor
(
  'Breelong Station',
  'breelong-governor-rampage',
  'A man reached his limit. The limit of a whole colony was reached with him.',
  'On the night of July 20, 1900, Jimmy Governor and his brother Jacky killed nine people at Breelong Station near Gilgandra, setting off the longest and largest manhunt in New South Wales colonial history. Jimmy Governor was an Aboriginal stockman who had worked the stations of the central west for years, married a white woman, and experienced systematic racial humiliation from her family and their employers. The immediate trigger was a series of degrading racial remarks made by the Mawbey family; Governor had reached the end of what he would absorb. A force exceeding 2,000 police and civilian volunteers pursued the brothers across the tablelands and coastal ranges for months, making it the largest organised chase in Australian colonial history. Governor''s rampage was neither random nor inexplicable — it was the violence of a man who had endured years of daily dehumanisation until the accounting became impossible to defer further. Jimmy Governor was captured on October 27, 1900, and hanged on January 18, 1901. His brother Jacky had been killed during the pursuit. Governor''s story directly inspired Thomas Keneally''s novel The Chant of Jimmie Blacksmith (1972).',
  'Two thousand men spent months pursuing one man across the mountain ranges of New South Wales. The disproportion is the story. Jimmy Governor killed nine people after a lifetime of being treated as less than a person. The colony''s response — its scale, its fury — revealed what it actually feared.',
  -31.5600, 148.3500, 'strange_history', 62, true, 'active'
);
