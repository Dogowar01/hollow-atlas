-- ============================================================
-- HOLLOW ATLAS — South Australia Extra: Haunted & Paranormal
-- 15 deep-cut locations beyond the original 30
-- Run AFTER seed_south_australia.sql
-- Then run seed_sa_extra_images.sql
-- Then re-run add_state_column.sql (idempotent)
-- ============================================================

INSERT INTO public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
VALUES

(
  'Adelaide Arcade',
  'adelaide-arcade-cluney',
  'Australia''s first electric arcade, 1885. Caretaker Francis Cluney was found in the machinery on 21 June 1887. He has not left.',
  'Adelaide Arcade was officially opened on 12 December 1885 as Australia''s first retail arcade with electric lighting — a technological marvel of its time. On the evening of 21 June 1887, the lights went out. Caretaker Francis Cluney — a former Crimean War soldier known for his military bearing and popular with the shopkeepers — went to investigate the engine room. He was found with his body trapped in the flywheel machinery, mangled beyond saving. The inquest ruled accidental death: he had slipped on the engine room floor and his clothing had caught in the mechanism. Some accounts of the period suggest he was pushed; this was never substantiated. Cluney has been the building''s most active ghost for 135 years. He is described as appearing throughout the arcade — not only near the engine room — looking into shop windows, standing on the upper gallery watching shoppers below, pausing at the arcade entrance in the attitude of someone about to begin a circuit of inspection. He does not interact with the living and does not appear aware of the structural changes made to the arcade over the decades. He is described as appearing in exactly the military bearing that characterised him in life. Adelaide Arcade is now considered the most haunted commercial building in South Australia, with Cluney as the anchor of a haunting that includes four other reported presences.',
  'He spent two years maintaining this building and died in it. He has spent 135 years maintaining it since.',
  -34.9237, 138.6023, 'haunted', 51, true, 'active'
),

(
  'North Kapunda Hotel',
  'north-kapunda-hotel',
  'Kapunda calls itself Australia''s most haunted town. The North Kapunda Hotel is why.',
  'Kapunda, an hour north of Adelaide in the Clare Valley, was the site of Australia''s first copper mine and became a substantial colonial town in the 1840s. The North Kapunda Hotel is the focus of a haunting reputation that has brought Kapunda its claim — contested but persistent — as the most haunted town in Australia. The hotel''s documented presences are named and historically specific: Sarah, a child adopted by a brothel madam after her prostitute mother was murdered in the hotel, whose ghost is seen in the rooms associated with that history; Hue, a miner who died in Room 14 following a botched amputation, whose apparition is associated with that room; and Dr Henry Smyth-Blood, Kapunda''s first mayor, whose formal presence is reported in the hotel''s more official spaces. The accounts are distinguished from typical hotel ghost stories by their continuity and specificity — the same named presences in the same named rooms, reported by people with no prior knowledge of the hotel''s history, across more than a century of the building''s operation. A fourth presence, sometimes described as malevolent and in black, has been reported in the building''s deeper interior and is the presence that investigators find most difficult to engage with. The hotel offers paranormal investigation nights. The named presences reliably cooperate. The fourth does not.',
  'Three named ghosts, and a fourth that has no name and does not want one. The fourth is the one that makes investigators hesitant.',
  -33.9947, 138.9158, 'haunted', 44, true, 'active'
),

(
  'Carclew House',
  'carclew-house-north-adelaide',
  'A Gothic mansion on Montefiore Hill. Sir Langdon Bonython lived here. The circumstances of his wife''s death have never been settled.',
  'Carclew House is a Gothic-revival mansion on Montefiore Hill in North Adelaide, constructed in the 1880s and associated primarily with Sir Langdon Bonython — newspaper proprietor, philanthropist, and one of Adelaide''s most prominent public figures of the late nineteenth and early twentieth centuries. The house passed to the South Australian government in the mid-twentieth century and is now managed as an arts centre for young people. The haunting tradition at Carclew centres on Lady Bonython: accounts suggest that the circumstances of her death at the house were not straightforwardly natural, though the historical record is ambiguous and the family''s public prominence ensured a degree of protection from scrutiny that a less connected household might not have had. The accounts are of a woman in distress — not a passive or watchful presence like many of the state''s reported hauntings, but something more active. Staff working alone in the building describe a sense of urgency that comes from the older section of the house, and two people over separate decades have reported hearing a woman''s voice from the upper floor saying a single word they could not identify before going silent. The arts centre hosts children''s programs daily. The staff who know the building well tend to schedule those programs in the newer sections.',
  'Wealth protects the living from scrutiny. It does not appear to protect what the house remembers.',
  -34.9087, 138.5973, 'haunted', 22, false, 'active'
),

