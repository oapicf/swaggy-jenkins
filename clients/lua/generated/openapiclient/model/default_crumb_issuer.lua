--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.1.2-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- default_crumb_issuer class
local default_crumb_issuer = {}
local default_crumb_issuer_mt = {
	__name = "default_crumb_issuer";
	__index = default_crumb_issuer;
}

local function cast_default_crumb_issuer(t)
	return setmetatable(t, default_crumb_issuer_mt)
end

local function new_default_crumb_issuer(_class, crumb, crumb_request_field)
	return cast_default_crumb_issuer({
		["_class"] = _class;
		["crumb"] = crumb;
		["crumbRequestField"] = crumb_request_field;
	})
end

return {
	cast = cast_default_crumb_issuer;
	new = new_default_crumb_issuer;
}
