-- $Id: data.lua 4836 2020-10-25 16:50:01Z arithmandar $
-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)
local select = _G.select
local string = _G.string
local format = string.format

-- WoW
local GetAchievementInfo = GetAchievementInfo
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local addonname = ...
local AtlasLoot = _G.AtlasLoot
local data = AtlasLoot.ItemDB:Add(addonname, 8)

local AL = AtlasLoot.Locales

local RF_DIFF = data:AddDifficulty(AL["Raid Finder"], "LFRWithPreset", {
	Item = {
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 17)
local NORMAL_DIFF = data:AddDifficulty(AL["Normal"], "n", {
	Item = {
		item1bonus = "Scaling",
		addDifficultyBonus = true,
	},
}, 1)
local NORMAL_RAID_DIFF = data:AddDifficulty(AL["Normal"], "NormalRaidWithPreset", {
	Item = {
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 14)
local NORMAL_DUNGEON_DIFF = data:AddDifficulty(AL["Normal"], "DungeonWithPreset", {
	Item = {
		item1bonus = "Scaling",
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 1)
local HEROIC_DIFF = data:AddDifficulty(AL["Heroic"], "h", nil, 2)
local HEROIC_DUNGEON_DIFF = data:AddDifficulty(AL["Heroic"], "HeroicDungeonWithPreset", {
	Item = {
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 2)
local MYTHICD_DIFF = data:AddDifficulty(AL["Mythic"], "h", nil, 23)
local MYTHICD_DUNGEON_DIFF = data:AddDifficulty(AL["Mythic"], "MythicDungeonWithPreset", {
	Item = {
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 23)
local MYTHICD2_DIFF = data:AddDifficulty(AL["Mythic"], "h", nil, 23)
local MYTHICD2_DUNGEON_DIFF = data:AddDifficulty(AL["Mythic"], "MythicDungeon2WithPreset", {
	Item = {
		item1bonus = "LegionMDungeon2",
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 23)
local HEROIC_PRE_DIFF = data:AddDifficulty(AL["Heroic"], "HeroicWithPreset", {
	Item = {
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 15)
local MYTHIC_DIFF = data:AddDifficulty(AL["Mythic"], "m", nil, 16)
local MYTHIC_PRE_DIFF = data:AddDifficulty(AL["Mythic"], "MyhticWithPreset", {
	Item = {
		item2bonus = "SLMaxItemLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 16)

local NORMAL_ITTYPE = data:AddItemTableType("Item", "Item")
local RAID_ITTYPE = data:AddItemTableType("Item", "Item")
local AC_ITTYPE = data:AddItemTableType("Achievement", "Item")

local DUNGEON_CONTENT = data:AddContentType(AL["Dungeons"], ATLASLOOT_DUNGEON_COLOR)
local RAID_CONTENT = data:AddContentType(AL["Raids"], ATLASLOOT_RAID_COLOR)

-- /////////////////////////////////
-- Instance
-- /////////////////////////////////
--[[
data["InstanceName"] = {
	EncounterJournalID = 111,
	MapID = 749,
	ContentType = DUNGEON_CONTENT / RAID_CONTENT,
	TableType = RAID_ITTYPE,
	items = 
	{
		{ -- bossN
			EncounterJournalID = 1111,
			[NORMAL_RAID_DIFF] = {
			},
		},
	}
}
]]

-- 1677 	De Other Side - Ardenweald
-- 1678 	De Other Side - Mechagon
-- 1679 	De Other Side - Zul'Gurub
-- 1680 	De Other Side - De Other Side
data["De Other Side"] = {
	MapID = 1680,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Hakkar the Soulflayer
			EncounterJournalID = 2408,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 179322 }, -- Windscale Moccasins
				{ 2, 179324 }, -- Soulfeather Breeches
				{ 3, 179325 }, -- Hakkari Revenant's Grips
				{ 4, 179326 }, -- Girdle of the Soulflayer
				{ 5, 179328 }, -- Bloodspiller
				{ 6, 179330 }, -- Zin'khas, Blade of the Fallen God
				{ 7, 179331 }, -- Blood-Spattered Scale
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Millificent Manastorm
			EncounterJournalID = 1688,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 179335 }, -- Manastorm's Magnificent Threads
				{ 2, 179336 }, -- Rocket Chicken Handlers
				{ 3, 179337 }, -- Techno-Coil Legguards
				{ 4, 179338 }, -- Dynamo Doomstompers
				{ 5, 179340 }, -- Supercollider
				{ 6, 179339 }, -- Whizblast Walking Stick
				{ 7, 179342 }, -- Overwhelming Power Crystal
				{ 9, 183216 }, -- Memory of a Fel Bombardment
				{ 10, 183271 }, -- Memory of the Infinite Arcane
				{ 11, 183369 }, -- Memory of Wilfred's Sigil of Superior Summoning
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Dealer Xy'exa
			-- currently no dungeon loot known
			EncounterJournalID = 2398,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 000000 }, -- XXXXXXXXXX
				{ 2, 000000 }, -- XXXXXXXXXX
				{ 3, 000000 }, -- XXXXXXXXXX
				{ 4, 000000 }, -- XXXXXXXXXX
				{ 5, 000000 }, -- XXXXXXXXXX
				{ 6, 000000 }, -- XXXXXXXXXX
				{ 7, 000000 }, -- XXXXXXXXXX
				--{ 7, 179349 }, -- Dealer Xy'exa's Cape
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Mueh'zala
			EncounterJournalID = 2410,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 179351 }, -- Mueh'zala's Hexthread Sarong
				{ 2, 179352 }, -- Primeval Soul's Ankleguards
				{ 3, 179353 }, -- Harness of Twisted Whims
				{ 4, 179354 }, -- Reality-Shatter Vambraces
				{ 5, 179355 }, -- Death God's Signet
				{ 6, 179356 }, -- Shadowgrasp Totem
				{ 8, 183350 }, -- Memory of the Great Sundering
				{ 9, 183282 }, -- Memory of the Fatal Touch
				{ 10, 183329 }, -- Memory of a Prism of Shadow and Fire
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	},
}

-- 1663 	Halls of Atonement - Halls of Atonement
-- 1664 	Halls of Atonement - The Nave of Pain
-- 1665 	Halls of Atonement - The Sanctuary of Souls
data["Halls of Atonement"] = {
	MapID = 1663,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Halkias <The Sin-Stained Goliath>
			EncounterJournalID = 2406,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178813 }, -- Sinlight Shroud
				{ 2, 178817 }, -- Hood of Refracted Shadows
				{ 3, 178830 }, -- Shardskin Sabatons
				{ 4, 178818 }, -- Halkias's Towering Pillars
				{ 5, 178827 }, -- Sin Stained Pendant
				{ 7, 183380 }, -- Memory of a Seismic Reverberation
				{ 8, 182629 }, -- Memory of the Crimson Runes
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Echelon
			EncounterJournalID = 2387,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178833 }, -- Stonefiend Shaper's Mitts
				{ 2, 178819 }, -- Skyterror's Stonehide Leggings
				{ 3, 178815 }, -- Soaring Decimator's Hauberk
				{ 4, 178812 }, -- Wing Commander's Helmet
				{ 5, 178834 }, -- Stoneguardian's Morningstar
				{ 6, 178825 }, -- Pulsating Stoneheart
				{ 8, 183349 }, -- Memory of the Deeptremor Stone
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- High Adjudicator Aleez
			EncounterJournalID = 2411,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178822 }, -- Cord of the Dark Word
				{ 2, 178832 }, -- Gloves of Haunting Fixation
				{ 3, 178821 }, -- Mantle of Ephemeral Visages
				{ 4, 178814 }, -- Breastplate of Otherworldly Influence
				{ 5, 178828 }, -- Nathrian Tabernacle
				{ 6, 178826 }, -- Sunblood Amethyst
				{ 8, 183306 }, -- Memory of the Righteous Bulwark
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Lord Chamberlain
			EncounterJournalID = 2413,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178831 }, -- Slippers of Leavened Station
				{ 2, 178823 }, -- Waistcord of Dark Devotion
				{ 3, 178816 }, -- Nathrian Usurper's Mask
				{ 4, 178820 }, -- Pauldrons of Unleashed Pride
				{ 5, 178829 }, -- Nathrian Ferula
				{ 7, 183241 }, -- Memory of the Dark Titan
				{ 8, 183275 }, -- Memory of the Firestorm
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	},
}

-- 1669 	Mists of Tirna Scithe
data["Mists of Tirna Scithe"] = {
	MapID = 1669,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Ingra Maloch
			EncounterJournalID = 2400,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178704 }, -- Deathshackle Wristwraps
				{ 2, 178696 }, -- Ingra Maloch's Mantle
				{ 3, 178698 }, -- Rainshadow Hauberk
				{ 4, 178700 }, -- Clasp of Waning Shadow
				{ 5, 178692 }, -- Soulthorn Visage
				{ 6, 178694 }, -- Wrathbark Greathelm
				{ 7, 178709 }, -- Scithewood Scepter
				{ 8, 178713 }, -- Drustlord's Greataxe
				{ 9, 178708 }, -- Unbound Changeling
				{ 11, 183253 }, -- Memory of the Soulforge Embers
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Mistcaller
			EncounterJournalID = 2402,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178705 }, -- Tricksprite Gloves
				{ 2, 178691 }, -- Hood of the Hidden Path
				{ 3, 178695 }, -- Wintersnap Shoulderguards
				{ 4, 178706 }, -- Fogweaver Gauntlets
				{ 5, 178697 }, -- Prankster's Pauldrons
				{ 6, 178710 }, -- Tanglewood Thorn
				{ 7, 178707 }, -- Trailspinner Pendant
				{ 8, 178715 }, -- Mistcaller Ocarina
				{ 10, 182305 }, -- Crown of Autumnal Flora
				{ 12, 183266 }, -- Memory of the Disciplinary Command
				{ 13, 183336 }, -- Memory of the Duskwalker's Patch
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Tred'ova
			EncounterJournalID = 2405,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178693 }, -- Cocoonsilk Cowl
				{ 2, 178702 }, -- Bands of the Undergrowth
				{ 3, 178699 }, -- Sapgorger Belt
				{ 4, 178703 }, -- Hiveswarm Bracers
				{ 5, 178701 }, -- Gormshell Greaves
				{ 6, 178711 }, -- Axe of the Deadgrove
				{ 7, 178712 }, -- Acidslough Bulwark
				{ 8, 178714 }, -- Lakali's Spire of Knowledge
				{ 10, 183229 }, -- Memory of a Timeworn Dreambinder
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	},
}

-- 1674 	Plaguefall - Plaguefall
data["Plaguefall"] = {
	MapID = 1674,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Globgrog
			EncounterJournalID = 2419,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178756 }, -- Stradama's Misplaced Slippers
				{ 2, 178760 }, -- Digested Interrogator's Gaze
				{ 3, 178762 }, -- Blightborne Chain Legguards
				{ 4, 178773 }, -- Plague Handler's Greathelm
				{ 5, 178753 }, -- Surgical Pustule Extractor
				{ 6, 178770 }, -- Slimy Consumptive Organ
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Doctor Ickus
			EncounterJournalID = 2403,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178759 }, -- Depraved Physician's Mask
				{ 2, 178763 }, -- Malodorous Gristle-Sown Spaulders
				{ 3, 178767 }, -- Tortured Assistant's Bindings
				{ 4, 178775 }, -- Fleshfused Crushers
				{ 5, 178752 }, -- Sophisticated Bonecracker
				{ 6, 178771 }, -- Phial of Putrefaction
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Domina Venomblade
			EncounterJournalID = 2423,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178930 }, -- Mitts of Flawless Duplication
				{ 2, 178934 }, -- Fastened Venombarb Binds
				{ 3, 178932 }, -- Belt of Wretched Manipulations
				{ 4, 178931 }, -- Scarred Bloodbound Girdle
				{ 5, 178928 }, -- Domina's Oozing Shiv
				{ 6, 178929 }, -- Halberd of the Aranakk
				{ 7, 178933 }, -- Arachnid Cipher Ring
				{ 9, 183345 }, -- Memory of the Rotten
				{ 10, 183260 }, -- Memory of the Serpentstalker's Trickery
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Margrave Stradama
			EncounterJournalID = 2404,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178761 }, -- Leggings of the Erudite Scholar
				{ 2, 178757 }, -- Gloves of Obscure Rituals
				{ 3, 178764 }, -- Plagueborne Shoulderguards
				{ 4, 178774 }, -- Muckwallow Stompers
				{ 5, 178755 }, -- Blighted Margrave's Cloak
				{ 6, 178754 }, -- Poxstorm, Longsword of Pestilence
				{ 7, 178769 }, -- Infinitely Divisible Ooze
				{ 9, 183212 }, -- Memory of a Darkglare Medallion
				{ 10, 182637 }, -- Memory of Death's Certainty
				{ 11, 183319 }, -- Memory of my Crystalline Reflection
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	},
}

