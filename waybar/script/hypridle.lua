#!/usr/bin/env lua

local function get_pid()
	local command = io.popen("pgrep -x hypridle")
	if command ~= nil then
		local pid = command:read("*a")
		command:close()
		pid = pid:gsub("\n$", "")
		return pid
	else
		return nil
	end
end

local function get_status()
	local file_dir = "cat /proc/" .. get_pid() .. "/status | grep State"
	local status_file = io.popen(file_dir)
	if status_file ~= nil then
		local state = status_file:read("*a")
		state = state:gsub("\n$", "")
		if state == "State:	S (sleeping)" then
			status_file:close()
			return true
		else
			status_file:close()
			return false
		end
	else
		return nil
	end
end

local function check_status()
	if get_status() then
		print("d")
	else
		print("d")
	end
end

local function switch_status()
	if get_status() then
		os.execute("kill -STOP " .. get_pid())
	else
		os.execute("kill -CONT " .. get_pid())
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
