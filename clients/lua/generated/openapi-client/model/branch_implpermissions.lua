--[[
  Swaggy Jenkins
 
  Jenkins API clients generated from Swagger / Open API specification
 
  OpenAPI spec version: 1.1.1
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- branch_implpermissions class
local branch_implpermissions = {}
local branch_implpermissions_mt = {
	__name = "branch_implpermissions";
	__index = branch_implpermissions;
}

local function cast_branch_implpermissions(t)
	return setmetatable(t, branch_implpermissions_mt)
end

local function new_branch_implpermissions(create, read, start, stop, _class)
	return cast_branch_implpermissions({
		["create"] = create;
		["read"] = read;
		["start"] = start;
		["stop"] = stop;
		["_class"] = _class;
	})
end

return {
	cast = cast_branch_implpermissions;
	new = new_branch_implpermissions;
}
