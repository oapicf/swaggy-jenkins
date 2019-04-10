--[[
  Swaggy Jenkins
 
  Jenkins API clients generated from Swagger / Open API specification
 
  OpenAPI spec version: 1.1.1
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- scm_organisations class
local scm_organisations = {}
local scm_organisations_mt = {
	__name = "scm_organisations";
	__index = scm_organisations;
}

local function cast_scm_organisations(t)
	return setmetatable(t, scm_organisations_mt)
end

local function new_scm_organisations()
	return cast_scm_organisations({
	})
end

return {
	cast = cast_scm_organisations;
	new = new_scm_organisations;
}