(
  'Seppeltsfield Winery',
  'seppeltsfield-winery-barossa',
  'Built in 1851. The ghost hunters come with equipment. The winery staff come with a different kind of certainty.',
  'Seppeltsfield Winery in the Barossa Valley was established by Oscar Benno Seppelt in 1851, making it one of the oldest continuously operating wineries in Australia. The original bluestone buildings, underground cellars, and the distinctive date palm avenue along the driveway create a landscape of unusual persistence — the winery''s essential geography has changed very little in 170 years. The paranormal accounts at Seppeltsfield are concentrated in the underground cellar complex, where wine in centenary barrels has been maturing in continuous darkness since the 1870s. Winery staff and paranormal investigators who have spent time in the cellars describe experiences that are primarily sensory rather than visual: temperature variations that move against the natural thermal gradient of the space; a sound in the oldest section of the cellar that some describe as breathing and others describe as a slow, rhythmic movement of air that does not correspond to any ventilation system; and a smell — not wine, not must, not any identifiable fermentation product — that appears briefly and disappears without explanation. The winery''s records include accounts from cellar workers going back to the early twentieth century that describe similar phenomena in nearly identical terms across seven decades.',
  'A hundred and seventy years of the same darkness, the same coolness, the same slow time. Something has been aging in there alongside the wine.',
  -34.5167, 138.9000, 'haunted', 19, false, 'active'
),

(
  'Burra Unicorn Brewery Cellars',
  'burra-unicorn-brewery-cellars',
  'The brewery supplied South Australia''s beer from 1873 to 1902. The cellars are under the town. Some of the people who worked in them never came up.',
  'The Unicorn Brewery at Burra, the historic copper mining town in the mid-north, produced beer from 1873 to 1902 in underground stone cellars that run beneath the commercial centre of town. The cellars were quarried into the local rock by German immigrant workers and served as both production and storage facilities, remaining at a stable temperature year-round for fermentation. The brewery closed after a fire in 1902. The cellars have been accessible to the public in various forms since and are part of the Burra heritage trail. The accounts from the cellars are of two distinct types: a presence associated with one of the older sections that is described as male, heavy, and occupying a specific corner of the main chamber with a persistence that visitors find disconcerting; and a sound — footsteps on the stone floor, moving from the older tunnels toward the main chamber — that is reported by almost everyone who spends time in the cellars after the guided tour groups leave. The footsteps stop at the entrance to the main chamber. They do not enter. Investigators have noted that the sound pattern is consistent with a specific gait rather than a generalised haunting noise: regular, unhurried, purposeful.',
  'The cellars were built to keep the beer cold. They kept something else cold too. It is still down there.',
  -33.6861, 138.9264, 'haunted', 17, false, 'active'
),

(
  'Hahndorf German Cemetery',
  'hahndorf-german-cemetery',
  'The oldest surviving German settlement in Australia. The Silesian Lutheran immigrants who founded it brought their dead with them in a specific sense.',
  'Hahndorf in the Adelaide Hills was settled in 1839 by Silesian Lutheran refugees fleeing religious persecution in Prussia — the first successful German settlement in Australia, arriving on a ship chartered specifically to bring a community to safety rather than individuals to labour. The town''s Lutheran character, its German architecture, and its cemetery reflect a transplanted community that arrived whole rather than assembled over time. The Hahndorf cemetery contains the graves of the original settlers and their descendants, with inscriptions in German Gothic script spanning from 1839 to the present, a continuity of German-speaking interment unique in Australia. The accounts from the cemetery are distinctive in their cultural specificity: the presence reported there most consistently is described as conducting itself according to Lutheran customs — the figure, when visible, is always in prayer posture or moving between the older graves in a pattern consistent with visitation of graves on specific dates in the Lutheran calendar. Witnesses who identify the dates report the presence more strongly on those days. The community that arrived in 1839 brought not just their bodies but their entire practice of grief and remembrance. The cemetery appears to still hold all of it.',
  'They carried their whole world off the boat. The cemetery is where they put the part that needed to stay put.',
  -35.0283, 138.8050, 'haunted', 14, false, 'active'
),

