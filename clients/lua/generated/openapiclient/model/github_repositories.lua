--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 2.0.1-pre.0
  Contact: blah+oapicf@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- github_repositories class
local github_repositories = {}
local github_repositories_mt = {
	__name = "github_repositories";
	__index = github_repositories;
}

local function cast_github_repositories(t)
	return setmetatable(t, github_repositories_mt)
end

local function new_github_repositories(_class, _links, items, last_page, next_page, page_size)
	return cast_github_repositories({
		["_class"] = _class;
		["_links"] = _links;
		["items"] = items;
		["lastPage"] = last_page;
		["nextPage"] = next_page;
		["pageSize"] = page_size;
	})
end

return {
	cast = cast_github_repositories;
	new = new_github_repositories;
}
