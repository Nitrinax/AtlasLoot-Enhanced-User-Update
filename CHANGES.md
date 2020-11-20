# CHANGES from r4839-u6 to r4839-u7

AtlasLoot_Classic

	data.lua

		- Darkmaul Citadel in Exil's Reach added as the first dungeon

AtlasLoot_Sdhadowlands

	data.lua

		- data for Darkmaul Citadel moved to AtlasLoot_Classic

# CHANGES from r4839-u5 to r4839-u6

Atlasloot

	Core

		ItemStrings.lua

			- function for SLMaxItemLvl added
			- constant for LEGION_MAX_UPGRADELVL, BFA_MAX_UPGRADELVL changed
			- constant for SL_MAX_UPGRADELVL added

AtlasLoot_Sdhadowlands

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

		- added world bosses loot for

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