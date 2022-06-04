--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.5.1-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- extension_class_impl class
local extension_class_impl = {}
local extension_class_impl_mt = {
	__name = "extension_class_impl";
	__index = extension_class_impl;
}

local function cast_extension_class_impl(t)
	return setmetatable(t, extension_class_impl_mt)
end

local function new_extension_class_impl(_class, _links, classes)
	return cast_extension_class_impl({
		["_class"] = _class;
		["_links"] = _links;
		["classes"] = classes;
	})
end

return {
	cast = cast_extension_class_impl;
	new = new_extension_class_impl;
}
