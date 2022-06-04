--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 1.5.1-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- github_organization class
local github_organization = {}
local github_organization_mt = {
	__name = "github_organization";
	__index = github_organization;
}

local function cast_github_organization(t)
	return setmetatable(t, github_organization_mt)
end

local function new_github_organization(_class, _links, jenkins_organization_pipeline, name)
	return cast_github_organization({
		["_class"] = _class;
		["_links"] = _links;
		["jenkinsOrganizationPipeline"] = jenkins_organization_pipeline;
		["name"] = name;
	})
end

return {
	cast = cast_github_organization;
	new = new_github_organization;
}
