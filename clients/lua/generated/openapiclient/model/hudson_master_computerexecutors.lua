--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.5.1-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- hudson_master_computerexecutors class
local hudson_master_computerexecutors = {}
local hudson_master_computerexecutors_mt = {
	__name = "hudson_master_computerexecutors";
	__index = hudson_master_computerexecutors;
}

local function cast_hudson_master_computerexecutors(t)
	return setmetatable(t, hudson_master_computerexecutors_mt)
end

local function new_hudson_master_computerexecutors(current_executable, idle, likely_stuck, Number_, progress, _class)
	return cast_hudson_master_computerexecutors({
		["currentExecutable"] = current_executable;
		["idle"] = idle;
		["likelyStuck"] = likely_stuck;
		["number"] = Number_;
		["progress"] = progress;
		["_class"] = _class;
	})
end

return {
	cast = cast_hudson_master_computerexecutors;
	new = new_hudson_master_computerexecutors;
}
