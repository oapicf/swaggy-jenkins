

#include "PipelineStepImpllinks.h"

using namespace Tiny;

PipelineStepImpllinks::PipelineStepImpllinks()
{
	self = Link();
	actions = Link();
	_class = std::string();
}

PipelineStepImpllinks::PipelineStepImpllinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineStepImpllinks::~PipelineStepImpllinks()
{

}

void
PipelineStepImpllinks::fromJson(std::string jsonObj)
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

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelineStepImpllinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();






	object["actions"] = getActions().toJson();





    object["_class"] = getClass();



    return object;

}

Link
PipelineStepImpllinks::getSelf()
{
	return self;
}

void
PipelineStepImpllinks::setSelf(Link  self)
{
	this->self = self;
}

Link
PipelineStepImpllinks::getActions()
{
	return actions;
}

void
PipelineStepImpllinks::setActions(Link  actions)
{
	this->actions = actions;
}

std::string
PipelineStepImpllinks::getClass()
{
	return _class;
}

void
PipelineStepImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}



