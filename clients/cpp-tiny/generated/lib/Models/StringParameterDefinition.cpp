

#include "StringParameterDefinition.h"

using namespace Tiny;

StringParameterDefinition::StringParameterDefinition()
{
	_class = std::string();
	defaultParameterValue = StringParameterValue();
	description = std::string();
	name = std::string();
	type = std::string();
}

StringParameterDefinition::StringParameterDefinition(std::string jsonString)
{
	this->fromJson(jsonString);
}

StringParameterDefinition::~StringParameterDefinition()
{

}

void
StringParameterDefinition::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *defaultParameterValueKey = "defaultParameterValue";

    if(object.has_key(defaultParameterValueKey))
    {
        bourne::json value = object[defaultParameterValueKey];




        StringParameterValue* obj = &defaultParameterValue;
		obj->fromJson(value.dump());

    }

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *typeKey = "type";

    if(object.has_key(typeKey))
    {
        bourne::json value = object[typeKey];



        jsonToValue(&type, value, "std::string");


    }


}

bourne::json
StringParameterDefinition::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["defaultParameterValue"] = getDefaultParameterValue().toJson();





    object["description"] = getDescription();






    object["name"] = getName();






    object["type"] = getType();



    return object;

}

std::string
StringParameterDefinition::getClass()
{
	return _class;
}

void
StringParameterDefinition::setClass(std::string  _class)
{
	this->_class = _class;
}

StringParameterValue
StringParameterDefinition::getDefaultParameterValue()
{
	return defaultParameterValue;
}

void
StringParameterDefinition::setDefaultParameterValue(StringParameterValue  defaultParameterValue)
{
	this->defaultParameterValue = defaultParameterValue;
}

std::string
StringParameterDefinition::getDescription()
{
	return description;
}

void
StringParameterDefinition::setDescription(std::string  description)
{
	this->description = description;
}

std::string
StringParameterDefinition::getName()
{
	return name;
}

void
StringParameterDefinition::setName(std::string  name)
{
	this->name = name;
}

std::string
StringParameterDefinition::getType()
{
	return type;
}

void
StringParameterDefinition::setType(std::string  type)
{
	this->type = type;
}



