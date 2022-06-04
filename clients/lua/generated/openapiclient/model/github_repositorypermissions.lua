--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.5.1-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- github_repositorypermissions class
local github_repositorypermissions = {}
local github_repositorypermissions_mt = {
	__name = "github_repositorypermissions";
	__index = github_repositorypermissions;
}

local function cast_github_repositorypermissions(t)
	return setmetatable(t, github_repositorypermissions_mt)
end

local function new_github_repositorypermissions(admin, push, pull, _class)
	return cast_github_repositorypermissions({
		["admin"] = admin;
		["push"] = push;
		["pull"] = pull;
		["_class"] = _class;
	})
end

return {
	cast = cast_github_repositorypermissions;
	new = new_github_repositorypermissions;
}