(
  'Port Willunga Ruins',
  'port-willunga-jetty-ghost',
  'The jetty is gone. The Star of Greece went down in 1888. The lighthouse keeper''s cottage ruin sits above where the sailors drowned.',
  'Port Willunga on the Fleurieu Peninsula had a working jetty from the 1870s until it was destroyed by storms in the early twentieth century. In August 1888, the barque Star of Greece — loaded with grain for England — was driven onto the reef below the cliffs in a storm, killing nine crew members. The wreck is a popular dive site. The ruins of the jetty stores and the cottage associated with the port''s operations remain on the clifftop above the reef. Paranormal accounts from Port Willunga cluster at two locations: the clifftop ruins, where visitors report voices from below — from the direction of the sea rather than from anyone present — on nights when the swell is running, specifically voices that appear to be calling for assistance in a context of distress; and the beach below the cliffs at low tide, where divers preparing to access the Star of Greece wreck have described a cold concentration in a specific section of water that does not correspond to thermocline variations and that disappears when you move away from it. The nine men who died in the wreck are commemorated on a memorial above the ruins. The beach section of cold water corresponds roughly to where the vessel grounded.',
  'They died against the reef in a storm in 1888. The reef remembers where they went in.',
  -35.2750, 138.4667, 'haunted', 24, false, 'active'
),

(
  'Morialta Conservation Park',
  'morialta-gorge-spirits',
  'The gorge has been considered significant by the Kaurna people since before any European set foot in South Australia. The significance did not change when the Europeans arrived.',
  'Morialta Conservation Park in the Adelaide Hills contains a dramatic gorge system with permanent waterfalls — rare in South Australia''s summer-dry landscape. The Kaurna people, whose traditional country includes the Adelaide plains and the Mount Lofty Ranges, held the Morialta gorge as a place requiring specific approach protocols, associated with their belief in Yurlunggur, the rainbow serpent, and with other spiritual presences that inhabited permanent water sources. European settlers encountered this designation in the 1830s and partially absorbed it: the gorge appears in colonial accounts from the 1840s and 1850s as a place that settlers also found unsettling, in terms they could not articulate that closely resemble the Kaurna accounts without explicitly acknowledging them. Contemporary visitor accounts from Morialta describe a quality in the gorge that is consistent across European, Asian, and Aboriginal accounts: a sense of being watched from the cliff faces, a reluctance to move faster than the gorge itself seems to permit, and a perception — most strongly at the second and third falls — that the water is not indifferent to the people near it. Whether this is the accumulated effect of Kaurna belief informing the landscape''s reception over thousands of years, or something else, the accounts show no sign of diminishing with increased visitor traffic.',
  'The Kaurna knew this place required respect before any European named it. The place has been consistent about what it requires.',
  -34.9000, 138.7167, 'folklore', 18, false, 'active'
),

(
  'Old Glenelg Hotel',
  'old-glenelg-hotel-ghost',
  'Glenelg is where South Australia was proclaimed in 1836. The hotel that stood through that proclamation has never been entirely empty.',
  'Glenelg on Gulf St Vincent was the site of the proclamation of the Province of South Australia on 28 December 1836 — the founding of the colony under free settlement principles, without the convict transport system that characterised the eastern colonies. The various hotels and licensed premises that have occupied the Glenelg beach strip since that founding have accumulated a corresponding weight of history. The site most consistently associated with paranormal accounts in Glenelg is the block occupied by early hotel operations from the 1840s, whose original structure was demolished and rebuilt several times but whose cellars — according to accounts from contractors who have worked beneath the current commercial building — retain elements of the original construction. The accounts from the current building are concentrated in the lower floor and the area below it: sounds of a large gathering — conversation, movement, the sounds of a public house at capacity — from below the floor level, on nights when the premises above are empty. The sounds have been described by two separate building managers as unmistakable in character and impossible to explain. Both reported the sounds as isolated incidents and did not pursue them. Neither remained in the position for more than two years.',
  'South Australia was proclaimed here. The noise of that founding may be the most persistent thing in the ground beneath.',
  -34.9797, 138.5167, 'haunted', 15, false, 'active'
),

