

#include "PipelineImpl.h"

using namespace Tiny;

PipelineImpl::PipelineImpl()
{
	_class = std::string();
	displayName = std::string();
	estimatedDurationInMillis = int(0);
	fullName = std::string();
	latestRun = std::string();
	name = std::string();
	organization = std::string();
	weatherScore = int(0);
	_links = PipelineImpllinks();
}

PipelineImpl::PipelineImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineImpl::~PipelineImpl()
{

}

void
PipelineImpl::fromJson(std::string jsonObj)
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

    const char *estimatedDurationInMillisKey = "estimatedDurationInMillis";

    if(object.has_key(estimatedDurationInMillisKey))
    {
        bourne::json value = object[estimatedDurationInMillisKey];



        jsonToValue(&estimatedDurationInMillis, value, "int");


    }

    const char *fullNameKey = "fullName";

    if(object.has_key(fullNameKey))
    {
        bourne::json value = object[fullNameKey];



        jsonToValue(&fullName, value, "std::string");


    }

    const char *latestRunKey = "latestRun";

    if(object.has_key(latestRunKey))
    {
        bourne::json value = object[latestRunKey];



        jsonToValue(&latestRun, value, "std::string");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *organizationKey = "organization";

    if(object.has_key(organizationKey))
    {
        bourne::json value = object[organizationKey];



        jsonToValue(&organization, value, "std::string");


    }

    const char *weatherScoreKey = "weatherScore";

    if(object.has_key(weatherScoreKey))
    {
        bourne::json value = object[weatherScoreKey];



        jsonToValue(&weatherScore, value, "int");


    }

    const char *_linksKey = "_links";

    if(object.has_key(_linksKey))
    {
        bourne::json value = object[_linksKey];




        PipelineImpllinks* obj = &_links;
		obj->fromJson(value.dump());

    }


}

bourne::json
PipelineImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["displayName"] = getDisplayName();






    object["estimatedDurationInMillis"] = getEstimatedDurationInMillis();






    object["fullName"] = getFullName();






    object["latestRun"] = getLatestRun();






    object["name"] = getName();






    object["organization"] = getOrganization();






    object["weatherScore"] = getWeatherScore();







	object["_links"] = getLinks().toJson();


    return object;

}

std::string
PipelineImpl::getClass()
{
	return _class;
}

void
PipelineImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
PipelineImpl::getDisplayName()
{
	return displayName;
}

void
PipelineImpl::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
PipelineImpl::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineImpl::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineImpl::getFullName()
{
	return fullName;
}

void
PipelineImpl::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
PipelineImpl::getLatestRun()
{
	return latestRun;
}

void
PipelineImpl::setLatestRun(std::string  latestRun)
{
	this->latestRun = latestRun;
}

std::string
PipelineImpl::getName()
{
	return name;
}

void
PipelineImpl::setName(std::string  name)
{
	this->name = name;
}

std::string
PipelineImpl::getOrganization()
{
	return organization;
}

void
PipelineImpl::setOrganization(std::string  organization)
{
	this->organization = organization;
}

int
PipelineImpl::getWeatherScore()
{
	return weatherScore;
}

void
PipelineImpl::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

PipelineImpllinks
PipelineImpl::getLinks()
{
	return _links;
}

void
PipelineImpl::setLinks(PipelineImpllinks  _links)
{
	this->_links = _links;
}



