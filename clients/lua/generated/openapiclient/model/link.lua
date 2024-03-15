--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 2.0.1-pre.0
  Contact: blah+oapicf@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- link class
local link = {}
local link_mt = {
	__name = "link";
	__index = link;
}

local function cast_link(t)
	return setmetatable(t, link_mt)
end

local function new_link(_class, href)
	return cast_link({
		["_class"] = _class;
		["href"] = href;
	})
end

return {
	cast = cast_link;
	new = new_link;
}