-- 1675 	Sanguine Depths - Depths of Despair
-- 1676 	Sanguine Depths - Amphitheater of Sorrow
data["Sanguine Depths"] = {
	MapID = 1675,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Kryxis the Voracious
			EncounterJournalID = 2388,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178844 }, -- Essence Surge Binders
				{ 2, 178835 }, -- Anima-Splattered Hide
				{ 3, 178846 }, -- Shackles of Alluring Vitality
				{ 4, 178836 }, -- Sabatons of the Rushing Juggernaut
				{ 5, 178853 }, -- Voracious Gorger Spine
				{ 6, 178854 }, -- Hungering Devourer's Twinblade
				{ 7, 178848 }, -- Entwined Gorger Tendril
				{ 9, 183234 }, -- Memory of a Luffa-Infused Embrace
				{ 10, 183297 }, -- Memory of Xuen
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Executor Tarvold
			EncounterJournalID = 2415,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178859 }, -- Castigator's Mantle
				{ 2, 178837 }, -- Sinsoaked Waders
				{ 3, 178843 }, -- Executor's Prideful Girdle
				{ 4, 178845 }, -- Vambraces of the Depraved Warden
				{ 5, 178851 }, -- Cloak of Enveloping Manifestations
				{ 6, 178855 }, -- Sinsmasher
				{ 7, 178849 }, -- Overflowing Anima Cage
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Grand Proctor Beryllia
			EncounterJournalID = 2421,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178838 }, -- Beryllia's Leggings of Endless Torment
				{ 2, 178847 }, -- Radiant Light Binders
				{ 3, 178841 }, -- Iron Spiked Handgrips
				{ 4, 178842 }, -- Waistguard of Expurged Anguish
				{ 5, 178852 }, -- Vessel of Shining Radiance
				{ 6, 178850 }, -- Lingering Sunmote
				{ 8, 183323 }, -- Memory of Flash Concentration
				{ 9, 183303 }, -- Memory of Maraad's Dying Breath
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
				{ 11, 180591 }, -- Vial of Roiling Emotions
			},
		},
		{ -- General Kaal
			-- currently no dungeon loot known
			EncounterJournalID = 2407,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 000000 }, -- XXXXXXXXXX
				{ 2, 000000 }, -- XXXXXXXXXX
				{ 3, 000000 }, -- XXXXXXXXXX
				{ 4, 000000 }, -- XXXXXXXXXX
				{ 5, 000000 }, -- XXXXXXXXXX
				{ 6, 000000 }, -- XXXXXXXXXX
				{ 7, 000000 }, -- XXXXXXXXXX
				{ 9, 000000 }, -- XXXXXXXXXX
				{ 10, 000000 }, -- XXXXXXXXXX
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	},
}

