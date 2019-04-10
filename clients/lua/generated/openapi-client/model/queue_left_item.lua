--[[
  Swaggy Jenkins
 
  Jenkins API clients generated from Swagger / Open API specification
 
  OpenAPI spec version: 1.1.1
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- queue_left_item class
local queue_left_item = {}
local queue_left_item_mt = {
	__name = "queue_left_item";
	__index = queue_left_item;
}

local function cast_queue_left_item(t)
	return setmetatable(t, queue_left_item_mt)
end

local function new_queue_left_item(_class, actions, blocked, buildable, id, in_queue_since, params, stuck, task, url, why, cancelled, executable)
	return cast_queue_left_item({
		["_class"] = _class;
		["actions"] = actions;
		["blocked"] = blocked;
		["buildable"] = buildable;
		["id"] = id;
		["inQueueSince"] = in_queue_since;
		["params"] = params;
		["stuck"] = stuck;
		["task"] = task;
		["url"] = url;
		["why"] = why;
		["cancelled"] = cancelled;
		["executable"] = executable;
	})
end

return {
	cast = cast_queue_left_item;
	new = new_queue_left_item;
}
