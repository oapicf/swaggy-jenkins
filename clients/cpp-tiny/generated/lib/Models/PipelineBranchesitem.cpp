

#include "PipelineBranchesitem.h"

using namespace Tiny;

PipelineBranchesitem::PipelineBranchesitem()
{
	displayName = std::string();
	estimatedDurationInMillis = int(0);
	name = std::string();
	weatherScore = int(0);
	latestRun = PipelineBranchesitemlatestRun();
	organization = std::string();
	pullRequest = PipelineBranchesitempullRequest();
	totalNumberOfPullRequests = int(0);
	_class = std::string();
}

PipelineBranchesitem::PipelineBranchesitem(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineBranchesitem::~PipelineBranchesitem()
{

}

void
PipelineBranchesitem::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

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

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *weatherScoreKey = "weatherScore";

    if(object.has_key(weatherScoreKey))
    {
        bourne::json value = object[weatherScoreKey];



        jsonToValue(&weatherScore, value, "int");


    }

    const char *latestRunKey = "latestRun";

    if(object.has_key(latestRunKey))
    {
        bourne::json value = object[latestRunKey];




        PipelineBranchesitemlatestRun* obj = &latestRun;
		obj->fromJson(value.dump());

    }

    const char *organizationKey = "organization";

    if(object.has_key(organizationKey))
    {
        bourne::json value = object[organizationKey];



        jsonToValue(&organization, value, "std::string");


    }

    const char *pullRequestKey = "pullRequest";

    if(object.has_key(pullRequestKey))
    {
        bourne::json value = object[pullRequestKey];




        PipelineBranchesitempullRequest* obj = &pullRequest;
		obj->fromJson(value.dump());

    }

    const char *totalNumberOfPullRequestsKey = "totalNumberOfPullRequests";

    if(object.has_key(totalNumberOfPullRequestsKey))
    {
        bourne::json value = object[totalNumberOfPullRequestsKey];



        jsonToValue(&totalNumberOfPullRequests, value, "int");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelineBranchesitem::toJson()
{
    bourne::json object = bourne::json::object();





    object["displayName"] = getDisplayName();






    object["estimatedDurationInMillis"] = getEstimatedDurationInMillis();






    object["name"] = getName();






    object["weatherScore"] = getWeatherScore();







	object["latestRun"] = getLatestRun().toJson();





    object["organization"] = getOrganization();







	object["pullRequest"] = getPullRequest().toJson();





    object["totalNumberOfPullRequests"] = getTotalNumberOfPullRequests();






    object["_class"] = getClass();



    return object;

}

std::string
PipelineBranchesitem::getDisplayName()
{
	return displayName;
}

void
PipelineBranchesitem::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
PipelineBranchesitem::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineBranchesitem::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineBranchesitem::getName()
{
	return name;
}

void
PipelineBranchesitem::setName(std::string  name)
{
	this->name = name;
}

int
PipelineBranchesitem::getWeatherScore()
{
	return weatherScore;
}

void
PipelineBranchesitem::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

PipelineBranchesitemlatestRun
PipelineBranchesitem::getLatestRun()
{
	return latestRun;
}

void
PipelineBranchesitem::setLatestRun(PipelineBranchesitemlatestRun  latestRun)
{
	this->latestRun = latestRun;
}

std::string
PipelineBranchesitem::getOrganization()
{
	return organization;
}

void
PipelineBranchesitem::setOrganization(std::string  organization)
{
	this->organization = organization;
}

PipelineBranchesitempullRequest
PipelineBranchesitem::getPullRequest()
{
	return pullRequest;
}

void
PipelineBranchesitem::setPullRequest(PipelineBranchesitempullRequest  pullRequest)
{
	this->pullRequest = pullRequest;
}

int
PipelineBranchesitem::getTotalNumberOfPullRequests()
{
	return totalNumberOfPullRequests;
}

void
PipelineBranchesitem::setTotalNumberOfPullRequests(int  totalNumberOfPullRequests)
{
	this->totalNumberOfPullRequests = totalNumberOfPullRequests;
}

std::string
PipelineBranchesitem::getClass()
{
	return _class;
}

void
PipelineBranchesitem::setClass(std::string  _class)
{
	this->_class = _class;
}



