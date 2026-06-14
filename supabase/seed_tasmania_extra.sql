-- ============================================================
-- HOLLOW ATLAS — Tasmania Extra: Haunted & Paranormal
-- 15 deep-cut locations beyond the original 30
-- Run AFTER seed_tasmania.sql and seed_tasmania_2.sql
-- Then run seed_tasmania_extra_images.sql
-- Then re-run add_state_column.sql (idempotent)
-- ============================================================

INSERT INTO public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, report_count, verified, status)
VALUES

(
  'Theatre Royal Hobart',
  'theatre-royal-hobart',
  'He descended through the trapdoor on 3 March 1888. He never came back up.',
  'The Theatre Royal is Australia''s oldest surviving theatre, opened in 1837. On the night of 3 March 1888, celebrated baritone Frederick Federici was performing the role of Mephistopheles in a production of Faust. At the climactic moment, he descended through the stage trapdoor into the underworld — and died of heart failure in the machinery pit below. The curtain fell. The audience applauded, not yet knowing. Cast members who ran to the pit found him already gone. He was still in full Mephistopheles costume. In the weeks and then decades after his death, performers, stagehands and audience members reported a figure sitting in the dress circle — always in the same seat in the upper gallery, watching productions to completion. The apparition has been reported continuously for over 130 years, through renovations, two world wars, and multiple changes of management. Theatre staff refer to him simply as "Fred." He is considered benign, even protective. The seat he favours has never been officially retired — management has declined to do so on the grounds that doing so feels, in the words of one former director, "unnecessarily rude."',
  'He came to play the devil, and the role kept him. Some performances run longer than anyone intends.',
  -42.8821, 147.3272, 'haunted', 34, true, 'active'
),

(
  'Richmond Gaol',
  'richmond-gaol-1825',
  'Australia''s oldest intact gaol. The solitary cells are the oldest part.',
  'Built in 1825, Richmond Gaol predates Port Arthur by six years and is the oldest intact gaol in Australia. It held convicts who committed secondary offences in the colony — men already transported, already punished, now punished again. The solitary confinement block, known as the Dark Cells, kept prisoners in complete isolation and total darkness for weeks at a time. Some were held there for months. Multiple prisoners died within the walls, including two who were flogged to death. Visitors and tour guides report cold concentrations in the Dark Cells that move against the prevailing draft, a persistent sense of being watched from the corners, and — most commonly — the sound of something scraping rhythmically against stone, in a cell that sits empty and locked. One interpretation: a convict named Thomas Whalan, held in solitary for 47 days in 1839, was found to have scratched a calendar into the wall using his thumbnail. He ran out of wall before he ran out of days. His name appears in the colonial death register without cause of entry.',
  'The walls remember what the records chose to forget. Stone keeps longer accounts than paper.',
  -42.7336, 147.4398, 'haunted', 28, true, 'active'
),

(
  'Coal Mines Historic Site',
  'coal-mines-saltwater-river',
  'They sent men here when Port Arthur wasn''t punishment enough.',
  'The Coal Mines at Saltwater River were established in 1833 as a secondary punishment station — a posting for convicts who had offended within the convict system itself. In the brutal hierarchy of Van Diemen''s Land, this was the bottom. Men worked in underground shafts flooded with cold seawater, extracting coal by hand in near-darkness. Conditions were deliberately designed to break spirits rather than sustain labour. The coal was of poor quality and the operation was economically marginal from the start — its purpose was suffering, not productivity. The station closed in 1848. Today the ruins of the settlement remain largely intact above the mine shafts, which are now sealed. Visitors report hearing voices rising from the sealed shaft openings — not conversations, but single words or short phrases in what sounds like Irish or Welsh — and a low rhythmic percussion from underground, like a pick against stone, that stops when you approach the vent openings and resumes when you step back.',
  'They designed this place to reach inside a man and hollow him out. Something of that design persists.',
  -43.0928, 147.7245, 'haunted', 41, true, 'active'
),

(
  'St David''s Park',
  'st-davids-park-hobart',
  'Hobart''s most pleasant park. Built over its oldest burial ground.',
  'St David''s Park in central Hobart occupies the site of the colony''s original burial ground, in continuous use from 1804 until it was decommissioned and converted to a park in 1926. Estimates of the number of bodies still interred beneath the lawns and garden beds range from 300 to over 900. The conversion effort removed visible headstones — many of which are embedded in the park''s boundary wall — but the remains themselves were left in place. The park is considered one of Hobart''s most pleasant green spaces. At dusk, particularly in the winter months when foot traffic drops off, visitors have reported shadow figures moving against the angle of the remaining light — upright, purposeful, in clothing that reads as wrong for the period. Several accounts describe a figure kneeling beside the wall where the headstones are set, as though reading names. When approached, the figure is gone. The site includes the grave of the colony''s first surveyor, which was relocated and is the only grave still formally acknowledged above ground.',
  'A city built its leisure on top of its dead, as cities do. The dead do not always accommodate this arrangement.',
  -42.8826, 147.3267, 'haunted', 19, false, 'active'
),

