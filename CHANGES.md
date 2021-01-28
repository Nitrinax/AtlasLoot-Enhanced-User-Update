# CHANGES from r4839-u16 to r4839-u17

## achievement update

AtlasLoot_Shadowlands						

	- achievement Shadowlands Dungeon Hero added

	- achievement Glory of the Shadowlands Hero added

	- achievements for each dungeon boss added

		- De Other Side
		- Halls of Atonement
		- Mists of Tirna Scithe
		- Plaguefall
		- Sanguine Depths
		- Spires Of Ascension
		- The Necrotic Wake
		- Theater of Pain
	
	- achievements for raid bosses added

		- castle nathria

# CHANGES from r4839-u15 to r4839-u16

## world boss update

AtlasLoot

	- Constants.lua

		- color for world boss content added

	- Locale

		- constants.<language>.lua

			- name strings for cataclysm world bosses added because there is no EncounterJournalID available

AtlasLoot_BurningCrusade

	- world bosses moved from raid content to a own category

AtlasLoot_Cataclysm

	- world bosses added

		- Akma'hat <Dirge of the Eternal Sands>
		- Garr
		- Julak-Doom <The Eye of Zor>
		- Mobus <The Crushing Tide>
		- Whale Shark
		- Xariona

		- special world boss loot added

		- shared world boss loot added		

AtlasLoot_MistsofPandaria

	- world bosses moved from raid content to a own category

AtlasLoot_WarlordsofDraenor

	- world bosses moved from raid content to a own category

	- world boss achievements added

AtlasLoot_Legion

	- world bosses moved from raid content to a own category

	- world boss loot resorted (cloth>leather>mail>plate>other)

	- Greater Invasion Points world bosses added

	- world boss achievements added

AtlasLoot_BattleforAzeroth

	- world bosses moved from raid content to a own category

	- world boss loot resorted (cloth>leather>mail>plate>other)

	- warfront world bosses added

		- The Lion's Roar
		- Ivus the Forest Lord

	- world boss loot added

		- Dunegorger Kraulok

			- Slightly Damp Pile of Fur added	

AtlasLoot_Shadowlands

	- world bosses moved from raid content to a own category

# CHANGES from r4839-u14 to r4839-u15

AtlasLoot_Shadowlands

	- world bosses added
		
        - Valinor, the Light of Eons (Bastion)
        - Mortanis (Maldraxxus)
        - Oranomonos the Everbranching (Ardenweald)
		- Muckformed (Revendreth)

# CHANGES from r4839-u13 to r4839-u14

AtlasLoot_Shadowlands

	- AtlasLoot.lua

		- added to ATLASLOOT_INSTANCE_MODULE_LIST

	- Loader.lua
		
		- added to ATLASLOOT_MODULE_LIST

File PLANNED.md added

TODO.txt reworked

# CHANGES from r4839-u12 to r4839-u13

File KNOWNBUGS.md added

TODO.txt reworked

AtlasLoot_Shadowlands

	- AtlasLoot_Shadowlands.toc file fixed

# CHANGES from r4839-u11 to r4839-u12

Atlasloot

	Button

		Extra_Price_type.lua

			- shadowlands currencies added

				- Phantasma
				- Stygia
				- Honor
				- Redeemed Soul
				- Reservoir Anima
				- Sinstone Fragments
				- Medallion of Service
				- Infused Ruby
				- Renown
				- Soul Ash
				- Grateful Offering

		Faction_type.lua

			- Ve'nari rep table added 

			- code added to include Ve'nari rep table

			- shadowlands faction id's added

				- Alexandros Mograine
				- Baroness Vashj
				- Choofa
				- Court of Harvesters
				- Court of Night
				- Cryptkeeper Kassir
				- Droman Aliothe
				- Grandmaster Vole
				- Hunt-Captain Korayn
				- Kleia and Pelagos
				- Lady Moonberry
				- Marasmius
				- Mikanikos
				- Night Fae
				- Plague Deviser Marileth
				- Polemarch Adrestes
				- Rendle and Cudgelface
				- Sika
				- Stitchmasters
				- Stonehead
				- The Ascended
				- The Avowed
				- The Countess
				- The Ember Court
				- The Undying Army
				- The Wild Hunt
				- Ve'nari

			- faction icons added

				- Court of Harvesters
				- Court of Night
				- Marasmius
				- Night Fae
				- Stitchmasters
				- The Ascended
				- The Avowed
				- The Ember Court
				- The Undying Army
				- The Wild Hunt
				- Ve'nari

			- Ve'nari rep table modified to use own translations, because LibBabble-Faction-3.0 has no translations for the steps of the Ve'nari rep table

	Locales

		- added locale strings for Ve'nari rep table to constants.<lang>.lua
		- added translations for Ve'nari rep table in most languages except for cn, tw and kr, but im not sure that the translations are correct

