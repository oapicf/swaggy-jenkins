

#include "ExtensionClassContainerImpl1.h"

using namespace Tiny;

ExtensionClassContainerImpl1::ExtensionClassContainerImpl1()
{
	_class = std::string();
	_links = ExtensionClassContainerImpl1links();
	map = ExtensionClassContainerImpl1map();
}

ExtensionClassContainerImpl1::ExtensionClassContainerImpl1(std::string jsonString)
{
	this->fromJson(jsonString);
}

ExtensionClassContainerImpl1::~ExtensionClassContainerImpl1()
{

}

void
ExtensionClassContainerImpl1::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *_linksKey = "_links";

    if(object.has_key(_linksKey))
    {
        bourne::json value = object[_linksKey];




        ExtensionClassContainerImpl1links* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *mapKey = "map";

    if(object.has_key(mapKey))
    {
        bourne::json value = object[mapKey];




        ExtensionClassContainerImpl1map* obj = &map;
		obj->fromJson(value.dump());

    }


}

bourne::json
ExtensionClassContainerImpl1::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();






	object["map"] = getMap().toJson();


    return object;

}

std::string
ExtensionClassContainerImpl1::getClass()
{
	return _class;
}

void
ExtensionClassContainerImpl1::setClass(std::string  _class)
{
	this->_class = _class;
}

ExtensionClassContainerImpl1links
ExtensionClassContainerImpl1::getLinks()
{
	return _links;
}

void
ExtensionClassContainerImpl1::setLinks(ExtensionClassContainerImpl1links  _links)
{
	this->_links = _links;
}

ExtensionClassContainerImpl1map
ExtensionClassContainerImpl1::getMap()
{
	return map;
}

void
ExtensionClassContainerImpl1::setMap(ExtensionClassContainerImpl1map  map)
{
	this->map = map;
}



