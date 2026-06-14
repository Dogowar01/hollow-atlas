-- ============================================================
-- HOLLOW ATLAS — Tasmania Seed Locations (Batch 2)
-- 12 new locations: folklore, paranormal, abandoned, strange history
-- Run in: Supabase Dashboard → SQL Editor → New query
-- ============================================================

insert into public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
values

-- 1. Wybalenna Aboriginal Establishment (Flinders Island)
(
  'Wybalenna',
  'wybalenna-flinders-island',
  'They called it "black man''s houses." Most of the men died inside.',
  'Between 1833 and 1847 the British colonial government transported approximately 180 Palawa — Aboriginal Tasmanians — to Wybalenna on Flinders Island under the stated pretext of protection. The operation was led by George Augustus Robinson, who styled himself a conciliator. Men were forced to labour. Women were directed into domestic colonial roles. Children were separated from their parents and given immersive Christian instruction. Aboriginal names were replaced with English ones. Of the approximately 180 sent to Wybalenna, around 130 died there. A further 25 died during transportation. The establishment closed in 1847 — not from compassion, but because it was cheaper to move the 47 survivors back to the mainland — to Oyster Cove, another damp and inadequate site south of Hobart. In 1996, after sustained advocacy by the Aboriginal community, title to the Wybalenna site was formally returned to the Flinders Island Aboriginal Association. The chapel, built by convict labour and used to enforce Christianity on a population being systematically destroyed, still stands. There is no equivalent structure to commemorate the 130 who died.',
  'The word Wybalenna means "black man''s houses" in the Flinders Island dialect. The people who named it that were describing where they had been sent to die. The chapel was built to save their souls while the rest of the place was killing their bodies. Both things were considered consistent at the time.',
  -40.0167, 147.8700, 'strange_history', 34, true, 'active'
),

-- 2. Oyster Cove Station
(
  'Oyster Cove Station',
  'oyster-cove-station',
  'The last 47 Palawa were moved here from Flinders Island. Then there were 14. Then one.',
  'In 1847, the 47 survivors of Wybalenna were relocated to Oyster Cove — a disused convict probation station on unhealthy mudflats south of Hobart. The buildings were damp, drainage was absent, provisions were poor, and alcohol was accessible. The population continued to fall. By 1859 only 14 Aboriginal Tasmanians remained alive at Oyster Cove. By 1872, one woman remained: Truganini, a Nuenone woman born around 1812, who colonial society immediately mythologised as the "last Tasmanian Aboriginal." She asked explicitly not to be dissected after her death. She died on 8 May 1876. One year later, her body was illegally exhumed. Her skeleton was displayed at the Tasmanian Museum from 1904 until 1947. Her ashes were not scattered in the D''Entrecasteaux Channel until 1976 — one hundred years after her death. The station site, where the last survivors of a deliberate colonial displacement spent their final years, is largely unmarkered on the modern landscape.',
  'She asked not to be cut up after she died. They waited one year, then did it anyway. The Channel holds her ashes now. The station where she spent her final years holds nothing.',
  -43.1516, 147.0883, 'strange_history', 21, true, 'active'
),

-- 3. Arthur River Thylacine Country
(
  'Arthur River — Thylacine Country',
  'arthur-river-thylacine-country',
  'The last one died in Hobart Zoo in 1936. The northwest keeps reporting otherwise.',
  'The remote button grass plains and rainforest corridor between Waratah and the Arthur River in northwestern Tasmania is considered the most likely refuge for surviving thylacines, if any exist. The last confirmed individual died in Hobart Zoo on 7 September 1936. The species was formally declared extinct in 1986. In 1982, Wildlife Service officer Hans Naarding observed what he described as an adult thylacine for several minutes by torchlight near the Arthur River while sheltering in his vehicle during a rainstorm — documenting its distinctive striped coat, rigid tail, and gait in detail before it moved into the vegetation. The Tasmanian government took the report seriously enough to fund a covert year-long search that found no conclusive evidence. The Department of Environment has logged approximately 3,800 sighting reports since 1936. Analysis of this database places the highest-density cluster in this northwest corridor near Waratah. In 2021, the IUCN reclassified the thylacine from "extinct" to "possibly extinct" — an unusual institutional acknowledgment that the question is not fully closed.',
  'The IUCN changed the category in 2021 — not because of new evidence, but because "possibly extinct" more accurately describes what is actually known. That is a rare institutional admission of uncertainty. The button grass does not confirm or deny anything. It simply continues to grow in the places where no one is looking.',
  -41.0560, 144.6630, 'folklore', 47, false, 'active'
),

