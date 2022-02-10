

#include "InputStepImpllinks.h"

using namespace Tiny;

InputStepImpllinks::InputStepImpllinks()
{
	self = Link();
	_class = std::string();
}

InputStepImpllinks::InputStepImpllinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

InputStepImpllinks::~InputStepImpllinks()
{

}

void
InputStepImpllinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *selfKey = "self";

    if(object.has_key(selfKey))
    {
        bourne::json value = object[selfKey];




        Link* obj = &self;
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
InputStepImpllinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();





    object["_class"] = getClass();



    return object;

}

Link
InputStepImpllinks::getSelf()
{
	return self;
}

void
InputStepImpllinks::setSelf(Link  self)
{
	this->self = self;
}

std::string
InputStepImpllinks::getClass()
{
	return _class;
}

void
InputStepImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}



