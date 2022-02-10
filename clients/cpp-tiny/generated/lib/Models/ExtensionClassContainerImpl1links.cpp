

#include "ExtensionClassContainerImpl1links.h"

using namespace Tiny;

ExtensionClassContainerImpl1links::ExtensionClassContainerImpl1links()
{
	self = Link();
	_class = std::string();
}

ExtensionClassContainerImpl1links::ExtensionClassContainerImpl1links(std::string jsonString)
{
	this->fromJson(jsonString);
}

ExtensionClassContainerImpl1links::~ExtensionClassContainerImpl1links()
{

}

void
ExtensionClassContainerImpl1links::fromJson(std::string jsonObj)
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
ExtensionClassContainerImpl1links::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();





    object["_class"] = getClass();



    return object;

}

Link
ExtensionClassContainerImpl1links::getSelf()
{
	return self;
}

void
ExtensionClassContainerImpl1links::setSelf(Link  self)
{
	this->self = self;
}

std::string
ExtensionClassContainerImpl1links::getClass()
{
	return _class;
}

void
ExtensionClassContainerImpl1links::setClass(std::string  _class)
{
	this->_class = _class;
}