-- 4. Bass Strait Triangle — The Valentich Disappearance
(
  'Bass Strait Triangle',
  'bass-strait-valentich',
  'His last transmission lasted 17 seconds. The metallic scraping sound was never identified.',
  'On 21 October 1978, 20-year-old pilot Frederick Valentich disappeared over Bass Strait after radioing Melbourne air traffic control to report an unidentified aircraft hovering above his Cessna 182. His final transmission — "It is not an aircraft... it is hovering on top of me again... it is hovering and it is not an aircraft" — lasted 17 seconds of metallic scraping sound, then silence. No wreckage was ever recovered. Valentich and his aircraft remain missing. The disappearance coincided with an intense wave of UFO reports across Bass Strait and the Tasmanian and Victorian coasts. Between October 1978 and early 1979, dozens of independent witnesses — including police, transport drivers, and civilian pilots — reported unexplained lights over the strait. A taxi driver reported being stopped by a luminous green ball on the Launceston highway. Multiple witnesses near the northwest Tasmanian coast reported a "doorway of light." Cape Grim, on the northwestern tip of Tasmania — one of the world''s last clean-air monitoring stations, with nothing to its southwest for thousands of kilometres of open Southern Ocean — sits at the edge of the sighting pattern. The Valentich case remains the only pilot disappearance in Australian aviation history with a concurrent UFO report logged in the official air traffic record.',
  'Valentich''s last words are in the Australian aviation record. Melbourne Centre logged them in real time. The transcript ends with 17 seconds of metallic sound that was never identified, then silence. The aircraft and the man were never found. The explanation that satisfies the aviation authority has not been formally stated.',
  -40.6800, 144.6900, 'paranormal', 12, false, 'active'
),

-- 5. Linda Ghost Town — The Royal Hotel
(
  'Linda — The Royal Hotel',
  'linda-ghost-town',
  'The graffiti reads "help me." The walls it''s carved into have been standing since 1899.',
  'Linda was established in 1899 as a service settlement for the North Mount Lyell copper mine, sitting in a valley in the West Coast Range. At its peak it had a railway terminus, hotels, and the full infrastructure of a working mining town. On 12 October 1912, fire broke out at the adjacent North Mount Lyell mine. Forty-two men were killed underground. The survivors and the mine''s decline began emptying Linda almost immediately. The mine closed in 1929. The town has been effectively abandoned for nearly a century. Its most notable survival is the Royal Hotel — a grey timber building with a collapsing verandah whose interior walls now bear layers of graffiti left by decades of explorers. Among the carved phrases: pentagrams, names, dates, and the words "help me." The vegetation around the building grows denser each year. Access requires a walk from the Gormanston road down through encroaching west coast bush. The 1912 disaster memorial sits nearby, maintained, while everything else continues to deteriorate in the weather.',
  'The hotel was built to serve men who came to extract metal from the mountain. The mountain pushed back in 1912. The hotel is still here. The men are not. The graffiti on the walls was left by people who came later, looking for something to feel in a place that already has too much of it.',
  -41.9380, 145.5750, 'abandoned', 19, true, 'active'
),

-- 6. North Mount Lyell Mine Disaster — Gormanston
(
  'North Mount Lyell Mine Disaster',
  'north-mount-lyell-disaster',
  '42 men died underground. There was no emergency warning system because there had never needed to be one.',
  'On 12 October 1912, fire broke out in the pump house on the 700-foot level of the North Mount Lyell copper mine. There was no emergency warning system in operation. Of the 170 workers underground at the time, 73 escaped on the first day. Forty-two men were killed. More than 100 others were trapped in deep stopes and had no way of knowing about the fire until it was too late. The rescue effort was one of the largest in Australian mining history: fire crews were rushed by train from Hobart; equipment was shipped across Bass Strait from Bendigo aboard SS Loongana in a crossing that set a speed record. The last survivors were brought to the surface more than 100 hours after the fire began. A subsequent coronial inquest found the initiating seismic event was mining-induced — meaning the mine''s own operations contributed to the conditions that killed its workers. Gormanston, which served as both company town and disaster relief centre, declined steadily through the 20th century. A 1951 cyclone destroyed its school, fire station, and most remaining homes. By 2013 it had six residents. The memorial to the 42 men sits near the mine headframe, rarely visited.',
  'The mine had no warning system because there had never been a fire requiring one. That logic — that what has not yet happened is not a risk — is embedded in the rock alongside the copper. Forty-two men died beneath the weight of that assumption.',
  -41.9280, 145.5560, 'strange_history', 28, true, 'active'
),

