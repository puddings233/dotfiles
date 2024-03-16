#!/usr/bin/env lua
local status = os.execute("pgrep hypridle >> /dev/null")

local function check_status()
	if status ~= nil then
		print("d")
	else
		print("d")
	end
end

local function switch_status()
	if status ~= nil then
	os.execute("killall hypridle")
	else
	os.execute("hypridle &")
	end
end

function Run_hypridle_lua()
	if arg[1] == "check" then
		check_status()
	elseif arg[1] == "switch" then
		switch_status()
	end
end

Run_hypridle_lua()
