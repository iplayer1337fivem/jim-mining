# Jim-Mining [QBOX Edit]
Re-introducing one of the most popular mining scripts for FiveM to QBOX servers. Featuring a redesigned mining job, smeltry, and gem cracking.

**This script is DIFFERENT from the original jim-mining script. Do NOT expect all of the same features as the original jim-mining. This is redesigned SPECIFICALLY for QBOX servers.**

# Notable Changes
- **Removed Gold Panning**
I don't like the idea of players being able to specifically obtain silver and gold, therefore this has been removed

- **Removed Stone Washing**
I dislike the idea of players being able to turn stones into gems just because they *want* to, therefore this has been removed

- **Removed Stone Cracking**
Because of the changes to the actual mining job, Stone Cracking is no longer needed, and therefore has also been removed

- ** Removed Ore Selling and Jewel Buyer**
In my community we use the [Lation PawnShop](https://github.com/IamLation/lation_pawnshop) for our ore selling and gem selling, therefore this has been removed.

- **Changes to Mining Job**
The script now operates sort of like Rust, where players can identify the ore before they mine it. This allows players to really only mine what they *need*, providing a different dynamic to the traditional mining script that Jimathy created.

# Inventory Items
```lua
	-- jim-mining stuff
      -- Jim Mining
    ["silverore"] = {
        label = "Silver Ore",
        weight = 1000,
        stack = true,
        close = true,
        description = "Silver Ore",
        client = {
            image = "silverore.png",
        }
    },
    ["copperore"] = {
        label = "Copper Ore",
        weight = 1000,
        stack = true,
        close = true,
        description = "Copper, a base ore.",
        client = {
            image = "copperore.png",
        }
    },
    ["goldore"] = {
        label = "Gold Ore",
        weight = 1000,
        stack = true,
        close = true,
        description = "Gold Ore",
        client = {
            image = "goldore.png",
        }
    },
    ["aluminumore"] = {
        label = "Aluminium Ore",
        weight = 100,
        stack = true,
        close = false,
        description = "Aluminum Ore",
        client = {
            image = "aluminumore.png",
        }
    },
    ["coal"] = {
        label = "Coal",
        weight = 1000,
        stack = true,
        close = true,
        description = "Coal",
        client = {
            image = "coal.png",
        }
    },
    ["ironore"] = {
        label = "Iron Ore",
        weight = 1000,
        stack = true,
        close = true,
        description = "Iron, a base ore.",
        client = {
            image = "ironore.png",
        }
    },
    ["uncut_emerald"] = {
        label = "Uncut Emerald",
        weight = 100,
        stack = true,
        close = true,
        description = "A rough Emerald",
        client = {
            image = "uncut_emerald.png",
        }
    },
    ["uncut_ruby"] = {
        label = "Uncut Ruby",
        weight = 100,
        stack = true,
        close = true,
        description = "A rough Ruby",
        client = {
            image = "uncut_ruby.png",
        }
    },
    ["uncut_diamond"] = {
        label = "Uncut Diamond",
        weight = 100,
        stack = true,
        close = true,
        description = "A rough Diamond",
        client = {
            image = "uncut_diamond.png",
        }
    },
    ["uncut_sapphire"] = {
        label = "Uncut Sapphire",
        weight = 100,
        stack = true,
        close = true,
        description = "A rough Sapphire",
        client = {
            image = "uncut_sapphire.png",
        }
    },
    ["goldingot"] = {
        label = "Gold Ingot",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "goldingot.png",
        }
    },
    ["silveringot"] = {
        label = "Silver Ingot",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silveringot.png",
        }
    },
    ["copper"] = {
        label = "Copper",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "copper.png",
        }
    },
    ["iron"] = {
        label = "Iron",
        weight = 100,
        stack = true,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "iron.png",
        }
    },
    ["steel"] = {
        label = "Steel",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "steel.png",
        }
    },
    ["aluminum"] = {
        label = "Aluminium",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "aluminum.png",
        }
    },
    ["glass"] = {
        label = "Glass",
        weight = 100,
        stack = true,
        close = false,
        description = "It is very fragile, watch out",
        client = {
            image = "glass.png",
        }
    },
    ["bottle"] = {
        label = "Empty Bottle",
        weight = 10,
        stack = true,
        close = true,
        description = "A glass bottle",
        client = {
            image = "bottle.png",
        }
    },
    ["can"] = {
        label = "Empty Can",
        weight = 10,
        stack = true,
        close = true,
        description = "An empty can, good for recycling",
        client = {
            image = "can.png",
        }
    },
    ["emerald"] = {
        label = "Emerald",
        weight = 100,
        stack = true,
        close = true,
        description = "An Emerald that shimmers",
        client = {
            image = "emerald.png",
        }
    },
    ["ruby"] = {
        label = "Ruby",
        weight = 100,
        stack = true,
        close = true,
        description = "A Ruby that shimmers",
        client = {
            image = "ruby.png",
        }
    },
    ["diamond"] = {
        label = "Diamond",
        weight = 100,
        stack = true,
        close = true,
        description = "A Diamond that shimmers",
        client = {
            image = "diamond.png",
        }
    },
    ["sapphire"] = {
        label = "Sapphire",
        weight = 100,
        stack = true,
        close = true,
        description = "A Sapphire that shimmers",
        client = {
            image = "sapphire.png",
        }
    },
    ["gold_ring"] = {
        label = "Gold Ring",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "gold_ring.png",
        }
    },
    ["diamond_ring"] = {
        label = "Diamond Ring",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_ring.png",
        }
    },
    ["ruby_ring"] = {
        label = "Ruby Ring",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_ring.png",
        }
    },
    ["sapphire_ring"] = {
        label = "Sapphire Ring",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_ring.png",
        }
    },
    ["emerald_ring"] = {
        label = "Emerald Ring",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_ring.png",
        }
    },
    ["silver_ring"] = {
        label = "Silver Ring",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silver_ring.png",
        }
    },
    ["diamond_ring_silver"] = {
        label = "Diamond Ring Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_ring_silver.png",
        }
    },
    ["ruby_ring_silver"] = {
        label = "Ruby Ring Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_ring_silver.png",
        }
    },
    ["sapphire_ring_silver"] = {
        label = "Sapphire Ring Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_ring_silver.png",
        }
    },
    ["emerald_ring_silver"] = {
        label = "Emerald Ring Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_ring_silver.png",
        }
    },
    ["goldchain"] = {
        label = "Golden Chain",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "goldchain.png",
        }
    },
    ["pickaxe"] = {
        label = "Pickaxe",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "pickaxe.png",
        }
    },
    ["miningdrill"] = {
        label = "Mining Drill",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "miningdrill.png",
        }
    },
    ["mininglaser"] = {
        label = "Mining Laser",
        weight = 900,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "mininglaser.png",
        }
    },
    ["drillbit"] = {
        label = "Drill Bit",
        weight = 10,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "drillbit.png",
        }
    },
    ["diamond_necklace"] = {
        label = "Diamond Necklace",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_necklace.png",
        }
    },
    ["ruby_necklace"] = {
        label = "Ruby Necklace",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_necklace.png",
        }
    },
    ["sapphire_necklace"] = {
        label = "Sapphire Necklace",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_necklace.png",
        }
    },
    ["emerald_necklace"] = {
        label = "Emerald Necklace",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_necklace.png",
        }
    },
    ["silverchain"] = {
        label = "Silver Chain",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silverchain.png",
        }
    },
    ["diamond_necklace_silver"] = {
        label = "Diamond Necklace Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_necklace_silver.png",
        }
    },
    ["ruby_necklace_silver"] = {
        label = "Ruby Necklace Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_necklace_silver.png",
        }
    },
    ["sapphire_necklace_silver"] = {
        label = "Sapphire Necklace Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_necklace_silver.png",
        }
    },
    ["emerald_necklace_silver"] = {
        label = "Emerald Necklace Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_necklace_silver.png",
        }
    },
    ["goldearring"] = {
        label = "Golden Earrings",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "gold_earring.png",
        }
    },
    ["diamond_earring"] = {
        label = "Diamond Earrings",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_earring.png",
        }
    },
    ["ruby_earring"] = {
        label = "Ruby Earrings",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_earring.png",
        }
    },
    ["sapphire_earring"] = {
        label = "Sapphire Earrings",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_earring.png",
        }
    },
    ["emerald_earring"] = {
        label = "Emerald Earrings",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_earring.png",
        }
    },
    ["silverearring"] = {
        label = "Silver Earrings",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silver_earring.png",
        }
    },
    ["diamond_earring_silver"] = {
        label = "Diamond Earrings Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_earring_silver.png",
        }
    },
    ["ruby_earring_silver"] = {
        label = "Ruby Earrings Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_earring_silver.png",
        }
    },
    ["sapphire_earring_silver"] = {
        label = "Sapphire Earrings Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_earring_silver.png",
        }
    },
    ["emerald_earring_silver"] = {
        label = "Emerald Earrings Silver",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_earring_silver.png",
        }
    },
```
