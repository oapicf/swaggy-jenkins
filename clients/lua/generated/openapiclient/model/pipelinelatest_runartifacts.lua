--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 2.0.1-pre.0
  Contact: blah+oapicf@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- pipelinelatest_runartifacts class
local pipelinelatest_runartifacts = {}
local pipelinelatest_runartifacts_mt = {
	__name = "pipelinelatest_runartifacts";
	__index = pipelinelatest_runartifacts;
}

local function cast_pipelinelatest_runartifacts(t)
	return setmetatable(t, pipelinelatest_runartifacts_mt)
end

local function new_pipelinelatest_runartifacts(name, size, url, _class)
	return cast_pipelinelatest_runartifacts({
		["name"] = name;
		["size"] = size;
		["url"] = url;
		["_class"] = _class;
	})
end

return {
	cast = cast_pipelinelatest_runartifacts;
	new = new_pipelinelatest_runartifacts;
}
