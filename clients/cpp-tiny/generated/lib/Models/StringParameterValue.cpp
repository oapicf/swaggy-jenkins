

#include "StringParameterValue.h"

using namespace Tiny;

StringParameterValue::StringParameterValue()
{
	_class = std::string();
	name = std::string();
	value = std::string();
}

StringParameterValue::StringParameterValue(std::string jsonString)
{
	this->fromJson(jsonString);
}

StringParameterValue::~StringParameterValue()
{

}

void
StringParameterValue::fromJson(std::string jsonObj)
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

    const char *valueKey = "value";

    if(object.has_key(valueKey))
    {
        bourne::json value = object[valueKey];



        jsonToValue(&value, value, "std::string");


    }


}

bourne::json
StringParameterValue::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["name"] = getName();






    object["value"] = getValue();



    return object;

}

std::string
StringParameterValue::getClass()
{
	return _class;
}

void
StringParameterValue::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
StringParameterValue::getName()
{
	return name;
}

void
StringParameterValue::setName(std::string  name)
{
	this->name = name;
}

std::string
StringParameterValue::getValue()
{
	return value;
}

void
StringParameterValue::setValue(std::string  value)
{
	this->value = value;
}