-- 1692 	Spires Of Ascension - Honor's Ascent
-- 1693 	Spires Of Ascension - Gardens of Repose
-- 1694 	Spires Of Ascension - Font of Fealty
-- 1695 	Spires Of Ascension - Seat of the Archon
data["Spires Of Ascension"] = {
	MapID = 1692,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Azules
			EncounterJournalID = 2399,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 180109 }, -- Kin-Tara's Baleful Cord
				{ 2, 180103 }, -- Winged Hunters' Gloves
				{ 3, 180100 }, -- Forsworn Stalker's Hauberk
				{ 4, 180101 }, -- Warboots of Ruthless Conviction
				{ 5, 180097 }, -- Quarterstaff of Discordant Ethic
				{ 6, 180115 }, -- Azure-Venom Choker
				{ 8, 183231 }, -- Memory of a Cat-eye Curio
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Ventunax
			EncounterJournalID = 2416,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 180102 }, -- Dark Stride Footwraps
				{ 2, 180111 }, -- Shadowhirl Waistwrap
				{ 3, 180110 }, -- Dark Praetorian's Clasp
				{ 4, 180104 }, -- Distorted Construct's Gauntlets
				{ 5, 180095 }, -- Penitent Edge
				{ 6, 180116 }, -- Overcharged Anima Battery
				{ 8, 183338 }, -- Memory of Celerity
				{ 9, 183365 }, -- Memory of the Consuming Wrath
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Oryphrion <The Dark Colossus>
			EncounterJournalID = 2414,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 180107 }, -- Purge Protocol Legwraps
				{ 2, 180106 }, -- Vicious Surge Faceguard
				{ 3, 180105 }, -- Absonant Construct's Handguards
				{ 4, 180113 }, -- Thunderous Echo Vambraces
				{ 5, 180112 }, -- The Philosopher
				{ 6, 180118 }, -- Anima Field Emitter
				{ 7, 180117 }, -- Empyreal Ordnance
				{ 9, 183313 }, -- Memory of the Lightbringer's Tempest
				{ 10, 183392 }, -- Memory of the Thunderlord
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Devos <Paragon of Doubt>
			EncounterJournalID = 2412,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 180098 }, -- Sinister Requiem Vestments
				{ 2, 180108 }, -- Abyssal Disharmony Breeches
				{ 3, 180114 }, -- Fallen Paragon's Armguards
				{ 4, 180099 }, -- Breastplate of Brutal Dissonance
				{ 5, 180123 }, -- Drape of Twisted Loyalties
				{ 6, 180096 }, -- Devos's Cacophonous Poleaxe
				{ 7, 180119 }, -- Boon of the Archon
				{ 9, 183290 }, -- Memory of Ancient Teachings
				{ 10, 183354 }, -- Memory of the Doom Winds
				{ 11, 183257 }, -- Memory of the Rylakstalker's Fangs
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	},
}

