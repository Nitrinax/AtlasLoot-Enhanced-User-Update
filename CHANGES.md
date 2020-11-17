
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