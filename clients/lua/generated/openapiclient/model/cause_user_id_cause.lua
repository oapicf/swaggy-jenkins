--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.5.1-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- cause_user_id_cause class
local cause_user_id_cause = {}
local cause_user_id_cause_mt = {
	__name = "cause_user_id_cause";
	__index = cause_user_id_cause;
}

local function cast_cause_user_id_cause(t)
	return setmetatable(t, cause_user_id_cause_mt)
end

local function new_cause_user_id_cause(_class, short_description, user_id, user_name)
	return cast_cause_user_id_cause({
		["_class"] = _class;
		["shortDescription"] = short_description;
		["userId"] = user_id;
		["userName"] = user_name;
	})
end

return {
	cast = cast_cause_user_id_cause;
	new = new_cause_user_id_cause;
}