-- 7. Beaconsfield Gold Mine
(
  'Beaconsfield Gold Mine',
  'beaconsfield-gold-mine',
  'They asked for Foo Fighters. They were one kilometre underground.',
  'At 9:26 pm on 25 April 2006 — Anzac Day — a 2.3-magnitude earthquake triggered a rockfall at the Beaconsfield gold mine in northern Tasmania. Of the seventeen miners underground, fourteen escaped immediately. Larry Knight was killed. Brant Webb and Todd Russell were found alive on the sixth day when rescuers heard them tapping against a drill bit — trapped nearly one kilometre underground in a partially collapsed cage, surviving on a protein bar and whatever water seeped through the rock. For fourteen days, engineers excavated a rescue tunnel through unstable ground while Webb and Russell communicated via a 90mm PVC pipe, directing the drilling by ear. They requested an iPod loaded with Foo Fighters. They emerged on 9 May 2006. A subsequent coronial inquest found the initiating earthquake was mining-induced — triggered by the mine''s own operations. The mine reopened in 2007 and closed permanently in 2012. The headframe and processing buildings remain standing on the edge of the town.',
  'They asked for Foo Fighters. That detail survives in every account because it is the most human thing in the story — two men a kilometre underground, sending a list up a pipe. The mountain had more patience. They were faster.',
  -41.1833, 146.8167, 'strange_history', 23, true, 'active'
),

-- 8. Spray Silver Mine Ruins
(
  'Spray Silver Mine Ruins',
  'spray-silver-mine-ruins',
  'A keyhole tunnel bored through solid rock in 1892. You carry your own light now.',
  'The Spray Silver Mine operated between 1892 and 1913, part of the Zeehan silver boom that briefly made the West Coast Range one of the most intensively mined regions in Australia. A railway was constructed to service the mine, and with it came a tunnel: 100 metres long, keyhole-shaped in cross-section, bored through solid rock by hand drill and blasting powder. The mine closed in 1913 when silver yields fell below commercial viability. The railway was abandoned. The valley sealed over. The route has since been converted to a walking and mountain bike trail. Following it brings walkers through the keyhole tunnel — its shape exactly as it was cut in the 1890s, lit by whatever light the walker brings — and out the other side to where two large brick boilers, collapsed engine rooms, and scattered ore machinery sit in the undergrowth. The boilers are still large enough to stand inside. Some ore carts remain on their original rails. There are no fences and no signs identifying what any of it is.',
  'The tunnel was bored for a train that stopped running in 1913. The shape cut through the rock is still exactly that shape — functional, specific, designed for something that no longer exists. The ore carts are still at the correct angle. The mine at the other end does not distinguish between then and now.',
  -41.8700, 145.4050, 'abandoned', 11, true, 'active'
),

-- 9. Dundas Ghost Town
(
  'Dundas Ghost Town',
  'dundas-ghost-town',
  'A thousand people in 1891. The newspaper called it a "deserted township" four years later.',
  'Dundas reached a population of approximately 1,000 people at its 1891 peak, built on the same silver deposits that were driving the boom across the West Coast Range. The ore thinned faster than expected. By 1895 — just four years after its peak — the Zeehan and Dundas Herald was publishing accounts of the "deserted township." The contraction happened faster than people could organise a departure: houses were left standing, stores closed mid-stock, the mechanics of daily life abandoned where they sat. The population fell to around 300 within the decade, then continued falling. The ruins sit within walking distance of the Zeehan area via unsealed track. What remains is stone foundations, collapsed timber, the scatter of domestic objects — bottle glass, corroded iron, cut stone — that marks every place people lived intensely and then left suddenly. The forest is systematic about what it is doing to the timber. The stone takes longer. There are no interpretive signs.',
  'The newspaper called it a "deserted township" in 1895, four years after it was built. The speed of the emptying was the story. The forest has been adding its own chapter ever since, at a pace that will eventually make the distinction between what was built and what grew here impossible to read.',
  -41.8800, 145.2350, 'abandoned', 8, false, 'active'
),

