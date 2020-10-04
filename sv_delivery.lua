ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('shx_delivery:server')
AddEventHandler('shx_delivery:server', function()
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() >= Config.StarterMoney then
		xPlayer.removeMoney(Config.StarterMoney)
		
		TriggerClientEvent("shx_delivery:startDealing", source)
	else
		TriggerClientEvent('notification', xPlayer.source, "Çalıntı eşya noktalarını almak için yeterli paran yok!", 2)
	end
end)

RegisterServerEvent('shx_delivery:itemteslim')
AddEventHandler('shx_delivery:itemteslim', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local rolex = xPlayer.getInventoryItem('shx_rolex').count
	if rolex > 0 then
	
	xPlayer.removeInventoryItem("shx_rolex", Config.EsyaSayi)
	xPlayer.addMoney(110)
	else
	local psd = xPlayer.getInventoryItem('shx_psp').count
	if psd > 0 then
		
		xPlayer.removeInventoryItem("shx_psp", Config.EsyaSayi)
		xPlayer.addMoney(125)
	else
	local gameboy = xPlayer.getInventoryItem('shx_gameboy').count
	if gameboy > 0 then
	
		xPlayer.removeInventoryItem("shx_gameboy", Config.EsyaSayi)
		xPlayer.addMoney(135)
	else
	local rgozluk = xPlayer.getInventoryItem('shx_rgozluk').count
	if rgozluk > 0 then
		
		xPlayer.removeInventoryItem("shx_rgozluk", Config.EsyaSayi)
		xPlayer.addMoney(90)
	else
	local saat = xPlayer.getInventoryItem('shx_saat').count
	if saat > 0 then
		
		xPlayer.removeInventoryItem("shx_saat", Config.EsyaSayi)	
		xPlayer.addMoney(75)
	else
	local nokia = xPlayer.getInventoryItem('shx_3310').count
	if nokia > 0 then
		
		xPlayer.removeInventoryItem("shx_3310", Config.EsyaSayi)		
		xPlayer.addMoney(100)
	else
	local iphone = xPlayer.getInventoryItem('shx_iphone').count
	if iphone > 0 then
		
		xPlayer.removeInventoryItem("shx_iphone", Config.EsyaSayi)
		xPlayer.addMoney(145)
	else
	local s8 = xPlayer.getInventoryItem('shx_s8').count
	if s8 > 0 then
		
		xPlayer.removeInventoryItem("shx_s8", Config.EsyaSayi)			
		xPlayer.addMoney(95)
	else
	local kolye = xPlayer.getInventoryItem('shx_kolye').count
	if kolye > 0 then
		
		xPlayer.removeInventoryItem("shx_kolye", Config.EsyaSayi)
		xPlayer.addMoney(150)
	else
	local ogozluk = xPlayer.getInventoryItem('shx_ogozluk').count
	if ogozluk > 0 then
		
		xPlayer.removeInventoryItem("shx_ogozluk", Config.EsyaSayi)
		xPlayer.addMoney(100)
	else
	local devre = xPlayer.getInventoryItem('shx_devre').count
	if devre > 0 then
			
		xPlayer.removeInventoryItem("shx_devre", Config.EsyaSayi)
		xPlayer.addMoney(50)
	else
	local redperal = xPlayer.getInventoryItem('shx_red_pearl').count
	if redperal > 0 then
			
		xPlayer.removeInventoryItem("shx_red_pearl", Config.EsyaSayi)
		xPlayer.addMoney(90)
	else
	local whiteperal = xPlayer.getInventoryItem('shx_white_pearl').count
	if whiteperal > 0 then
				
		xPlayer.removeInventoryItem("shx_white_pearl", Config.EsyaSayi)
		xPlayer.addMoney(125)
	else
    local goldct = xPlayer.getInventoryItem('10ct_gold').count
	if goldct > 0 then
				
		xPlayer.removeInventoryItem("10ct_gold", Config.EsyaSayi)
		xPlayer.addMoney(600)
	else
	local goldctt = xPlayer.getInventoryItem('8ct_gold').count
	if goldctt > 0 then
				
		xPlayer.removeInventoryItem("8ct_gold", Config.EsyaSayi)
		xPlayer.addMoney(500)
	else
	local goldcttt = xPlayer.getInventoryItem('5ct_gold').count
	if goldcttt > 0 then
				
		xPlayer.removeInventoryItem("5ct_gold", Config.EsyaSayi)
		xPlayer.addMoney(350)
	else
	local goldctttt = xPlayer.getInventoryItem('2ct_gold').count
	if goldctttt > 0 then
				
		xPlayer.removeInventoryItem("2ct_gold", Config.EsyaSayi)
		xPlayer.addMoney(100)
	else
		TriggerClientEvent('notification', xPlayer.source, "Çalıntı elektronik eşya satmak için üzerinde herhangi bir eşya yok!", 2)
	end
  end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end)

RegisterServerEvent('shx_delivery:receivemoneyyy')
AddEventHandler('shx_delivery:receivemoneyyy', function()
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.addMoney(Config.Payment)
end)