AtlasLoot_Collections

	data.lua

		- shadowlands epic world drops (boe) added

AtlasLoot_Factions

	data.lua

		Faction loot added

			Court of Night

				- Ensemble: Winterborn Guise
				- Ensemble: Winterborn Raiment
				- Ensemble: Winterborn Warbark

			The Ascended

				- Aspirant's Stretcher

			The Avowed

				- Lemet's Requisition Orders

			Ve'nari

				- Cypher of Relocation
				- Vessel of Unfortunate Spirits
				- Vessel of Unfortunate Spirits
				- Soultwinning Scepter
				- Oil of Ethereal Force
				- Maw-Touched Miasma
				- Sticky-Fingered Skeletal Hand
				- Bangle of Seniority
				- Sigil of the Unseen
				- Animated Levitating Chain
				- Animaflow Stabilizer
				- Soul-Stabilizing Talisman
				- Ritual Prism of Fortune
				- Phantasmic Infuser
				- Memory of Jailer's Eye
				- Loupe of Unusual Charm
				- Rank Insignia: Acquisitionist
				- Unbound Reality Fragment
				- Recipe: Crafter's Mark II
				- Possibility Matrix
				- Spatial Realignment Apparatus

# CHANGES from r4839-u10 to r4839-u11

Code Cleanup

Atlasloot_WorldEvents

	data.lua

		- Special Event "Death's Rising" is finished. The associated boss data has been removed. The dealer is still available.

# CHANGES from r4839-u9 to r4839-u10

AtlasLoot_Shadowlands

	data.lua

		Loot added

			Dungeons

				- De Other Side

					- Dealer Xy'exa

					- Mueh'zala

						- Raptor Soul

				- Sanguine Depths

					- General Kaal

				- The Necrotic Wake

					- Amarth <The Harvester>

				- Theater of Pain

					- Mordretha, the Endless Empress

# CHANGES from r4839-u8 to r4839-u9

Atlasloot

	Locales

		- added locale strings for resorted AtlasLoot_Crafting to constants.<lang>.lua
		- added translations for resorted AtlasLoot_Crafting in most languages except for cn, tw and kr

AtlasLoot_Crafting

	data.lua

		- alchemy recipes checked 100%

		- re-sorts categories in the recipe list to make it look like the list in the in-game recipe book but not identical
		
		- categories used for alchemy

			- research
			- anti-venom
			- cauldrons
			- potions
			- elixirs
			- flasks
			- reagents
			- transmutation
			- conversion
			- trinkets			
			- misc

		Alchemy

			- shadowlands recipes added

				- Bramblethorn Juice
				- Brutal Oil
				- Crafter's Mark I
				- Crafter's Mark II
				- Crushed Bones
				- Distilled Resolve
				- Draught of Grotesque Strength
				- Elixir of Humility
				- Embalmer's Oil
				- Eternal Cauldron
				- Flask of Measured Discipline
				- Ground Death Blossom
				- Ground Marrowroot
				- Ground Nightshade	
				- Ground Rising Glory
				- Ground Vigil's Torch
				- Ground Widowbloom
				- Liquid Sleep
				- Novice Crafter's Mark
				- Potion of Deathly Fixation
				- Potion of Divine Awakening
				- Potion of Empowered Exorcisms
				- Potion of Hardened Shadows	
				- Potion of Hibernal Rest
				- Potion of Phantom Fire
				- Potion of Sacrificial Anima
				- Potion of Shaded Sight
				- Potion of Soul Purity
				- Potion of Specter Swiftness
				- Potion of Spectral Agility
				- Potion of Spectral Intellect
				- Potion of Spectral Stamina
				- Potion of Spectral Strength
				- Potion of Spiritual Clarity
				- Potion of the Hidden Spirit
				- Potion of the Psychopomp's Speed
				- Potion of Unhindered Passing
				- Powdered Dreamroot
				- Pulverized Breezebloom
				- Red Noggin Candle
				- Refined Submission
				- Shadestone
				- Shadowcore Oil
				- Shadowghast Ingot
				- Spectral Flask of Power
				- Spectral Flask of Stamina
				- Spiritual  Stone
				- Spiritual Anti-Venom
				- Spiritual Healing Potion
				- Spiritual Mana Potion
				- Spiritual Rejuvenation Potion

			- bfa recipes added

				- Greater Mystical Cauldron
				- Imbued Alchemist Stone
				- Emblazoned Alchemist Stone
				- Eternal Alchemist Stone
				- Crushing Alchemist Stone
				- Abyssal Alchemist Stone
				- Ascended Alchemist Stone
				- Awakened Alchemist Stone
				- Peerless Alchemist Stone
				- Abyssal Healing Potion
				- Potion of Focused Resolve
				- Potion of Empowered Proximity
				- Potion of Unbridled Fury
				- Potion of Wild Mending
				- Superior Battle Potion of Stamina
				- Superior Battle Potion of Agility
				- Superior Battle Potion of Intellect
				- Superior Battle Potion of Strength
				- Superior Steelskin Potion
				- Vial of Obfuscation
				- Silas' Sphere of Transmutation
				- Potion of the Unveiling Eye

			- legion recipes added

				- Potion of Prolonged Power
				- Silvery Salve

			- warlords recipes added

				- Fire Ammonite Oil
				- Blackwater Anti-Venom
				- Healing Tonic

			- cataclysm recipes added

				- Deathblood Venom

			- classic recipes added

				- Potion of Petrification