(
  'Peterborough Steamtown',
  'peterborough-steamtown-ghosts',
  'The last triple-gauge railway junction in the world. The engine drivers who built their lives here are still in the yards.',
  'Peterborough in South Australia''s mid-north was, until the standardisation of the Australian rail network, the only place in the country where three different rail gauges met — broad gauge, standard gauge, and narrow gauge — making it a logistical hub of enormous complexity and a town whose entire identity was constructed around the railway. Engine drivers, fitters, firemen, and their families built their lives in Peterborough across three generations. The railway''s decline in the mid-twentieth century was correspondingly total. The Steamtown Heritage Rail Centre at Peterborough preserves locomotives and rolling stock from the triple-gauge era. Volunteers and staff at Steamtown describe the workshop complex as among the more unusual heritage sites they have worked at: figures seen in the workshop bays, dressed in working railway attire, that disappear when the bay is entered; the sound of a locomotive building steam — the specific rhythmic sound of a coal fire being stoked in a firebox — from a locomotive that is cold and has been cold for decades; and a persistent quality in the main workshop building of being inhabited, of purposeful activity just below the threshold of direct observation, that staff describe as making the workshop feel lived-in rather than abandoned.',
  'They built their lives around the railway. When the railway went, the lives it had built stayed in the yards.',
  -32.9731, 138.8361, 'haunted', 16, false, 'active'
),

(
  'Jamestown Historic Gaol',
  'jamestown-historic-gaol',
  'The driest country in South Australia. The gaol held the men who broke under it.',
  'Jamestown in the mid-north of South Australia was established in the 1870s during a period of optimistic agricultural expansion into country that the subsequent Federation Drought would demonstrate was unsuitable for intensive farming. The historic gaol at Jamestown held prisoners from the farming communities of the mid-north through the driest and most desperate decades of colonial settlement — men whose crimes were often direct products of the drought and the economic desperation it produced. The gaol building is heritage listed and was for some years accessible for inspection. The most consistently reported experience in the Jamestown gaol is not visual but environmental: a quality of heat that is described by visitors as exceeding the ambient temperature of the building, localised to the cell corridor rather than the exercise yard or the administrative section, and carrying with it a sense of compression — of space that has been made deliberately small and is smaller than its physical dimensions suggest. Several visitors have described this as the most uncomfortable single building they have entered in Australia, in terms that they find difficult to connect to the building''s physical properties.',
  'The outback heat and the cell''s heat were different kinds of the same punishment. Both are still present in the corridor.',
  -33.2058, 138.5942, 'haunted', 11, false, 'active'
),

(
  'Victor Harbor Bluff',
  'victor-harbor-bluff-ghost',
  'The granite bluff above Encounter Bay. The whalers who worked below it in the 1830s left accounts of something on the headland at night.',
  'The Bluff at Victor Harbor — Rosetta Head — is a granite headland rising 85 metres above Encounter Bay on the Fleurieu Peninsula, named after the encounter between French and British exploring vessels in 1802. The bay below the Bluff was the centre of South Australia''s whaling industry in the 1830s, one of the most brutal industries in the colony, operating in conditions of extraordinary violence and isolation. The whalers'' accounts of the Bluff headland at night — preserved in journals and logbooks in the State Library — describe a figure on the headland in terms that the whalers themselves did not attempt to explain: a tall figure that appeared at the summit after dark and stood for extended periods without moving, visible against the sky, that was present on some nights and absent on others without pattern, and that had disappeared without trace on every occasion that a boat was sent to investigate. The whaling station closed in 1843. The accounts of the figure on the Bluff predate the station by several years, appearing in the journals of the earliest European visitors to the bay. The headland has been a recreation area since the late nineteenth century. The figure continues to be reported, at a lower frequency than the whaling era accounts, but in consistent terms.',
  'The whalers saw it first. They wrote it down because they had no other way to process it. The figure on the headland has been there since before the whalers came.',
  -35.5500, 138.6167, 'haunted', 13, false, 'active'
),

