

#include "Pipeline.h"

using namespace Tiny;

Pipeline::Pipeline()
{
	_class = std::string();
	organization = std::string();
	name = std::string();
	displayName = std::string();
	fullName = std::string();
	weatherScore = int(0);
	estimatedDurationInMillis = int(0);
	latestRun = PipelinelatestRun();
}

Pipeline::Pipeline(std::string jsonString)
{
	this->fromJson(jsonString);
}

Pipeline::~Pipeline()
{

}

void
Pipeline::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *organizationKey = "organization";

    if(object.has_key(organizationKey))
    {
        bourne::json value = object[organizationKey];



        jsonToValue(&organization, value, "std::string");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *displayNameKey = "displayName";

    if(object.has_key(displayNameKey))
    {
        bourne::json value = object[displayNameKey];



        jsonToValue(&displayName, value, "std::string");


    }

    const char *fullNameKey = "fullName";

    if(object.has_key(fullNameKey))
    {
        bourne::json value = object[fullNameKey];



        jsonToValue(&fullName, value, "std::string");


    }

    const char *weatherScoreKey = "weatherScore";

    if(object.has_key(weatherScoreKey))
    {
        bourne::json value = object[weatherScoreKey];



        jsonToValue(&weatherScore, value, "int");


    }

    const char *estimatedDurationInMillisKey = "estimatedDurationInMillis";

    if(object.has_key(estimatedDurationInMillisKey))
    {
        bourne::json value = object[estimatedDurationInMillisKey];



        jsonToValue(&estimatedDurationInMillis, value, "int");


    }

    const char *latestRunKey = "latestRun";

    if(object.has_key(latestRunKey))
    {
        bourne::json value = object[latestRunKey];




        PipelinelatestRun* obj = &latestRun;
		obj->fromJson(value.dump());

    }


}

bourne::json
Pipeline::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["organization"] = getOrganization();






    object["name"] = getName();






    object["displayName"] = getDisplayName();






    object["fullName"] = getFullName();






    object["weatherScore"] = getWeatherScore();






    object["estimatedDurationInMillis"] = getEstimatedDurationInMillis();







	object["latestRun"] = getLatestRun().toJson();


    return object;

}

std::string
Pipeline::getClass()
{
	return _class;
}

void
Pipeline::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
Pipeline::getOrganization()
{
	return organization;
}

void
Pipeline::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::string
Pipeline::getName()
{
	return name;
}

void
Pipeline::setName(std::string  name)
{
	this->name = name;
}

std::string
Pipeline::getDisplayName()
{
	return displayName;
}

void
Pipeline::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::string
Pipeline::getFullName()
{
	return fullName;
}

void
Pipeline::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

int
Pipeline::getWeatherScore()
{
	return weatherScore;
}

void
Pipeline::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

int
Pipeline::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
Pipeline::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

PipelinelatestRun
Pipeline::getLatestRun()
{
	return latestRun;
}

void
Pipeline::setLatestRun(PipelinelatestRun  latestRun)
{
	this->latestRun = latestRun;
}