(
  'Lenna of Hobart',
  'lenna-hotel-hobart',
  'Room 14 has been kept as it was. The guest who left has not been identified.',
  'The Lenna of Hobart began as the private mansion of shipping merchant Alexander McGregor, built in the Italianate style in 1874 on the slopes of Battery Point. The building changed hands multiple times over the following century before becoming a hotel. McGregor himself died in the house in 1893. Staff and guests have reported a recurring figure on the main staircase — a heavyset man in dark Victorian dress who descends slowly, pays no attention to anyone present, and disappears at the landing. Room 14 is the most consistently reported location: guests describe waking to find the writing desk chair moved to face the window, bedside objects rearranged, and a persistent cold draught with no source. In one account from 2007, a guest photographed what appeared to be a reflection in the window glass of a man standing behind them — a man who was not in the room. The hotel does not publicise its haunting reputation but does not deny it when asked directly.',
  'He built this house to last. He seems to have meant that in a more literal sense than most.',
  -42.8872, 147.3337, 'haunted', 23, false, 'active'
),

(
  'Woolmers Estate',
  'woolmers-estate-longford',
  'Five generations of Archers lived here. The sixth presence is not a family member.',
  'Woolmers Estate near Longford was established by Thomas Archer in 1817 and remained in continuous Archer family ownership for over 160 years — an almost unparalleled span of single-family occupation in Australian history. The property is now World Heritage listed as part of the Convict Sites of Australia. The main house, built up in stages from a simple Georgian cottage, contains furniture, portraits and personal effects spanning five generations. A sixth presence is reported by night-staff and visiting researchers: a figure seen in the long parlour, standing near the mantelpiece, in clothing consistent with the 1820s to 1840s. This figure has been encountered often enough that estate staff have debated whether it corresponds to a portrait on the property — one of Thomas Archer himself, painted circa 1838. The opinion is split. Thermographic surveys conducted by a university team in 2014 recorded two unexplained cold signatures in the long parlour on separate nights. The report was published but its paranormal section was placed in an appendix and flagged as inconclusive.',
  'Some families hold on to a place so long that the place holds on to them in return.',
  -41.5988, 147.1567, 'haunted', 17, false, 'active'
),

(
  'Clarendon House',
  'clarendon-house-evandale',
  'The grandest Georgian house in the southern hemisphere. The entrance hall is where they gather.',
  'Clarendon House near Evandale was completed in 1838 for wool merchant James Cox, and is widely regarded as the finest example of Georgian architecture in the southern hemisphere. The National Trust of Australia administers the property. The house required over 200 convict labourers during construction, working under conditions that resulted in at least three documented deaths on the property. The main entrance hall — a soaring two-storey space with a cantilevered staircase — is the most consistently reported site. Volunteer guides have described the sound of footsteps on the upper gallery when the floor is demonstrably empty, a cold presence at the base of the stairs with no accompanying draught, and on two recorded occasions, the clear sound of a door closing in a wing of the house that has been locked and physically secured. One guide refused to do solo opening shifts after an incident in 2019 she has declined to detail publicly beyond: "there was someone in the hall when I came in, and they weren''t there when I looked directly."',
  'The grandeur here was built on broken bodies. Grandeur has a way of obscuring what it cost.',
  -41.5734, 147.2156, 'haunted', 15, false, 'active'
),

(
  'Highfield Historic Site',
  'highfield-vdc-stanley',
  'The Van Diemen''s Land Company ran its empire from here. Something stayed behind.',
  'Highfield was the headquarters of the Van Diemen''s Land Company, established in 1826 as a private corporation granted one million acres of north-west Tasmania by the British Crown. The Company was responsible for the systematic displacement and ultimately the destruction of the north-west Aboriginal clans. The main house, completed in 1832, overlooks the town of Stanley and Bass Strait. The Company''s activities — including the use of sealers as agents of violence against Aboriginal women and children — make Highfield a site of layered and largely unacknowledged historical horror. The chapel on the grounds is the most reported site: visitors describe lights moving through the chapel windows at night when the building is locked and unoccupied, a sense of pressure when standing inside, and a persistent smell of smoke with no origin. Locals in Stanley describe hearing singing — described variously as lament or as something without category — coming from the Highfield grounds on still nights. The National Trust, which manages the property, has not commented on paranormal accounts.',
  'Empires have records. The people who suffered them often do not. What remains may be the only record left.',
  -40.7718, 145.2930, 'haunted', 12, false, 'active'
),

