function sendForbiddenMessage(message)
		if Config.Chat == "wx" then
			TriggerEvent('chat:addMessage', {
				template = [[
					<div style="padding: 0.3vw; height: 1.5vw; margin: 0.5vw;  background-color: #222228ec; border-radius: 10px; padding-top: 0.35vw; border: 0.11vw solid #414146; box-shadow: 0px 0px 11px rgba(158, 158, 158, 0.35)">
					</font>
					<font style="padding: 0.15vw; margin: 0.22vw; background-color: #a10000; padding-left: 1%; border-radius: 8px; border: #a10000 solid 0.11vw; font-size: 12px; box-shadow: 0px 0px 11px rgba(158, 158, 158, 0.55)">
						<font style="font-weight: 600;">System</font>
					</font>
					<font style="font-size: 14px; padding-left: 5px; color: #c7c5c5; margin: auto; font-weight:400">]]..message..[[</font>
				</div>
				]],
			})
		else 
		TriggerEvent("chatMessage", "", {0, 0, 0}, "^1" .. message)
	end
end


function _DeleteEntity(entity)
	Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end
