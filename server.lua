function MiningLog(data)
	PerformHttpRequest('CHANGEME',
    function() end, 'POST', json.encode({ username = "Arcade Roleplay", embeds = data }), { ['Content-Type'] = 'application/json' })
end

function GetItemLabel(item)
	return exports.ox_inventory:Items(item).label
end

RegisterServerEvent('jim-mining:Crafting:GetItem', function(ItemMake, craftable)
	local src = source
    local Player = exports.qbx_core:GetPlayer(src)
	local fullName = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
	local cid = Player.PlayerData.citizenid
	local amount = 1
	if craftable then
		if craftable["amount"] then amount = craftable["amount"] end
		for k, v in pairs(craftable[ItemMake]) do
			print(k, v)
			TriggerEvent("jim-mining:server:toggleItem", false, tostring(k), v, src)
		end
	end
	TriggerEvent("jim-mining:server:toggleItem", true, ItemMake, amount, src)
	local data = string.format('%s (ID: %s | %s) crafted %.0fx %s at <t:%d:T>', fullName, src, cid, amount, GetItemLabel(ItemMake), os.time())
	MiningLog(data)
end)

RegisterServerEvent("jim-mining:Reward", function(data, rewardItem)
    local src = source
    local Player = exports.qbx_core:GetPlayer(src)
	local fullName = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
	local cid = Player.PlayerData.citizenid
    local amount = 1

    local function getGuaranteedReward(pool)
        local totalChance = 0
        for _, reward in ipairs(pool) do
            totalChance = totalChance + reward.chance
        end
        
        local roll = math.random(1, totalChance)
        local cumulativeChance = 0
        
        for _, reward in ipairs(pool) do
            cumulativeChance = cumulativeChance + reward.chance
            if roll <= cumulativeChance then
                return reward.item, math.random(reward.minAmount, reward.maxAmount)
            end
        end
        
        return nil, 0 -- Should not reach here if chances are correctly set
    end

    if data.mine then
        TriggerEvent("jim-mining:server:toggleItem", true, rewardItem, math.random(1, 3), src)
    end
end)

local function dupeWarn(src, item)
	local P = exports.qbx_core:GetPlayer(src)
	print("^5DupeWarn: ^1"..P.PlayerData.charinfo.firstname.." "..P.PlayerData.charinfo.lastname.."^7(^1"..tostring(src).."^7) ^2Tried to remove item ^7('^3"..item.."^7')^2 but it wasn't there^7")
	if not Config.Debug then DropPlayer(src, "^1Kicked for attempting to duplicate items") end
	print("^5DupeWarn: ^1"..P.PlayerData.charinfo.firstname.." "..P.PlayerData.charinfo.lastname.."^7(^1"..tostring(src).."^7) ^2Dropped from server for item duplicating^7")
end

RegisterNetEvent('jim-mining:server:toggleItem', function(give, item, amount, newsrc)
	print(give, item, amount, newsrc)
	print("Toggle Item")
	local src = newsrc or source
	local Player = exports.qbx_core:GetPlayer(src)
	local remamount = (amount or 1)
	if give == 0 or give == false then
		if HasItem(src, item, amount or 1) then -- check if you still have the item
			Player.Functions.RemoveItem(item, amount)
			if Config.Debug then print("^5Debug^7: ^1Removing ^2from Player^7(^2"..src.."^7) '^6"..GetItemLabel(item).."^7(^2x^6"..(amount or "1").."^7)'") end
		else dupeWarn(src, item) end -- if not boot the player
	else
		if Player.Functions.AddItem(item, amount or 1) then
			if Config.Debug then print("^5Debug^7: ^4Giving ^2Player^7(^2"..src.."^7) '^6"..GetItemLabel(item).."^7(^2x^6"..(amount or "1").."^7)'") end
		end
	end
end)

function HasItem(source, item, amount)
	local itemCount = exports.ox_inventory:Search(source, "count", item)
	if not itemCount then
		return false
	elseif itemCount >= amount then
		return true
	else
		return false
	end
end