# CHANGES from r4839-u7 to r4839-u8

AtlasLoot_Factions

	data.lua

		- shadowlands factions addded

			- Court of Harvesters
			- Court of Night (only see with Night Fae covenant active)
			- Marasmius (only see with Night Fae covenant active)
			- Stitchmasters
			- The Ascended
			- The Avowed
			- The Ember Court
			- The Undying Army
			- The Wild Hunt

# CHANGES from r4839-u6 to r4839-u7

AtlasLoot_Classic

	data.lua

		- Darkmaul Citadel in Exil's Reach added as the first dungeon

AtlasLoot_Shadowlands

	data.lua

		- data for Darkmaul Citadel moved to AtlasLoot_Classic

# CHANGES from r4839-u5 to r4839-u6

Atlasloot

	Core

		ItemStrings.lua

			- function for SLMaxItemLvl added
			- constant for LEGION_MAX_UPGRADELVL, BFA_MAX_UPGRADELVL changed
			- constant for SL_MAX_UPGRADELVL added

AtlasLoot_Shadowlands

		- added new custom module for shadowlands expansion
		- all currently available shadowlands dungeons included
		- all currently available shadowlands raids included

		- loot for following bosses unknown
			- Dealer Xy'exa
			- General Kaal
			- Amarth <The Harvester>
			- Mordretha, the Endless Empress

# CHANGES from r4839-u4 to r4839-u5

Atlasloot

	ItemDB

		ItemDB.lua

			- replaced code for getting a map name by map id with a shorter version

AtlasLoot_Collections

	data.lua

		- added warlords season 2 and 3 tabards to pvp section

		- added legion epic world drops (boe)
		- moved legion tabards to normal
		- added legion tabards for alliance races Ren'dorei, Lightforged
		- added legion tabards for horde races Highmountain, Shal'dorei
		- added legion pvp season 3 - 7 tabards to pvp section
		- removed legion legendary Distilled Titan Essence 
		
		- added bfa faction tabards
		- added bfa pvp season 1 - 4 tabards to pvp section
		- added bfa epic world drops (boe)
		- added bfa legendary Ashjra'kamas, Shroud of Resolve

# CHANGES from r4839-u3 to r4839-u4

Atlasloot_WorldEvents

	data.lua

		- added forgotten event "Legion Assaults" as a permanent event
		- added transmog loot to Legion Assaults

# CHANGES from r4839-u2 to r4839-u3

Atlasloot

	Locales

		- added locale strings for "Visions of N'Zoth", invasions and horrific visions to constants.<lang>.lua
		- added translations for "Visions of N'Zoth", invasions and horrific visions in most languages except for cn, tw and kr

Atlasloot_WorldEvents

	data.lua

		- added "Visions of N'Zoth" as a permanent event
		- added special loot from invasion for bosses in Uldum and Vale of Eternal Blossoms
		- added special loot from horrofic visions in stormwind and orgrimmar
		- added new recipes from mobs in in Uldum and Vale of Eternal Blossoms

# CHANGES from r4839-u1 to r4839-u2

Atlasloot

	Locales

		- added locale strings for chamber of heart, mother and wrathion to constants.<lang>.lua
		- added translations for chamber of heart, mother and wrathion in most languages except for cn, tw and kr

