

#include "Organisation.h"

using namespace Tiny;

Organisation::Organisation()
{
	_class = std::string();
	name = std::string();
}

Organisation::Organisation(std::string jsonString)
{
	this->fromJson(jsonString);
}

Organisation::~Organisation()
{

}

void
Organisation::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }


}

bourne::json
Organisation::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["name"] = getName();



    return object;

}

std::string
Organisation::getClass()
{
	return _class;
}

void
Organisation::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
Organisation::getName()
{
	return name;
}

void
Organisation::setName(std::string  name)
{
	this->name = name;
}



