--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 2.0.1-pre.0
  Contact: blah+oapicf@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- github_file class
local github_file = {}
local github_file_mt = {
	__name = "github_file";
	__index = github_file;
}

local function cast_github_file(t)
	return setmetatable(t, github_file_mt)
end

local function new_github_file(content, _class)
	return cast_github_file({
		["content"] = content;
		["_class"] = _class;
	})
end

return {
	cast = cast_github_file;
	new = new_github_file;
}