Atlasloot_Collections

	data.lua

		location added

			- chamber of heart

		vendors added
		
			- mother
			- wrathion

		items added

			- mother

				- Azerite-Fueled Timequartz Rank 3
				- Branch of Rejuvenating Rings Rank 3
				- Calibrated Existence Gauge Rank 3
				- Churning Blood of the Conquered Rank 3
				- Enhanced Purification Protocols Rank 3
				- Fetish of the Hidden Labyrinths Rank 3
				- Fluctuating Worldvein Rank 3
				- Gleaming Star Shard Rank 3
				- Grid of Bursting Vitality Rank 3
				- Lingering Seed of Renewal Rank 3
				- Manual of Unbalanced Tactics Rank 3
				- Null Force Nullifier Rank 3
				- Pearl of Perspicuous Intentions Rank 3
				- Perfection-Enhancing Gearbox Rank 3
				- Polarized Azerite Slivershards Rank 3
				- Quickening Azerite Geode Rank 3
				- Regenerating Barrier of the Depths Rank 3
				- Resonating Elemental Heart Rank 3
				- Rib-Bone Choker of Dominance Rank 3
				- Sphere of Leeched Mobility Rank 3
				- Stabilizing Lens of the Focusing Iris Rank 3
				- Stalwart Battlefield Memento Rank 3
				- Tempered Azerite Formation Rank 3
				- Tempered Scale of the Scarlet Broodmother Rank 3
				- Token of Death's Glee Rank 3
				- Tome of the Quickening Tides Rank 3
				- Vessel of Horrific Visions - 1750 Echoes of Ny'alotha
				- Volatile Void Droplet Rank 3 - 2500 Echoes of Ny'alotha
				- Ward of Mutual Aid Rank 3

			- wrathion

				- Wicked Swarmer - 100000 Corrupted Mementos
				- Gouged Eye of N'Zoth - 25000 Corrupted Mementos
				- Black Dragonscale Backpack - 5000 Corrupted Mementos
				- Vessel of Horrific Visions - 10000 Coalescing Visions

# CHANGES from original 8.13.00/r4839-alpha to r4839-u1

Atlasloot

	Button

		Extra_Price_type.lua

			- currencies added

				- Pristine Cloud Serpent Scale
				- Royal Jelly
				- Rich Jelly
				- Thin Jelly
				- Galvanic Oscillator
				- Chain Ignitercoil
				- S.P.A.R.E. Crate

			- currencies added

				- Argent Commendation
				- Echoes of Ny'alotha
				- Coalescing Visions
				- Corrupted Mementos
				- Prismatic Manapearl
				- War Resources

		Faction_type.lua

			- icons changed

				- 7th Legion
				- The Honorbound
				- Rustbolt Resistance

			- icons added

				- Honeyback Hive

			- factions added

				- Honeyback Hive

	ItemDB

		ItemDB.lua

			- fixed GetMapNameByID because this command was removed

	Locales

		- added locale strings for special events and death's rising event to constants.<lang>.lua
		- added translations for the death's rising event in most languages except for cn, tw and kr

	Constants.lua

		- added color for special events

AtlasLoot_BattleforAzeroth

	data.lua

		- added world boss loot for

			- Grand Empress Shek'zara
			- Vuk'laz the Earthbreaker

		- sorted world bosses list by EncounterJournalID

Atlasloot_Factions

	data.lua

		- vendor list changed

			- AH Tortollan Seekers

				- added items

					- Scroll of Combustible Critters
					- Cou'pa
					- Recipe: Sanguinated Feast Rank 2
					- Recipe: Boralus Blood Sausage Rank 2
					- Recipe: Seasoned Steak and Potatoes Rank 3
					- Recipe: Wild Berry Bread Rank 3

			- AH Rustbolt Resistance

				- fixed double entry of f2391rep7 (f2391rep8 was missed)

				- removed items

					- Blueprint: Experimental Adventurer Augment
					- Blueprint: Holographic Digitalization Relay

				- added items

					- Null Force Containment Unit
					- Engine of Mecha-Perfection
					- Titan Purification Protocols
					- Reactive Existence Battery
					- Null Force Cooling Unit
					- Targeted Purification Protocols
					- Enhanced Existence Capacitor
					- Null Force Nullifier
					- Enhanced Purification Protocols
					- Calibrated Existence Gauge

				- misc

					- moved Recipe: Contract: Rustbolt Resistance from honored to friendly
					- moved Neural Autonomy from honored to friendly

			- AH Order of the Cloud Serpent

				- items added

					- How to School Your Serpent

		- factions added

			- AH Rajani
			- AH Uldum Accord
			- A Waveblade Ankoan
			- A Honeyback Hive
			- H The Unshackled

Atlasloot_WorldEvents

	data.lua

		- added "Special Events" content type

		- new special event "Death's Rising"

			- added loot for alle bosssed
			- added ilevel 100 items sold by vendors