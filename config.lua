Loc = {}

Config = {
	Debug = false, -- enable debug mode
	img = "ox_inventory/web/images/", --Set this to the image directory of your inventory script or "nil" if using newer qb-menu
	Lan = "en", -- Pick your language here
	Notify = "ox",			--"qb" or "ox"

	DrillSound = true,		-- disable drill sounds
	MultiCraft = true,		-- Enable multicraft
	MultiCraftAmounts = { [1], [5], [10] },

	Timings = { -- Time it takes to do things
		["Cracking"] = math.random(5000, 10000),
		["Pickaxe"] = math.random(12000, 15000),
		["Mining"] = math.random(9000, 12000),
		["Laser"] = math.random(6000, 9000),
		["OreRespawn"] = math.random(55000, 75000),
		["Crafting"] = 5000,
	},

	PropTable = {
		{ full = "cs_x_rubweec", 		item = 'silverore', type = "Silver Ore", weight = 15 },
		{ full = "cs_x_rubweec", 		item = 'copperore', type = "Copper Ore", weight = 25 },
		{ full = "cs_x_rubweec", 		item = 'goldore', type = "Gold Ore", weight = 10 },
		{ full = "cs_x_rubweec", 		item = 'aluminumore', type = "Aluminum Ore", weight = 25 },
		{ full = "cs_x_rubweec", 		item = 'coal', type = "Coal", weight = 30 },
		{ full = "cs_x_rubweec", 		item = 'ironore', type = "Iron Ore", weight = 30 },
		{ full = "cs_x_rubweec", 		item = 'uncut_diamond', type = "Uncut Diamond", weight = 5 },
		{ full = "cs_x_rubweec", 		item = 'uncut_ruby', type = "Uncut Diamond", weight = 5 },
		{ full = "cs_x_rubweec", 		item = 'uncut_sapphire', type = "Uncut Diamond", weight = 5 },
		{ full = "cs_x_rubweec", 		item = 'uncut_emerald', type = "Uncut Diamond", weight = 5 },

		--{ full = "cs_x_rubweec", 		item = 'silverore', type = "Silver Ore", weight = 20 },

		--{ full = "k4mb1_sulfur", 		item = 'sulfur', type = "Sulfur Ore", weight = 20 },
		--{ full = "k4mb1_coal", 			item = 'coal', type = "Coal Ore", weight = 20 },
		--{ full = "k4mb1_coal2", 		item = 'coal', type = "Coal Ore", weight = 20 },
		--{ full = "k4mb1_crystalblue", 	item = 'uncut_sapphire', type = "Sapphire Ore", weight = 10 },
		--{ full = "k4mb1_crystalgreen", 	item = 'uncut_emerald', type = "Emerald Ore", weight = 10 },
		--{ full = "k4mb1_crystalred", 	item = 'uncut_ruby', type = "Ruby Ore", weight = 10 },
		--{ full = "k4mb1_copperore", 	item = 'copperore', type = "Copper Ore", weight = 15 },
		--{ full = "k4mb1_copperore2", 	item = 'copperore', type = "Copper Ore", weight = 15 },
		--{ full = "k4mb1_ironore", 		item = 'ironore', type = "Iron Ore", weight = 20 },
		--{ full = "k4mb1_ironore2", 		item = 'ironore', type = "Iron Ore", weight = 20 },
		--{ full = "k4mb1_goldore", 		item = 'goldore', type = "Gold Ore", weight = 5 },
		--{ full = "k4mb1_goldore2", 		item = 'goldore', type = "Gold Ore", weight = 5 },
		--{ full = "k4mb1_leadore", 		item = 'aluminumore', type = "Aluminum Ore", weight = 15 },
		--{ full = "k4mb1_leadore2", 		item = 'aluminumore', type = "Aluminum Ore", weight = 15 },
		--{ full = "k4mb1_tinore", 		item = 'silverore', type = "Silver Ore", weight = 10 },
		--{ full = "k4mb1_tinore2", 		item = 'silverore', type = "Silver Ore", weight = 10 },
		--{ full = "k4mb1_diamond", 		item = 'uncut_diamond', type = "Diamond Ore", weight = 10 },
	}
}
Crafting = {
	SmeltMenu = {
		{ ["copper"] = { ["copperore"] = 3 }, ['amount'] = 3 },
		{ ["goldingot"] = { ["goldore"] = 4 }, ['amount'] = 4 },
		{ ["silveringot"] = { ["silverore"] = 4 }, ['amount'] = 4 },
		{ ["iron"] = { ["ironore"] = 4 }, ['amount'] = 4 },
		{ ["steel"] = { ["ironore"] = 2, ["coal"] = 1 } },
		{ ["aluminum"] = { ["aluminumore"] = 3, }, ['amount'] = 3 },
		{ ["aluminum"] = { ["can"] = 2, } },
		{ ["glass"] = { ["bottle"] = 2, } },
	},
	GemCut = {
		{ ["emerald"] = { ["uncut_emerald"] = 1, } },
		{ ["diamond"] = { ["uncut_diamond"] = 1}, },
		{ ["ruby"] = { ["uncut_ruby"] = 1 }, },
		{ ["sapphire"] = { ["uncut_sapphire"] = 1 }, },
	},
	RingCut = {
		{ ["gold_ring"] = { ["goldingot"] = 1 }, ['amount'] = 1 },
		{ ["silver_ring"] = { ["silveringot"] = 1 }, ['amount'] = 1 },
		{ ["diamond_ring"] = { ["gold_ring"] = 1, ["diamond"] = 4 }, },
		{ ["emerald_ring"] = { ["gold_ring"] = 1, ["emerald"] = 4 }, },
		{ ["ruby_ring"] = { ["gold_ring"] = 1, ["ruby"] = 4 }, },
		{ ["sapphire_ring"] = { ["gold_ring"] = 1, ["sapphire"] = 4 }, },

		{ ["diamond_ring_silver"] = { ["silver_ring"] = 1, ["diamond"] = 4 }, },
		{ ["emerald_ring_silver"] = { ["silver_ring"] = 1, ["emerald"] = 4 }, },
		{ ["ruby_ring_silver"] = { ["silver_ring"] = 1, ["ruby"] = 4 }, },
		{ ["sapphire_ring_silver"] = { ["silver_ring"] = 1, ["sapphire"] = 4 }, },
	},
	NeckCut = {
		{ ["goldchain"] = { ["goldingot"] = 2 }, ['amount'] = 1  },
		{ ["silverchain"] = { ["silveringot"] = 2 }, ['amount'] = 1  },
		{ ["diamond_necklace"] = { ["goldchain"] = 1, ["diamond"] = 6 }, },
		{ ["ruby_necklace"] = { ["goldchain"] = 1, ["ruby"] = 6 }, },
		{ ["sapphire_necklace"] = { ["goldchain"] = 1, ["sapphire"] = 6 }, },
		{ ["emerald_necklace"] = { ["goldchain"] = 1, ["emerald"] = 6 }, },

		{ ["diamond_necklace_silver"] = { ["silverchain"] = 1, ["diamond"] = 6 }, },
		{ ["ruby_necklace_silver"] = { ["silverchain"] = 1, ["ruby"] = 6 }, },
		{ ["sapphire_necklace_silver"] = { ["silverchain"] = 1, ["sapphire"] = 6 }, },
		{ ["emerald_necklace_silver"] = { ["silverchain"] = 1, ["emerald"] = 6 }, },
	},
	EarCut = {
		{ ["goldearring"] = { ["goldingot"] = 1 }, ['amount'] = 1  },
		{ ["silverearring"] = { ["silveringot"] = 1 }, ['amount'] = 1  },
		{ ["diamond_earring"] = { ["goldearring"] = 1, ["diamond"] = 2 }, },
		{ ["ruby_earring"] = { ["goldearring"] = 1, ["ruby"] = 2 }, },
		{ ["sapphire_earring"] = { ["goldearring"] = 1, ["sapphire"] = 2 }, },
		{ ["emerald_earring"] = { ["goldearring"] = 1, ["emerald"] = 2 }, },

		{ ["diamond_earring_silver"] = { ["silverearring"] = 1, ["diamond"] = 2 }, },
		{ ["ruby_earring_silver"] = { ["silverearring"] = 1, ["ruby"] = 2 }, },
		{ ["sapphire_earring_silver"] = { ["silverearring"] = 1, ["sapphire"] = 2 }, },
		{ ["emerald_earring_silver"] = { ["silverearring"] = 1, ["emerald"] = 2 }, },
	},
}