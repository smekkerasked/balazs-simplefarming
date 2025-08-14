ESX = nil

ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent("balazs-simplefarmingzone:server:additem")
AddEventHandler("balazs-simplefarmingzone:server:additem", function(source, r)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local item = r.item
  local amount = r.amount
  local xItem = xPlayer.getInventoryItem(item)
  local success = false
  local nospace = false
  if xItem ~= nil then
    if Config.ESXLegacy == true then
      if xPlayer.canCarryItem(item, amount) then
        success = true
      else
        nospace = true
      end
    else
      if (xPlayer.getInventoryItem(item).count + amount) < xItem.limit then
        success = true
      else
        nospace = true
      end
    end

    if success == true then
      Notify(_source, _U('success', amount, xItem.label), 5000, "success")
      xPlayer.addInventoryItem(item, amount)
    elseif nospace == true then
      Notify(_source, _U('nospace'), 5000, "error")
    end
  else
    Notify(_source, _U('itemdoenstexist'), 5000, "error")
  end



end)


RegisterServerEvent("balazs-simplefarmingzone:server:prop:start")
AddEventHandler("balazs-simplefarmingzone:server:prop:start", function(source, requireditem, item, amount)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(source)

  local xItem = xPlayer.getInventoryItem(item)
  local canfarm = true

  if requireditem ~= nil then
    local needitem = xPlayer.getInventoryItem(requireditem)

    if needitem == nil then
      Notify(_source, _U('itemdoenstexist'), 5000, "error")
      TriggerClientEvent('balazs-simplefarmingzone:props:cantfarm', _source)
      canfarm = false
    else
      if needitem.count == 0 then
        Notify(_source, _U('needitem', needitem.label), 5000, "error")
        TriggerClientEvent('balazs-simplefarmingzone:props:cantfarm', _source)
        canfarm = false
      end
    end
  end

  if xItem ~= nil and canfarm == true then
    local success = false
    local nospace = false
    if Config.ESXLegacy == true then
      if xPlayer.canCarryItem(item, amount) then
        success = true
      else
        nospace = true
      end
    else
      if (xPlayer.getInventoryItem(item).count + amount) < xItem.limit then
        success = true
      else
        nospace = true
      end
    end

    if success == true then
      TriggerClientEvent('balazs-simplefarmingzone:props:start', _source)
    elseif nospace == true then
      TriggerClientEvent('balazs-simplefarmingzone:props:cantfarm', _source)
      Notify(_source, _U('nospace'), 5000, "error")
    end
  elseif xItem == nil then
    TriggerClientEvent('balazs-simplefarmingzone:props:cantfarm', _source)
    Notify(_source, _U('itemdoenstexist'), 5000, "error")
  end
end)

Notify = function(source, text, length, type)
  TriggerClientEvent('balazs-simplefarming:notify', source, text, length, type)
end