-- 1666 	The Necrotic Wake - The Necrotic Wake
-- 1667 	The Necrotic Wake - Stitchwerks
-- 1668 	The Necrotic Wake - Zolramus
data["The Necrotic Wake"] = {
	MapID = 1666,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Blightbone
			EncounterJournalID = 2395,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178732 }, -- Abominable Visage
				{ 2, 178731 }, -- Viscera-Stitched Footpads
				{ 3, 178733 }, -- Blightbone Spaulders
				{ 4, 178734 }, -- Fused Bone Greatbelt
				{ 5, 178730 }, -- Engorged Worm Smasher
				{ 6, 178735 }, -- Blight Belcher
				{ 7, 178736 }, -- Stitchfleshs Misplaced Signet
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Amarth <The Harvester>
			-- currently no dungeon loot known
			EncounterJournalID = 2391,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 000000 }, -- XXXXXXXXXX
				{ 2, 000000 }, -- XXXXXXXXXX
				{ 3, 000000 }, -- XXXXXXXXXX
				{ 4, 000000 }, -- XXXXXXXXXX
				{ 5, 000000 }, -- XXXXXXXXXX
				{ 6, 000000 }, -- XXXXXXXXXX
				{ 7, 000000 }, -- XXXXXXXXXX
				--{ 7, 178737 }, -- Amarth's Spellblade
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Surgeon Stitchflesh
			EncounterJournalID = 2392,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178748 }, -- Gory Surgeon's Gloves
				{ 2, 178744 }, -- Freshly Embalmed Jerkin
				{ 3, 178745 }, -- Striders of Restless Malice
				{ 4, 178749 }, -- Vile Butcher's Pauldrons
				{ 5, 178743 }, -- Stitchflesh's Scalpel
				{ 6, 178750 }, -- Encrusted Canopic Lid
				{ 7, 178772 }, -- Satchel of Misbegotten Minions
				{ 8, 178751 }, -- Spare Meat Hook
				{ 10, 183373 }, -- Memory of an Implosive Potential
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Nalthor the Rimebinder
			EncounterJournalID = 2396,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178782 }, -- Necropolis Lord's Shackles
				{ 2, 178779 }, -- Undying Chill Shoulderpads
				{ 3, 178778 }, -- Lichbone Legguards
				{ 4, 178777 }, -- Darkfrost Helmet
				{ 5, 178780 }, -- Rimebinder's Runeblade
				{ 6, 178781 }, -- Ritual Commander's Ring
				{ 7, 178783 }, -- Siphoning Phylactery Shard
				{ 9, 182633 }, -- Memory of the Biting Cold
				{ 10, 183278 }, -- Memory of the Cold Front
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
				{ 12, 181819 }, -- Marrowfang's Reins
			},
		},
	},
}

