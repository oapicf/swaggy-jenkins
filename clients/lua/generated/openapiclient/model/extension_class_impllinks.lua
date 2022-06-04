--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.5.1-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- extension_class_impllinks class
local extension_class_impllinks = {}
local extension_class_impllinks_mt = {
	__name = "extension_class_impllinks";
	__index = extension_class_impllinks;
}

local function cast_extension_class_impllinks(t)
	return setmetatable(t, extension_class_impllinks_mt)
end

local function new_extension_class_impllinks(self, _class)
	return cast_extension_class_impllinks({
		["self"] = self;
		["_class"] = _class;
	})
end

return {
	cast = cast_extension_class_impllinks;
	new = new_extension_class_impllinks;
}
