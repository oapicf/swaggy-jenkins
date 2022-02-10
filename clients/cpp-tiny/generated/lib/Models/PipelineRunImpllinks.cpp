

#include "PipelineRunImpllinks.h"

using namespace Tiny;

PipelineRunImpllinks::PipelineRunImpllinks()
{
	nodes = Link();
	log = Link();
	self = Link();
	actions = Link();
	steps = Link();
	_class = std::string();
}

PipelineRunImpllinks::PipelineRunImpllinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineRunImpllinks::~PipelineRunImpllinks()
{

}

void
PipelineRunImpllinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *nodesKey = "nodes";

    if(object.has_key(nodesKey))
    {
        bourne::json value = object[nodesKey];




        Link* obj = &nodes;
		obj->fromJson(value.dump());

    }

    const char *logKey = "log";

    if(object.has_key(logKey))
    {
        bourne::json value = object[logKey];




        Link* obj = &log;
		obj->fromJson(value.dump());

    }

    const char *selfKey = "self";

    if(object.has_key(selfKey))
    {
        bourne::json value = object[selfKey];




        Link* obj = &self;
		obj->fromJson(value.dump());

    }

    const char *actionsKey = "actions";

    if(object.has_key(actionsKey))
    {
        bourne::json value = object[actionsKey];




        Link* obj = &actions;
		obj->fromJson(value.dump());

    }

    const char *stepsKey = "steps";

    if(object.has_key(stepsKey))
    {
        bourne::json value = object[stepsKey];




        Link* obj = &steps;
		obj->fromJson(value.dump());

    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelineRunImpllinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["nodes"] = getNodes().toJson();






	object["log"] = getLog().toJson();






	object["self"] = getSelf().toJson();






	object["actions"] = getActions().toJson();






	object["steps"] = getSteps().toJson();





    object["_class"] = getClass();



    return object;

}

Link
PipelineRunImpllinks::getNodes()
{
	return nodes;
}

void
PipelineRunImpllinks::setNodes(Link  nodes)
{
	this->nodes = nodes;
}

Link
PipelineRunImpllinks::getLog()
{
	return log;
}

void
PipelineRunImpllinks::setLog(Link  log)
{
	this->log = log;
}

Link
PipelineRunImpllinks::getSelf()
{
	return self;
}

void
PipelineRunImpllinks::setSelf(Link  self)
{
	this->self = self;
}

Link
PipelineRunImpllinks::getActions()
{
	return actions;
}

void
PipelineRunImpllinks::setActions(Link  actions)
{
	this->actions = actions;
}

Link
PipelineRunImpllinks::getSteps()
{
	return steps;
}

void
PipelineRunImpllinks::setSteps(Link  steps)
{
	this->steps = steps;
}

std::string
PipelineRunImpllinks::getClass()
{
	return _class;
}

void
PipelineRunImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}



