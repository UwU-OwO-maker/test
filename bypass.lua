if not getgenv() then return end

if not getgenv().method or getgenv().method == nil then
	getgenv().method = "fn"
end

repeat
    wait()
until game:IsLoaded()



local Players = game:GetService("Players")
local Chat = game:GetService("Chat")

local playerFrom = Players.LocalPlayer
local message = "C7RN"


local filteredString = Chat:FilterStringForBroadcast(message, playerFrom)



local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/UwU-OwO-maker/test/main/bypass.lua'))()")

function execute()

	local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua", true))()
	local requestt = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
	local httpservice = game:GetService("HttpService")

	if IS_KRNL_LOADED and "Krnl" then

		local logs = true --Enables logs or not
		local ChatMain = require(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript.ChatMain)
		local blacklistedFirstCharacter = {"a","b","c","d","e","f","g","h","i","j","k","m","n","l","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","M","N","L","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0","/","@","?",}

		local fakeMessagePosted = Instance.new("BindableEvent")
		fakeMessagePosted.Name = "MessagePosted"

		local oldMessagePosted = ChatMain.MessagePosted
		ChatMain.MessagePosted = fakeMessagePosted

		function IsBlacklisted(char)
		   if table.find(blacklistedFirstCharacter, char) ~= nil then
			   return true
		   end
		   return false
		end

		if setfflag then
			setfflag("AbuseReportScreenshotPercentage", 0)
			setfflag("AbuseReportScreenshot","False")
		end

		fakeMessagePosted.Event:Connect(function(msg)
		   if IsBlacklisted(string.sub(msg, 1, 1)) == true then
			   if logs == true then
				   printconsole("[LOGS]: Prevented "..tostring(msg).." to be in Chatted!")
			   end
		   elseif IsBlacklisted(string.sub(msg, 1, 1)) == false then
			   oldMessagePosted:fire(msg)
			   if logs == true then
				   printconsole("[LOGS]: Sent command "..tostring(msg).." to be in Chatted!")
			   end
		   end
		end)
		getgenv().ANTICHAT = true

	elseif FLUXUS_LOADED then
		local CloneFunction = clonefunction
		local CheckCaller = CloneFunction(checkcaller)
		local HookFunction = CloneFunction(hookfunction)
		local LocalPlayer = game.Players.PlayerAdded:wait()

		local PostMessage = require(LocalPlayer:WaitForChild("PlayerScripts", 1/0):WaitForChild("ChatScript", 1/0):WaitForChild("ChatMain", 1/0)).MessagePosted
		getgenv().MessageEvent = Instance.new("BindableEvent")

		local OldFunctionHook
		local PostMessageHook = function(self, msg)
		   if not CheckCaller() and self == PostMessage then
		       MessageEvent:Fire(msg)
		       return
		   end
		   return OldFunctionHook(self, msg)
		end
		OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)
		getgenv().ANTICHAT = true

	elseif syn and "Synapse X" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua",true))()
		getgenv().ANTICHAT = true
	end		

	
	if not LOADED and ANTICHAT == true then
		NotificationHolder:message {
			Title = "Secure Chat <font color='rgb(130, 220, 120)'>Enabled</font>",
			Description = "For the interest of security and anonymity, secure chat has been enabled.",
			Icon = 10952973354
		}
	else
	NotificationHolder:message {
			Title = "Secure Chat <font color='rgb(130, 220, 120)'>Unavailable</font>",
			Description = "You will need Synapse X, Fluxus or Krnl to use the secure chat.",
			Icon = 10952973354
		}
	end

	local Bypasses = {

		["ass"] = "a{{aieixzvzx:ss}}",
		["asshole"] = "a{{aieixzvzx:sshole}}",
		["deadass"] = "dead as{{aieixzvzx:s}}",
		["arse"] = "ar{{aieixzvzx:se}}", --NEW
		["arsehead"] = "ar{{aieixzvzx:se}}head", --NEW
		["arsehole"] = "ar{{aieixzvzx:se}}hole", --NEW
		["bitch"] = "bit{{aieixzvzx:ch}}",
		["bitches"] = "bit{{aieixzvzx:ches}}",  
		["cock"] = "co{{aieixzvzx:ck}}",
		["cocks"] = "co{{aieixzvzx:cks}}",  
		["cunt"] = "cu{{aieixzvzx:nt}}",
		["cunts"] = "cu{{aieixzvzx:nts}}",
		["titties"] = "ti{{aieixzvzx:tties}}",
		["dick"] = "di{{zczxczvz:ck}}",
		["dickhead"] = "di{{zczxczvz:ckhead}}",
		["dicks"] = "di{{zczxczvz:cks}}",  
		["dyke"] = "dy{{aieixzvzx:ke}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["faggots"] = "fa{{aieixzvzx:ggots}}",
		["fuck"] = "fu{{aieixzvzx:ck}}",
		["fucks"] = "fu{{aieixzvzx:cks}}",
		["fucked"] = "fu{{aieixzvzx:cked}}",
		["fucking"] = "fu{{aieixzvzx:ckign}}",
		["fuckin"] = "fu{{aieixzvzx:ckign}}",
		["gaylord"] = "gayl{{aieixzvzx:ord}}",
		["gaylords"] = "gayl{{aieixzvzx:ords}}",  
		["bastard"] = "bas{{aieixzvzx:tard}}",  --NEW
		["bastards"] = "bas{{aieixzvzx:tards}}",  --NEW
		["kike"] = "ki{{aieixzvzx:ke}}",
		["fat"] = "f{{aieixzvzx:at}}",
		["kikes"] = "ki{{aieixzvzx:kes}}",  
		["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
		["brotherfucker"] = "brotherf{{aieixzvzx:ucker}}", --NEW
		["fatherfucker"] = "fatherf{{aieixzvzx:ucker}}", --NEW
		["bugger"] = "bugg{{aieixzvzx:er}}", --NEW
		["buggers"] = "bugg{{aieixzvzx:er}}s", --NEW
		["nigga"] = "ni{{aieixzvzx:gga}}",
		["niggas"] = "ni{{aieixzvzx:ggas}}",
		["nigger"] = "ni{{aieixzvzx:gger}}",
		["niggers"] = "ni{{aieixzvzx:ggers}}",
		["piss"] = "p{{aieixzvzx:iss}}", 
		["tranny"] = "tr{{aieixzvzx:anny}}", 
		["pisses"] = "p{{aieixzvzx:isses}}",  
		["pissing"] = "p{{aieixzvzx:is}}sing", --NEW
		["pisser"] = "pi{{aieixzvzx:sser}}", --NEW
		["penis"] = "pe{{aieixzvzx:nis}}",
		["penises"] = "pe{{aieixzvzx:nises}}",  
		["pussy"] = "pu{{aieixzvzx:ssy}}",
		["shit"] = "sh{{aieixzvzx:it}}",
		["shitter"] = "sh{{aieixzvzx:itter}}",  
		["shitting"] = "sh{{aieixzvzx:itting}}",  
		["shitty"] = "shi{{aieixzvzx:tty}}",
		["horseshit"] = "horsesh{{aieixzvzx:it}}", --NEW
		["jerk"] = "je{{aieixzvzx:rk}}",
		["jerks"] = "je{{aieixzvzx:rks}}",--NEW
		["jerking"] = "jer{{aieixzvzx:king}}", --NEW
		["slut"] = "sl{{aieixzvzx:ut}}",
		["sluts"] = "sl{{aieixzvzx:uts}}",  
		["whore"] = "who{{aieixzvzx:re}}",
		["whores"] = "who{{aieixzvzx:res}}",  
		["retard"] = "ret{{aieixzvzx:ard}}",
		["retarded"] = "ret{{aieixzvzx:arded}}",
		["kill"] = "ki{{aieixzvzx:ll}}",
		["kills"] = "ki{{aieixzvzx:lls}}",  
		["killing"] = "ki{{aieixzvzx:lling}}",  
		["gay"] = "g{{aieixzvzx:ay}}",
		["inside"] = "i{{aieixzvzx:nside}}",
		["gays"] = "g{{aieixzvzx:ays}}",
		["sex"] = "se{{aieixzvzx:x}}",
		["sexy"] = "se{{aieixzvzx:xy}}",
		["sexting"] = "se{{aieixzvzx:xting}}",
		["porn"] = "po{{aieixzvzx:rn}}",
		["love"] = "l{{aieixzvzx:ove}}",
		["loves"] = "l{{aieixzvzx:oves}}",  
		["lover"] = "l{{aieixzvzx:over}}",  
		["loving"] = "l{{aieixzvzx:oving}}",  
		["date"] = "da{{aieixzvzx:te}}",  
		["dates"] = "da{{aieixzvzx:tes}}",  
		["dating"] = "da{{aieixzvzx:ting}}",  
		["dater"] = "da{{aieixzvzx:ter}}",  
		["rape"] = "ra{{aieixzvzx:pe}}",
		["raped"] = "rap{{aieixzvzx:ed}}",
		["rapes"] = "ra{{aieixzvzx:pes}}",  
		["raping"] = "rap{{aieixzvzx:ing}}",  
		["raper"] = "ra{{aieixzvzx:per}}",  
		["v3rm"] = "v3{{aieixzvzx:rm}}",
		["v3rmillion"] = "v3{{aieixzvzx:rmillion}}",  
		["hack"] = "ha{{aieixzvzx:ck}}",
		["hacking"] = "hac{{aieixzvzx:king}}",  
		["hacker"] = "hac{{aieixzvzx:ker}}",  
		["hackers"] = "hac{{aieixzvzx:kers}}",  
		["hot"] = "ho{{aieixzvzx:t}}",
		["hotter"] = "ho{{aieixzvzx:tter}}",  
		["boob"] = "bo{{aieixzvzx:ob}}",  
		["boobs"] = "boo{{aieixzvzx:bs}}",
		["tit"] = "t{{aieixzvzx:it}}", --NEW
		["tits"] = "t{{aieixzvzx:its}}", --NEW
		["thot"] = "th{{aieixzvzx:ot}}", --NEW
		["thots"] = "th{{aieixzvzx:ots}}", --NEW
		["thotting"] = "th{{aieixzvzx:otting}}", --NEW
		["thotting"] = "th{{aieixzvzx:otting}}", --NEW
		["condom"] = "con{{aieixzvzx:dom}}",
		["condoms"] = "con{{aieixzvzx:doms}}",  
		["thot"] = "th{{aieixzvzx:ot}}",
		["thots"] = "th{{aieixzvzx:ots}}",  
		["bang"] = "ban{{aieixzvzx:g}}",
		["please"] = "ple{{aieixzvzx:ase}}",
		["ligma"] = "li{{aieixzvzx:gma}}",
		["ligmaballs"] = "ligm{{aieixzvzx:aballs}}",
		["terrorist"] = "terror{{aieixzvzx:ist}}",
		["terrorists"] = "terror{{aieixzvzx:ists}}",  
		["horny"] = "horn{{aieixzvzx:y}}",
		["mf"] = "m{{aieixzvzx:f}}",
		["lmao"] = "lm{{aieixzvzx:ao}}",
		["anus"] = "an{{aieixzvzx:us}}",
		["hacks"] = "hac{{aieixzvzx:ks}}",
		["predator"] = "pred{{aieixzvzx:ator}}",
		["predators"] = "pred{{aieixzvzx:ator}}",  
		["kiss"] = "ki{{aieixzvzx:ss}}",
		["kisses"] = "ki{{aieixzvzx:sses}}",  
		["kissing"] = "ki{{aieixzvzx:ssing}}",  
		["kisser"] = "ki{{aieixzvzx:sser}}",  
		["bomb"] = "bom{{aieixzvzx:b}}",
		["bomb"] = "bom{{aieixzvzx:bs}}",  
		["nude"] = "nu{{aieixzvzx:de}}",
		["nudes"] = "nu{{aieixzvzx:des}}",
		["child"] = "chi{{aieixzvzx:ld}}",
		["my"] = "m{{aieixzvzx:y}}",
		["racism"] = "raci{{aieixzvzx:sm}}",
		["hoe"] = "h{{aieixzvzx:oe}}",
		["pedo"] = "pe{{aieixzvzx:do}}",
		["nsfw"] = "ns{{aieixzvzx:fw}}",
		["suck"] = "suc{{aieixzvzx:k}}",
		["cum"] = "c{{aieixzvzx:um}}",
		["cums"] = "c{{aieixzvzx:ums}}",
		["cumming"] = "cu{{aieixzvzx:mming}}",
		["cumload"] = "cu{{aieixzvzx:mload}}",
		["creampie"] = "cre{{aieixzvzx:ampie}",
		["scammer"] = "sca{{aieixzvzx:mmer}}",
		["fucker"] = "fu{{aieixzvzx:cker}}",
		["hitler"] = "hit{{aieixzvzx:ler}}",
		["nazi"] = "na{{aieixzvzx:zi}}",
		["simp"] = "si{{aieixzvzx:mp}}",
		["simping"] = "sim{{aieixzvzx:ping}}",
		["meth"] = "me{{aieixzvzx:th}}",
		["cocaine"] = "co{{aieixzvzx:caine}}",
		["heroin"] = "hero{{aieixzvzx:in}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["ballsack"] = "ba{{aieixzvzx:llsack}}",
		["nutsack"] = "nu{{aieixzvzx:tsack}}",
		["athiest"] = "athi{{aieixzvzx:est}}",
		["jewish"] = "je{{aieixzvzx:wish}}",
		["christian"] = "chri{{aieixzvzx:stian}}",
		["muslim"] = "mu{{aieixzvzx:slim}}",
		["jurdism"] = "jur{{aieixzvzx:dism}}",
		["islam"] = "isl{{aieixzvzx:am}}",
		["masturbate"] = "mas{{aieixzvzx:turbate}}",
		["masturbates"] = "mastu{{aieixzvzx:rbates}}",
		["tittys"] = "ti{{aieixzvzx:ttys}}",
		["tits"] = "ti{{aieixzvzx:ts}}",
		["allah"] = "al{{aieixzvzx:lah}}",
		["muhammad"] = "muha{{aieixzvzx:mmad}}",
		["christianity"] = "chri{{aieixzvzx:stianity}}",
		["satanism"] = "sata{{aieixzvzx:nism}}",

		["1"] = "on{{aieixzvzx:e}}",
		["2"] = "t{{aieixzvzx:wo}}",
		["3"] = "th{{aieixzvzx:ree}}",
		["4"] = "fo{{aieixzvzx:ur}}",
		["5"] = "fi{{aieixzvzx:ve}}",
		["6"] = "s{{aieixzvzx:ix}}",
		["7"] = "se{{aieixzvzx:ven}}",
		["8"] = "ei{{aieixzvzx:ght}}",
		["9"] = "ni{{aieixzvzx:ne}}",
		["10"] = "te{{aieixzvzx:n}}",
		["twitter"] = "twi{{aieixzvzx:tter}}",
		["youtube"] = "you{{aieixzvzx:tube}}",
		["rumble"] = "rum{{aieixzvzx:ble}}",
		["tiktok"] = "tik{{aieixzvzx:tok}}",
		["facebook"] = "face{{aieixzvzx:book}}",
		["whatsapp"] = "wha{{aieixzvzx:tsapp}}",
		["discord"] = "disco{{aieixzvzx:rd}}",
		["instagram"] = "inst{{aieixzvzx:agram}}",
		["snapchat"] = "snap{{aieixzvzx:chat}}",

		-- ALL NEW

		["wtf"] = "wt{{aieixzvzx:f}}",
		["gtfo"] = "gt{{aieixzvzx:fo}}",
		["kys"] = "k{{aieixzvzx:ys}}",
		["omfg"] = "omf{{aieixzvzx:g}}",
		["stfu"] = "st{{aieixzvzx:fu}}",
		["ily"] = "il{{aieixzvzx:y}}",
		["istg"] = "is{{aieixzvzx:tg}}",
		["your"] = "y{{aieixzvzx:our}}",
		["that"] = "th{{aieixzvzx:at}}",
		["and"] = "a{{aieixzvzx:nd}}",
		["or"] = "o{{aieixzvzx:r}}",
		["up"] = "u{{aieixzvzx:p}}",
		["down"] = "do{{aieixzvzx:wn}}",
		["if"] = "i{{aieixzvzx:f}}",
		["else"] = "el{{aieixzvzx:se}}",
		["then"] = "th{{aieixzvzx:en}}",
		["why"] = "wh{{aieixzvzx:y}}",
		["what"] = "wha{{aieixzvzx:t}}",
		["who"] = "wh{{aieixzvzx:o}}",
		["where"] = "wh{{aieixzvzx:ere}}",
		["see"] = "se{{aieixzvzx:e}}",
		["do"] = "d{{aieixzvzx:o}}",
		["to"] = "t{{aieixzvzx:o}}",
		["of"] = "o{{aieixzvzx:f}}",
		["onlyfans"] = "on{{aieixzvzx:lyfans}}",
		["he"] = "h{{aieixzvzx:e}}",
		["she"] = "sh{{aieixzvzx:e}}",
		["they"] = "th{{aieixzvzx:ey}}",
		["them"] = "th{{aieixzvzx:em}}",
		["had"] = "h{{aieixzvzx:add}}",
		["for"] = "fo{{aieixzvzx:r}}",
		["on"] = "o{{aieixzvzx:n}}",
		["as"] = "a{{aieixzvzx:s}}",
		["you"] = "yo{{aieixzvzx:u}}",
		["my"] = "m{{aieixzvzx:y}}",
		["have"] = "h{{aieixzvzx:ave}}",
		["yours"] = "you{{aieixzvzx:rs}}",
		["want"] = "wa{{aieixzvzx:nt}}",
		["not"] = "no{{aieixzvzx:t}}",
		["with"] = "wi{{aieixzvzx:th}}",
		["number"] = "numb{{aieixzvzx:er}}",
		["numbers"] = "numb{{aieixzvzx:ers}}",
		["day"] = "da{{aieixzvzx:y}}",
		["night"] = "ni{{aieixzvzx:ght}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["the"] = "th{{aieixzvzx:e}}",
		["shut"] = "s{{aieixzvzx:hut}}",
		["come"] = "co{{aieixzvzx:me}}",
		["some"] = "so{{aieixzvzx:me}}",
		["there"] = "the{{aieixzvzx:re}}",
		["but"] = "bu{{aieixzvzx:t}}",
		["more"] = "mo{{aieixzvzx:re}}",
		["all"] = "a{{aieixzvzx:ll}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["yes"] = "ye{{aieixzvzx:s}}",
		["no"] = "n{{aieixzvzx:o}}",
		["so"] = "s{{aieixzvzx:o}}",
		["said"] = "sa{{aieixzvzx:id}}",
		["can"] = "ca{{aieixzvzx:n}}",
		["we"] = "w{{aieixzvzx:e}}"

		
	}



	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

	local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
		local Method = getnamecallmethod()
		local Arguments = {...}
		
		if self == Remote and Method == "FireServer" then
			local Message = Arguments[1]
			local Split = Message:split(" ")
			local FinalMessage = ""

			for _, x in next, Split do
				for _, Bypass in next, Bypasses do
					if x:lower() == _ then
						if x:upper() ~= x then
							Message = Message:gsub(x, Bypass)
							FinalMessage = Message .. " "..method
						else
							Message = Message:gsub(x, Bypass):upper()
							FinalMessage = Message:gsub(x, Bypass):upper() .. " "..method
						end
					end
				end
			end
			
			if FinalMessage ~= "" then
				Arguments[1] = FinalMessage
			end
			
			return ChatBypass(self, unpack(Arguments))
		end
		
		return ChatBypass(self, ...)
	end)

	if not LOADED then
		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "FIRSTLY DISCOVERED WAS BY tav#8870. Bypasser was done by Decayed#5038 and AnthonyIsHere on V3rm. Modified by daddysyn",
			Icon = 6023426926
		}

		wait(2.5)

		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "Thanks to riptide for finding this! mwa riptide",
			Icon = 6023426926
		}

		wait(2.5)

		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "Keep in mind that your sentences might get tagged because it is intentionally ## at the end.",
			Icon = 6023426926
		}

	end


	wait(10)
	NotificationHolder:message {Title = "<font color='rgb(240,248,255)'>Warning</font>", Description = "sacred a skid", Icon = 10952973359}
	pcall(
		function()
			getgenv().LOADED = true
		end
	)

end

if filteredString == "####" then
	NotificationHolder:message {
        Title = "<font color='rgb(130, 220, 120)'>Failed</font>",
        Description = "Your account is under 13. Your account must be 13 or over in order to execute BetterBypasser.",
        Icon = 6023426926
    }

else
    execute()
end