(
  'Eaglehawk Neck Dog Line',
  'eaglehawk-neck-dog-line',
  'The dogs chained across the isthmus were the last thing between a convict and freedom.',
  'Eaglehawk Neck is a narrow isthmus connecting the Tasman Peninsula to mainland Tasmania — at its narrowest point, little more than thirty metres across. From 1832, British authorities maintained a line of chained dogs across this bottleneck, supplemented by soldiers and lanterns, to prevent convict escapes from Port Arthur. The dogs were starved to keep them aggressive. Some were chained in water at low tide to extend the line across tidal flats. Escape attempts across the neck almost always ended in mauling or recapture. The few who made it across faced open country that was equally lethal. Martin Cash crossed in 1842 and became the only man widely acknowledged to have escaped and remained free. The dog line was maintained for nearly five decades. Visitors to the isthmus at night report animal sounds — low, canine, moving in patterns inconsistent with wind or ocean — along the ground where the dog chain posts were set. The sound is described not as barking but as something more like breathing, distributed along a line.',
  'They made the animals cruel to serve their cruelty. The animals had no choice in the arrangement.',
  -43.0228, 147.9248, 'haunted', 26, true, 'active'
),

(
  'Bothwell Castle Hotel',
  'bothwell-castle-hotel',
  'Bothwell calls itself Tasmania''s most haunted town. The hotel is where most of the accounts originate.',
  'Bothwell, in the central Midlands of Tasmania, has accumulated a reputation as the most haunted settlement in the state — a claim supported less by dramatic singular events than by the sheer density and longevity of reported experiences across multiple sites in a small area. The Castle Hotel, originally licensed in 1829, is the oldest continuously operating hotel in regional Tasmania and the most frequently cited location. Staff turnover in certain positions is noted to be unusually high. Reported experiences include: a male figure in period dress seen walking through the public bar before closing time and stepping through the wall at the far end; persistent unexplained drops in temperature in the cellar; objects found moved between the night and morning cleaning shifts; and a sound described by three different staff members over separate decades as someone descending the staircase from the upper floor, stopping, and not completing the descent. The staircase connects to two rooms that have been unoccupied for more than eight years.',
  'Some pubs hold their history loosely. This one has never let go of a single year.',
  -42.3783, 146.9481, 'haunted', 31, false, 'active'
),

(
  'Narryna Heritage Museum',
  'narryna-battery-point',
  'The merchant''s house kept the merchant''s routines after the merchant was gone.',
  'Narryna Heritage Museum in Battery Point occupies one of Hobart''s oldest surviving colonial houses, built in 1836 for merchant Andrew Haig. The house and its contents — furniture, clothing, kitchenware, personal documents spanning the 1830s through the early twentieth century — are preserved with exceptional fidelity to period. The museum is administered by the National Trust and is known to researchers as one of the finest intact examples of colonial domestic life in Australia. It is less publicly known for what staff describe as "the upstairs problem." The upper floor rooms, restored to 1840s configuration, produce consistent reports: footsteps in rooms that are empty and visible through glass-panelled doors; the sound of a chair scraping across floorboards when the floor has been undisturbed; and twice — once in 2011 and once in 2018 — a figure observed through the glass of a locked display room that could not be accounted for by any staff member or visitor present. The 2018 incident was documented in an internal staff note that has since been shared informally within Hobart''s heritage community.',
  'To preserve a house is to preserve its habits. Not all of those habits belong to the living.',
  -42.8874, 147.3335, 'haunted', 21, false, 'active'
),

