--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.1.2-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- list_view class
local list_view = {}
local list_view_mt = {
	__name = "list_view";
	__index = list_view;
}

local function cast_list_view(t)
	return setmetatable(t, list_view_mt)
end

local function new_list_view(_class, description, jobs, name, url)
	return cast_list_view({
		["_class"] = _class;
		["description"] = description;
		["jobs"] = jobs;
		["name"] = name;
		["url"] = url;
	})
end

return {
	cast = cast_list_view;
	new = new_list_view;
}
