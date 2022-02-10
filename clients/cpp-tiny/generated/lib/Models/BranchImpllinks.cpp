

#include "BranchImpllinks.h"

using namespace Tiny;

BranchImpllinks::BranchImpllinks()
{
	self = Link();
	actions = Link();
	runs = Link();
	queue = Link();
	_class = std::string();
}

BranchImpllinks::BranchImpllinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

BranchImpllinks::~BranchImpllinks()
{

}

void
BranchImpllinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

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

    const char *runsKey = "runs";

    if(object.has_key(runsKey))
    {
        bourne::json value = object[runsKey];




        Link* obj = &runs;
		obj->fromJson(value.dump());

    }

    const char *queueKey = "queue";

    if(object.has_key(queueKey))
    {
        bourne::json value = object[queueKey];




        Link* obj = &queue;
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
BranchImpllinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();






	object["actions"] = getActions().toJson();






	object["runs"] = getRuns().toJson();






	object["queue"] = getQueue().toJson();





    object["_class"] = getClass();



    return object;

}

Link
BranchImpllinks::getSelf()
{
	return self;
}

void
BranchImpllinks::setSelf(Link  self)
{
	this->self = self;
}

Link
BranchImpllinks::getActions()
{
	return actions;
}

void
BranchImpllinks::setActions(Link  actions)
{
	this->actions = actions;
}

Link
BranchImpllinks::getRuns()
{
	return runs;
}

void
BranchImpllinks::setRuns(Link  runs)
{
	this->runs = runs;
}

Link
BranchImpllinks::getQueue()
{
	return queue;
}

void
BranchImpllinks::setQueue(Link  queue)
{
	this->queue = queue;
}

std::string
BranchImpllinks::getClass()
{
	return _class;
}

void
BranchImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}