-- 10. Recherche Bay
(
  'Recherche Bay',
  'recherche-bay',
  'The French documented everything — their names, their dances, their faces. Then left. Forty years later, those people were gone.',
  'In February 1792, French expedition vessels Recherche and Espérance anchored in this bay at the southern tip of Tasmania under Rear-Admiral Bruni d''Entrecasteaux, searching for the lost La Pérouse expedition. What they found was a sustained encounter with the Nuenone people of southern Lutruwita — among the most thoroughly documented early contacts between Europeans and Aboriginal Tasmanians before colonisation began in earnest. French naturalists catalogued hundreds of previously unknown plant and animal species. Scientists established the first astronomical observatory in Australian territory. The Nuenone traded, danced, and shared food with the expedition across multiple days. The French recorded their names, their tools, their social structures, the specific quality of their laughter. Then the expedition left. Within forty years, every Nuenone person was either dead or had been deported to Wybalenna. The bay was named for the French ship. The Nuenone name for it was not recorded. The forest surrounding the bay has barely changed since 1792.',
  'The French were meticulous. They recorded names, faces, gestures, the specific way the Nuenone laughed. Then they sailed away. The record they left is one of the most detailed documents of a people who would be destroyed within a generation. The bay carries the name of the ship. It does not carry the name of the people who knew it first.',
  -43.5500, 146.9300, 'strange_history', 15, true, 'active'
),

-- 11. Williamsford — Hercules Haulage Ruins
(
  'Williamsford — Hercules Haulage',
  'williamsford-hercules-mine',
  'Ore down, supplies up, across a valley that is now completely silent.',
  'Williamsford was established to service the Hercules mine during the 1890s silver boom, its defining feature an aerial ropeway — the Hercules Haulage — that stretched more than 1.5 kilometres from the valley floor up to the mine workings 500 metres higher on the slopes of Mount Read. Ore buckets descended continuously; supplies went back up. The system ran around the clock, swinging loaded buckets across the valley in all weather. The mine closed when the ore ran out. Williamsford emptied. What remains today is accessible by walking track from the North Lyell Road: collapsed stone engine rooms, rusted boiler tanks, and — most striking — the massive concrete anchor footings of the haulage system standing on the hillside at the precise angle they were built to hold, still oriented toward the upper anchor point 1.5 kilometres above. They were engineered to resist enormous tension. The tension is gone. The anchors hold nothing, at the correct angle, waiting for a load that has not arrived for over a century.',
  'The ropeway ran 24 hours a day. The valley is now completely quiet. The concrete anchors are still at the exact angle they were built to hold — designed for a tension that no longer exists, pointing toward a mine that closed a century ago. That kind of structural precision outlasts its purpose by a very long time.',
  -41.8940, 145.4900, 'abandoned', 13, true, 'active'
),

-- 12. Brady's Lookout, West Tamar
(
  'Brady''s Lookout',
  'bradys-lookout-west-tamar',
  'He posted a reward for the Governor''s capture. The colony found it so funny they remembered it 200 years later.',
  'Matthew Brady arrived in Van Diemen''s Land as a transported convict in 1820. After escaping from Macquarie Harbour in 1824 with thirteen others, he assembled a gang and began raiding colonial properties across the island — targeting authority and the propertied class, treating captives with documented courtesy, and becoming the subject of an unusual popular sympathy in a colony largely composed of people who had reason to dislike the administration. By 1826 he was effective enough that Lieutenant-Governor Arthur posted a reward of 25 guineas for his capture. Brady responded by posting his own public notice offering 20 gallons of rum to anyone who could deliver Arthur to him. The reversal — a fugitive convict offering a reward for the sitting Governor — caused sufficient public amusement that the story has been retold ever since. Brady''s Lookout on the West Tamar River was one of his primary observation posts: from the elevated ridge he could observe military and colonial traffic moving along the Tamar valley in both directions. He was captured in April 1826 after being shot and wounded near Campbell Town, and transported to Hobart for execution on 4 May 1826. He was 27 years old. Crowds lined the streets. Women brought flowers.',
  'The Governor put a price on his head. He responded by putting a price on the Governor. A colony founded on the absolute authority of the Crown found this funny enough to remember two hundred years later. Brady understood something about Van Diemen''s Land that the administration did not: the people being governed had complicated feelings about being governed.',
  -41.3900, 146.9600, 'folklore', 22, true, 'active'
);