-- 1683 	Theater of Pain - Theater of Pain
-- 1684 	Theater of Pain - Chamber of Conquest
-- 1685 	Theater of Pain - Altars of Agony
-- 1686 	Theater of Pain - Upper Barrow of Carnage
-- 1687 	Theater of Pain - Lower Barrow of Carnage
data["Theater of Pain"] = {
	MapID = 1683,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- An Affront of Challengers
			EncounterJournalID = 2397,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178803 }, -- Plague-Licked Amice
				{ 2, 178795 }, -- Vest of Concealed Secrets
				{ 3, 178799 }, -- Amphitheater Stalker's Hood
				{ 4, 178800 }, -- Galvanized Oxxein Legguards
				{ 5, 178866 }, -- Dessia's Decimating Decapitator
				{ 6, 178871 }, -- Bloodoath Signet
				{ 7, 178810 }, -- Vial of Spectral Essence
				{ 9, 183332 }, -- Memory of the Master Assassin's Mark
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Gorechop
			EncounterJournalID = 2401,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178806 }, -- Contaminated Gauze Wristwraps
				{ 2, 178798 }, -- Grips of Overwhelming Beatings
				{ 3, 178793 }, -- Abdominal Securing Chestguard
				{ 4, 178869 }, -- Fleshfused Circle
				{ 5, 178808 }, -- Viscera of Coalesced Hatred
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Xav the Unfallen
			EncounterJournalID = 2390,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178801 }, -- Fearless Challenger's Leggings
				{ 2, 178794 }, -- Triumphant Combatant's Chainmail
				{ 3, 178807 }, -- Pit Fighter's Wristguards
				{ 4, 178789 }, -- Fleshcrafter's Knife
				{ 5, 178864 }, -- Gorebound Predator's Gavel
				{ 6, 178863 }, -- Gorestained Cleaver
				{ 7, 178865 }, -- Xav's Pike of Authority
				{ 9, 183220 }, -- Memory of Razelikh's Defilement
				{ 10, 183300 }, -- Memory of the Magistrate's Judgment
				{ 11, 183385 }, -- Memory of the Unhinged
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Kul'tharok
			EncounterJournalID = 2389,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 178792 }, -- Soulsewn Vestments
				{ 2, 178805 }, -- Girdle of Shattered Dreams
				{ 3, 178796 }, -- Boots of Shuddering Matter
				{ 4, 178870 }, -- Ritual Bone Band
				{ 5, 178809 }, -- Soulletting Ruby
				{ 7, 182617 }, -- Memory of Death's Embrace
				{ 8, 183375 }, -- Memory of the Diabolic Raiment
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Mordretha, the Endless Empress
			-- currently no dungeon loot known
			EncounterJournalID = 2417,
			[NORMAL_DUNGEON_DIFF] = {
				{ 1, 000000 }, -- XXXXXXXXXX
				{ 2, 000000 }, -- XXXXXXXXXX
				{ 3, 000000 }, -- XXXXXXXXXX
				{ 4, 000000 }, -- XXXXXXXXXX
				{ 5, 000000 }, -- XXXXXXXXXX
				{ 6, 000000 }, -- XXXXXXXXXX
				{ 7, 000000 }, -- XXXXXXXXXX
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	},
}