(
  'Wilpena Pound Arkaroo Rock',
  'wilpena-pound-arkaroo-rock',
  'The rock art site in the Flinders Ranges that records the Dreaming story of Wilpena Pound''s creation. The story is not finished.',
  'Arkaroo Rock is a rock art site in Ikara-Flinders Ranges National Park that contains Adnyamathanha paintings associated with the Dreaming story of Wilpena Pound — the remarkable natural amphitheatre in the Flinders Ranges that the Adnyamathanha describe as the bodies of two Akurra (rainbow serpents) who coiled around each other after consuming a ceremonial feast and became stone. The rock art at Arkaroo depicts elements of this account in ochre and charcoal on sheltered rock faces. The Adnyamathanha continue to maintain custodianship of Arkaroo Rock and the broader Pound. European visitors to Arkaroo Rock report a consistent experience that differs from the experience of most accessible rock art sites: a sense that the art is active rather than historical — that it is doing something rather than recording something — that increases rather than diminishes with proximity. Park rangers who work the site describe a quality of attention in the rock shelter that most visitors remark on without prompting, describing it in terms of being regarded rather than observed. The Adnyamathanha account of the site includes the understanding that the Akurra are not gone but sleeping; the paintings are part of the sleeping, not a record of something finished.',
  'The story is not in the past. The Akurra are asleep inside the land, and the rock art is the dreaming they are having.',
  -31.5000, 138.5167, 'folklore', 25, true, 'active'
),

(
  'Auburn South Australia',
  'auburn-sa-haunted-town',
  'The oldest town in the Clare Valley. The accounts go back further than the town''s records.',
  'Auburn in the Clare Valley is the oldest European settlement in the region, established in the 1840s by English and Irish settlers who found the area suited to viticulture and mixed farming. The town''s built fabric — stone cottages, a bluestone church, commercial buildings from the 1850s and 1860s — has survived largely intact due to the valley''s slow economic growth after the gold rush era. The paranormal accounts in Auburn are distributed across several buildings in the main street rather than concentrated in a single site, and have the quality of a town-wide rather than site-specific haunting: figures in period dress on the main street at night that witnesses initially mistake for people before their manner of dress becomes apparent; sounds in occupied houses of activity in adjacent rooms that cease when the room is entered; and a specific account, reported by multiple residents over multiple generations, of a woman''s voice heard in the stone church during the night on specific dates — not singing, not speaking, but making a sound that witnesses describe as a sustained lament that is not quite any vocal category they know. No specific historical event in Auburn is identified with this account. The town''s history includes the deaths of multiple early settlers from typhoid and influenza that generated a community grief not represented in any specific memorial.',
  'A town''s grief does not always find a monument. Sometimes it finds the walls.',
  -33.8097, 138.6881, 'haunted', 12, false, 'active'
),

(
  'Hindmarsh Island Bridge',
  'hindmarsh-island-bridge-spirit',
  'The bridge controversy lasted years. The Ngarrindjeri women''s secret about the island was real. The island remembers the argument.',
  'Hindmarsh Island in the Murray Mouth estuary was at the centre of one of Australia''s most contested heritage and cultural disputes when a marina development and bridge proposal in the 1990s prompted Ngarrindjeri women to declare that the island held secret women''s knowledge — knowledge that made the bridge''s construction a sacred violation. The dispute became a Royal Commission, a parliamentary debate, and a bitter public controversy over whether the secret knowledge was genuine or fabricated. The bridge was eventually built in 2001. In 2001 the Federal Court found that Ngarrindjeri women''s connection to the island was genuine and that the knowledge was real. The developers who had called the knowledge false were found to have acted in bad faith. The bridge stands. Accounts from the island since the bridge''s construction describe a quality in the water around the causeway that the Ngarrindjeri women''s accounts had attempted to protect: a sense of disturbance in the estuary near the bridge footings, particularly at the tidal exchange, that is described by visitors and fishermen as a wrongness rather than a haunting — not a figure, not a sound, but a quality of the water that registers as hostile without being specifiable. Several Ngarrindjeri accounts describe the island as still trying to maintain what the bridge violated.',
  'They told the truth. They were called liars. The island was damaged anyway. The island has not forgotten.',
  -35.5167, 138.8667, 'folklore', 31, true, 'active'
);