(
  'Kunanyi Summit Chalet Ruins',
  'kunanyi-chalet-ruins',
  'They built a restaurant at the top of the mountain. It burned in 1967. The music comes from the ruins.',
  'The summit of kunanyi / Mount Wellington, at 1,271 metres above Hobart, hosted a stone chalet and restaurant complex constructed in the 1930s. The building offered panoramic views across the Derwent estuary and was a significant attraction through the post-war decades. In 1967 the chalet was destroyed by fire under circumstances that were investigated but never conclusively explained. The stone foundations and some structural walls remain at the summit, open to the weather and accessible by the Summit Road. Experienced bushwalkers and cyclists who traverse the summit after dark or in low visibility conditions have reported sounds from within the roofless ruins that are not consistent with wind: specifically, what multiple witnesses describe as music — a thin, distant melody suggesting stringed or wind instruments — that stops when approached and resumes when you move away. A smaller number of accounts describe a smell of cooking and wood smoke with no source. The summit is above the treeline and exposed; there are no buildings within several kilometres.',
  'Fire takes the substance of a place but not always its memory. Memory can take strange forms at altitude.',
  -42.8968, 147.2334, 'paranormal', 18, false, 'active'
),

(
  'Weldborough Hotel',
  'weldborough-pub-ghost',
  'The Chinese miners who worked this mountain never left. Not all of them.',
  'Weldborough, in north-east Tasmania near the Blue Tier plateau, was the centre of a significant Chinese mining community during the tin rush of the 1870s and 1880s. At its peak, the community numbered several hundred men, operating a joss house, market gardens, and their own social infrastructure on the margins of the European settlement. The Weldborough Hotel — rebuilt in its current form in the early 1900s — sits at the edge of what was once the Chinese quarter. Over the following generations, the tin industry collapsed, the Chinese community dispersed, and Weldborough shrank to near-nothing. The hotel has continued to operate, becoming known in recent decades as a remote bush pub. Bar staff and overnight guests report activity concentrated in the older rear section of the building: candles that re-light after being snuffed; the smell of incense with no source; and a figure — described consistently as a slight man in dark working clothes — that appears briefly in the far corner of the back bar and has never been seen to enter or exit through any door. A former barman collected accounts over six years before leaving the job. His notebook was not found when he left.',
  'They came from the other side of the world for tin. The mountain took many of them. Some stayed on their own terms.',
  -41.2167, 148.2667, 'haunted', 14, false, 'active'
),

(
  'Lake St Clair Disappearances',
  'lake-st-clair-missing',
  'The deepest lake in Australia. Experienced walkers go in and do not come out.',
  'Lake St Clair, in the heart of the Tasmanian Wilderness World Heritage Area, is the deepest lake in Australia at approximately 167 metres. It forms the southern terminus of the Overland Track and is a destination for experienced and well-equipped bushwalkers. Between 1960 and 2024, seventeen walkers have been reported missing in the Lake St Clair region, of whom eleven have never been found. The pattern is noted by search and rescue authorities as statistically unusual: the majority of the missing were experienced and well-equipped, and disappeared in conditions that were not extreme. Several disappearances occurred within a kilometre of the lake''s shore with no explanation for why the walker entered or failed to exit the water. Aboriginal Tasmanians of the Lutruwita nation describe Lake St Clair — Leeawuleena in the Palawa Kani language, meaning "sleeping water" — as a site requiring specific protocols of approach and behaviour. The nature of those protocols is not shared publicly. The lake has no reliable bottom mapping in its deepest section. It does not always return what enters it.',
  'Some places ask something of you before they let you through. It is not always clear what the asking sounds like.',
  -42.1167, 146.1667, 'paranormal', 37, true, 'active'
),

(
  'Risdon Cove',
  'risdon-cove-1804',
  'The first European settlement on the Derwent. The site of the first massacre.',
  'Risdon Cove, on the eastern bank of the Derwent River north of Hobart, was the site of the first British settlement in Van Diemen''s Land, established in September 1803 under Lieutenant John Bowen. Within six months, on 3 May 1804, soldiers under Bowen''s command opened fire on a large group of Muwinina people — men, women and children — who had gathered in the cove, possibly for a kangaroo drive that intersected with the settlement. The number killed is disputed and was disputed at the time; British accounts minimised the deaths, while subsequent historical analysis suggests the toll was significant, with some estimates exceeding fifty. The event is considered one of the earliest acts of organised violence against Aboriginal Tasmanians in the colony''s history. The site passed through various uses over the following two centuries. Today it is managed as the Risdon Cove Historic Site. Visitors and park staff report a persistent heaviness at the waterline — a sense of weight and of being observed — most strongly concentrated at the low-water mark where the largest gatherings of Muwinina people would have stood. No formal paranormal investigation has been conducted. The site''s significance to palawa communities is the primary frame through which it is managed.',
  'The founding violence of a colony is not a metaphor. It is a specific event, in a specific place, on a specific morning. The place remembers.',
  -42.8178, 147.3678, 'haunted', 29, true, 'active'
);
