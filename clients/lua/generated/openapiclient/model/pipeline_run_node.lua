--[[
  Swaggy Jenkins

  Jenkins API clients generated from Swagger / Open API specification

  The version of the OpenAPI document: 2.0.1-pre.0
  Contact: blah+oapicf@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- pipeline_run_node class
local pipeline_run_node = {}
local pipeline_run_node_mt = {
	__name = "pipeline_run_node";
	__index = pipeline_run_node;
}

local function cast_pipeline_run_node(t)
	return setmetatable(t, pipeline_run_node_mt)
end

local function new_pipeline_run_node(_class, display_name, duration_in_millis, edges, id, result, start_time, state)
	return cast_pipeline_run_node({
		["_class"] = _class;
		["displayName"] = display_name;
		["durationInMillis"] = duration_in_millis;
		["edges"] = edges;
		["id"] = id;
		["result"] = result;
		["startTime"] = start_time;
		["state"] = state;
	})
end

return {
	cast = cast_pipeline_run_node;
	new = new_pipeline_run_node;
}