-- 1762 	Torghast, Tower of the Damned
-- data["Torghast"] = {
-- 	MapID = 1762,
-- 	ContentType = DUNGEON_CONTENT,
-- 	items = 
-- 	{
-- 		{ -- BOSSNAME
-- 			EncounterJournalID = 0000,
-- 			[NORMAL_DUNGEON_DIFF] = {
-- 				{ 1, 000000 }, -- XXXXXXXXXX
-- 				{ 2, 000000 }, -- XXXXXXXXXX
-- 				{ 3, 000000 }, -- XXXXXXXXXX
-- 				{ 4, 000000 }, -- XXXXXXXXXX
-- 				{ 5, 000000 }, -- XXXXXXXXXX
-- 				{ 6, 000000 }, -- XXXXXXXXXX
-- 				{ 7, 000000 }, -- XXXXXXXXXX
-- 			},
-- 			[HEROIC_DUNGEON_DIFF] = {
-- 				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
-- 			},
-- 			[MYTHICD_DUNGEON_DIFF] = {
-- 				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
-- 			},
-- 		},
-- 	},
-- }

-- /////////////////////////////////
-- Raid
-- /////////////////////////////////

-- 1735 	Castle Nathria - The Grand Walk
-- 1744 	Castle Nathria - The Purloined Stores
-- 1745 	Castle Nathria - Halls of the Faithful
-- 1746 	Castle Nathria - Pride's Prison
-- 1747 	Castle Nathria - Nightcloak Sanctum
-- 1748 	Castle Nathria - The Observatorium
-- 1750 	Castle Nathria - Feast of Arrogance
-- 1755 	Castle Nathria
data["Castle Nathria"] = {
	MapID = 1755,
	ContentType = RAID_CONTENT,
	TableType = RAID_ITTYPE,
	items = 
	{
		-- ## Blood From Stone
		{ -- Shriekwing
			EncounterJournalID = 2393,
			[NORMAL_RAID_DIFF] = {
				{ 1, 182979 }, -- Slippers of the Forgotten Heretic
				{ 2, 182993 }, -- Chiropteran Leggings
				{ 3, 182976 }, -- Double-Chained Utility Belt
				{ 4, 183027 }, -- Errant Crusader's Greaves
				{ 5, 183034 }, -- Cowled Batwing Cloak
				{ 6, 184016 }, -- Skulker's Wing
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Sludgefist
			EncounterJournalID = 2394,
			[NORMAL_RAID_DIFF] = {
				{ 1, 183022 }, -- Impossibly Oversized Mitts
				{ 2, 182981 }, -- Leggings of Lethal Reverberations
				{ 3, 183005 }, -- Heedless Pugilist's Harness
				{ 4, 183016 }, -- Load-Bearing Belt
				{ 5, 183006 }, -- Stoneclas Stompers
				{ 6, 182999 }, -- Rampaging Giant's Chestplate
				{ 7, 182984 }, -- Colossal Plate Gauntlets
				{ 8, 184026 }, -- Hateful Chain
				{ 16, 182635 }, -- Memory of Koltira
				{ 17, 183233 }, -- Memory of the Frenzyband
				{ 18, 183264 }, -- Memory of the Rylakstalker's Strikes
				{ 19, 183272 }, -- Memory of a Siphoning Storm
				{ 20, 183293 }, -- Memory of the Morning's Tear
				{ 21, 183309 }, -- Memory of the Ardent Protector
				{ 22, 183318 }, -- Memory of a Clear Mind
				{ 23, 183340 }, -- Memory of Greenskin
				{ 24, 183356 }, -- Memory of the Primal Lava Actuators
				{ 25, 183374 }, -- Memory of Azj'Aqir's Cinders
				{ 26, 183389 }, -- Memory of the Berserker's Will
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Stone Legion Generals
			EncounterJournalID = 2425,
			[NORMAL_RAID_DIFF] = {
				{ 1, 182998 }, -- Robes of the Cursed Commando
				{ 2, 183029 }, -- Wicked Flanker's Gorget
				{ 3, 182991 }, -- Oathsworn Soldier's Gauntlets
				{ 4, 183002 }, -- Ceremonial Parade Legguards
				{ 5, 183032 }, -- Crest of the Legionnaire General
				{ 6, 184027 }, -- Stone Legion Heraldry
				{ 8, 183888 }, -- Apogee Anima Bead
				{ 9, 183894 }, -- Thaumaturgic Anima Bead
				{ 16, 182627 }, -- Memory of Superstrain
				{ 17, 183213 }, -- Memory of the Anguish of the Collective
				{ 18, 183223 }, -- Memory of the Circle of Life and Death
				{ 19, 183250 }, -- Memory of the Wild Call
				{ 20, 183267 }, -- Memory of an Expanded Potential
				{ 21, 183283 }, -- Memory of the Invoker
				{ 22, 183299 }, -- Memory of the Sun's Cycles
				{ 23, 183316 }, -- Memory of the Twins of the Sun Priestess
				{ 24, 183330 }, -- Memory of Bloodfang's Essence
				{ 25, 183346 }, -- Memory of an Ancestral Reminder
				{ 26, 183367 }, -- Memory of Demonic Synergy
				{ 27, 183381 }, -- Memory of the Tormented Kings
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		-- ### The Leeching Vaults
		{ -- Huntsman Altimor
			EncounterJournalID = 2429,
			[NORMAL_RAID_DIFF] = {
				{ 1, 182996 }, -- Grim Pursuant's Maille
				{ 2, 182995 }, -- Spell-Woven Tourniquet
				{ 3, 182988 }, -- Master Huntsman's Bandolier
				{ 4, 183018 }, -- Hellhound Cuffs
				{ 5, 183040 }, -- Charm of Eternal Winter
				{ 6, 184017 }, -- Bargast's Leash
				{ 8, 183892 }, -- Mystic Anima Spherule
				{ 16, 183235 }, -- Memory of the Natural Order
				{ 17, 183258 }, -- Memory of Eagletalon's True Focus
				{ 18, 183361 }, -- Memory of the Spiritwalker's Tidal Totem
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Hungering Destroyer
			EncounterJournalID = 2428,
			[NORMAL_RAID_DIFF] = {
				{ 1, 183028 }, -- Cinch of Infinite Tightness
				{ 2, 183009 }, -- Miasma-Lacquered Jerkin
				{ 3, 183024 }, -- Volatile Shadestitch Legguards
				{ 4, 183001 }, -- Helm of Insatiable Appetite
				{ 5, 183000 }, -- Consumptive Chainmail Carapace
				{ 6, 182994 }, -- Epaulettes of Overwhelming Force
				{ 7, 182992 }, -- Endlessly Gluttonous Greaves
				{ 8, 184023 }, -- Gluttonous Spike
				{ 9, 184022 }, -- Consumptive Infusion
				{ 11, 183891 }, -- Venerated Anima Spherule
				{ 16, 182630 }, -- Memory of Gorefiend's Domination
				{ 17, 183391 }, -- Memory of the Wall
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Lady Inerva Darkvein
			EncounterJournalID = 2420,
			[NORMAL_RAID_DIFF] = {
				{ 1, 183021 }, -- Confidant's Favored Cap
				{ 2, 183026 }, -- Gloves of Phantom Shadows
				{ 3, 182985 }, -- Memento-Laden Cuisses
				{ 4, 183015 }, -- Binding of Warped Desires
				{ 5, 183037 }, -- Ritualist's Treasured Ring
				{ 6, 184025 }, -- Memory of Past Sins
				{ 8, 183894 }, -- Thaumaturgic Anima Bead
				{ 16, 183218 }, -- Memory of a Fortified Fel Flame
				{ 17, 183240 }, -- Memory of the Mother Tree
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		-- ### Reliquary of Opulence
		{ -- Artificer Xy'Mox
			EncounterJournalID = 2418,
			[NORMAL_RAID_DIFF] = {
				{ 1, 183004 }, -- Shadewarped Sash
				{ 2, 183019 }, -- Precisely Calibrated Chronometer
				{ 3, 183012 }, -- Greaves of Enigmatic Energies
				{ 4, 182987 }, -- Breastplate of Cautious Calculation
				{ 5, 183038 }, -- Hyperlight Band
				{ 6, 184021 }, -- Glyph of Assimilation
				{ 8, 183960 }, -- Portable Pocket Dimension
				{ 10, 183888 }, -- Apogee Anima Bead
				{ 16, 183296 }, -- Memory of the Last Emperor
				{ 17, 183370 }, -- Memory of the Core of the Balespider
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Sun King's Salvation
			EncounterJournalID = 2422,
			[NORMAL_RAID_DIFF] = {
				{ 1, 182986 }, -- High Torturer's Smock
				{ 2, 183007 }, -- Bleakwing Assassin's Grips
				{ 3, 182977 }, -- Bangles of Errant Pride
				{ 4, 183025 }, -- Stoic Guardsman's Belt
				{ 5, 183033 }, -- Mantle of Manifest Sins
				{ 6, 184018 }, -- Splintered Heart of Al'ar
				{ 7, 184020 }, -- Tuft of Smoldering Plumage
				{ 8, 184019 }, -- Soul Igniter
				{ 10, 183893 }, -- Abominable Anima Spherule
				{ 16, 183277 }, -- Memory of the Sun King
				{ 17, 183304 }, -- Memory of the Shadowbreaker
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- The Council of Blood
			EncounterJournalID = 2426,
			[NORMAL_RAID_DIFF] = {
				{ 1, 183011 }, -- Courtier's Costume Trousers
				{ 2, 183023 }, -- Sparkling Glass Slippers
				{ 3, 182989 }, -- Corset of the Deft Duelist
				{ 4, 183030 }, -- Enchanted Toe-Tappers
				{ 5, 183014 }, -- Castellan's Chainlink Grips
				{ 6, 182983 }, -- Stoneguard Attendant's Boots
				{ 7, 183039 }, -- Noble's Birthstone Pendant
				{ 8, 184024 }, -- Macabre Sheet Music
				{ 10, 183899 }, -- Zenith Anima Spherule
				{ 16, 183328 }, -- Memory of Talbadar
				{ 17, 183334 }, -- Memory of the Dashing Scoundrel
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		-- ### An Audience with Arrogance
		{ -- Sire Denathrius
			EncounterJournalID = 2424,
			[NORMAL_RAID_DIFF] = {
				{ 1, 183020 }, -- Shawl of the Penitent
				{ 2, 182980 }, -- Sadist's Sinister Mask
				{ 3, 183003 }, -- Pauldrons of Fatal Finality
				{ 4, 182997 }, -- Diadem of Imperious Desire
				{ 5, 183036 }, -- Most Regal Signet of Sire Denathrius
				{ 6, 184031 }, -- Sanguine Vintage
				{ 7, 184028 }, -- Cabalist's Hymnal
				{ 8, 184029 }, -- Manabound Mirror
				{ 9, 184030 }, -- Dreadfire Vessel
				{ 11, 183893 }, -- Abominable Anima Spherule
				{ 12, 183892 }, -- Mystic Anima Spherule
				{ 13, 183891 }, -- Venerated Anima Spherule
				{ 14, 183899 }, -- Zenith Anima Spherule
				{ 16, 182636 }, -- Memory of the Deadliest Coil
				{ 17, 183214 }, -- Memory of the Chaos Theory
				{ 18, 183227 }, -- Memory of Oneth
				{ 19, 183256 }, -- Memory of the Eredun War Order
				{ 20, 183279 }, -- Memory of the Freezing Winds
				{ 21, 183288 }, -- Memory of a Celestial Infusion
				{ 22, 183310 }, -- Memory of the Vanguard's Momentum
				{ 23, 183324 }, -- Memory of a Harmonious Apparatus
				{ 24, 183344 }, -- Memory of Finality
				{ 25, 183352 }, -- Memory of the Demise of Skybreaker
				{ 26, 183362 }, -- Memory of a Malefic Wrath
				{ 27, 183384 }, -- Memory of the Exploiter
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
	},
}