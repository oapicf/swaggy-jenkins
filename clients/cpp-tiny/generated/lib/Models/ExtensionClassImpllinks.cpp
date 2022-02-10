

#include "ExtensionClassImpllinks.h"

using namespace Tiny;

ExtensionClassImpllinks::ExtensionClassImpllinks()
{
	self = Link();
	_class = std::string();
}

ExtensionClassImpllinks::ExtensionClassImpllinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

ExtensionClassImpllinks::~ExtensionClassImpllinks()
{

}

void
ExtensionClassImpllinks::fromJson(std::string jsonObj)
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
ExtensionClassImpllinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();





    object["_class"] = getClass();



    return object;

}

Link
ExtensionClassImpllinks::getSelf()
{
	return self;
}

void
ExtensionClassImpllinks::setSelf(Link  self)
{
	this->self = self;
}

std::string
ExtensionClassImpllinks::getClass()
{
	return _class;
}

void
ExtensionClassImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}



