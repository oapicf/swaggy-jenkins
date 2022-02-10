

#include "PipelineImpllinks.h"

using namespace Tiny;

PipelineImpllinks::PipelineImpllinks()
{
	runs = Link();
	self = Link();
	queue = Link();
	actions = Link();
	_class = std::string();
}

PipelineImpllinks::PipelineImpllinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineImpllinks::~PipelineImpllinks()
{

}

void
PipelineImpllinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *runsKey = "runs";

    if(object.has_key(runsKey))
    {
        bourne::json value = object[runsKey];




        Link* obj = &runs;
		obj->fromJson(value.dump());

    }

    const char *selfKey = "self";

    if(object.has_key(selfKey))
    {
        bourne::json value = object[selfKey];




        Link* obj = &self;
		obj->fromJson(value.dump());

    }

    const char *queueKey = "queue";

    if(object.has_key(queueKey))
    {
        bourne::json value = object[queueKey];




        Link* obj = &queue;
		obj->fromJson(value.dump());

    }

    const char *actionsKey = "actions";

    if(object.has_key(actionsKey))
    {
        bourne::json value = object[actionsKey];




        Link* obj = &actions;
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
PipelineImpllinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["runs"] = getRuns().toJson();






	object["self"] = getSelf().toJson();






	object["queue"] = getQueue().toJson();






	object["actions"] = getActions().toJson();





    object["_class"] = getClass();



    return object;

}

Link
PipelineImpllinks::getRuns()
{
	return runs;
}

void
PipelineImpllinks::setRuns(Link  runs)
{
	this->runs = runs;
}

Link
PipelineImpllinks::getSelf()
{
	return self;
}

void
PipelineImpllinks::setSelf(Link  self)
{
	this->self = self;
}

Link
PipelineImpllinks::getQueue()
{
	return queue;
}

void
PipelineImpllinks::setQueue(Link  queue)
{
	this->queue = queue;
}

Link
PipelineImpllinks::getActions()
{
	return actions;
}

void
PipelineImpllinks::setActions(Link  actions)
{
	this->actions = actions;
}

std::string
PipelineImpllinks::getClass()
{
	return _class;
}

void
PipelineImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}



