--  @events

RegisterNetEvent('gta_notify:client:SendAlert')
AddEventHandler('gta_notify:client:SendAlert', function(data)
	CustomNoti(data.type, data.text, data.length, data.style)
end)

RegisterNetEvent('gta_notify:client:NotiFija')
AddEventHandler('gta_notify:client:NotiFija', function(data)
	NotiFija(data.action, data.id, data.type, data.text, data.style)
end)

-- @funcs

function NormalNoti(type, text, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 2500,
		style = style
	})
end

function LongNoti(type, text, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 5000,
		style = style
	})
end

function CustomNoti(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = length,
		style = style
	})
end

function NotiFija(action, id, type, text, style)
	if action:upper() == 'START' then
		SendNUIMessage({
			persist = action,
			id = id,
			type = type,
			text = text,
			style = style
		})
	elseif action:upper() == 'END' then
		SendNUIMessage({
			persist = action,
			id = id
		})
	end
end

-- @test commands

RegisterCommand('notifijatest', function()
	SendNUIMessage({
		persist = 'START',
		id = 'test',
		type = 'inform',
		text = '',
		style = style
	})
end)

RegisterCommand('notifijaend', function()
	SendNUIMessage({
		persist = 'END',
		id = 'test'
	})
end)

RegisterCommand('noti', function()
	exports['gta_notify']:NormalNoti('notification', 'texto')
end)