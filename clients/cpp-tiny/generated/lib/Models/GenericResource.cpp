

#include "GenericResource.h"

using namespace Tiny;

GenericResource::GenericResource()
{
	_class = std::string();
	displayName = std::string();
	durationInMillis = int(0);
	id = std::string();
	result = std::string();
	startTime = std::string();
}

GenericResource::GenericResource(std::string jsonString)
{
	this->fromJson(jsonString);
}

GenericResource::~GenericResource()
{

}

void
GenericResource::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *displayNameKey = "displayName";

    if(object.has_key(displayNameKey))
    {
        bourne::json value = object[displayNameKey];



        jsonToValue(&displayName, value, "std::string");


    }

    const char *durationInMillisKey = "durationInMillis";

    if(object.has_key(durationInMillisKey))
    {
        bourne::json value = object[durationInMillisKey];



        jsonToValue(&durationInMillis, value, "int");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *resultKey = "result";

    if(object.has_key(resultKey))
    {
        bourne::json value = object[resultKey];



        jsonToValue(&result, value, "std::string");


    }

    const char *startTimeKey = "startTime";

    if(object.has_key(startTimeKey))
    {
        bourne::json value = object[startTimeKey];



        jsonToValue(&startTime, value, "std::string");


    }


}

bourne::json
GenericResource::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["displayName"] = getDisplayName();






    object["durationInMillis"] = getDurationInMillis();






    object["id"] = getId();






    object["result"] = getResult();






    object["startTime"] = getStartTime();



    return object;

}

std::string
GenericResource::getClass()
{
	return _class;
}

void
GenericResource::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
GenericResource::getDisplayName()
{
	return displayName;
}

void
GenericResource::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
GenericResource::getDurationInMillis()
{
	return durationInMillis;
}

void
GenericResource::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

std::string
GenericResource::getId()
{
	return id;
}

void
GenericResource::setId(std::string  id)
{
	this->id = id;
}

std::string
GenericResource::getResult()
{
	return result;
}

void
GenericResource::setResult(std::string  result)
{
	this->result = result;
}

std::string
GenericResource::getStartTime()
{
	return startTime;
}

void
GenericResource::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}



