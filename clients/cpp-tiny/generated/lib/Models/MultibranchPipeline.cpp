

#include "MultibranchPipeline.h"

using namespace Tiny;

MultibranchPipeline::MultibranchPipeline()
{
	displayName = std::string();
	estimatedDurationInMillis = int(0);
	latestRun = std::string();
	name = std::string();
	organization = std::string();
	weatherScore = int(0);
	branchNames = std::list<std::string>();
	numberOfFailingBranches = int(0);
	numberOfFailingPullRequests = int(0);
	numberOfSuccessfulBranches = int(0);
	numberOfSuccessfulPullRequests = int(0);
	totalNumberOfBranches = int(0);
	totalNumberOfPullRequests = int(0);
	_class = std::string();
}

MultibranchPipeline::MultibranchPipeline(std::string jsonString)
{
	this->fromJson(jsonString);
}

MultibranchPipeline::~MultibranchPipeline()
{

}

void
MultibranchPipeline::fromJson(std::string jsonObj)
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

    const char *branchNamesKey = "branchNames";

    if(object.has_key(branchNamesKey))
    {
        bourne::json value = object[branchNamesKey];


        std::list<std::string> branchNames_list;
        std::string element;
        for(auto& var : value.array_range())
        {

            jsonToValue(&element, var, "std::string");


            branchNames_list.push_back(element);
        }
        branchNames = branchNames_list;


    }

    const char *numberOfFailingBranchesKey = "numberOfFailingBranches";

    if(object.has_key(numberOfFailingBranchesKey))
    {
        bourne::json value = object[numberOfFailingBranchesKey];



        jsonToValue(&numberOfFailingBranches, value, "int");


    }

    const char *numberOfFailingPullRequestsKey = "numberOfFailingPullRequests";

    if(object.has_key(numberOfFailingPullRequestsKey))
    {
        bourne::json value = object[numberOfFailingPullRequestsKey];



        jsonToValue(&numberOfFailingPullRequests, value, "int");


    }

    const char *numberOfSuccessfulBranchesKey = "numberOfSuccessfulBranches";

    if(object.has_key(numberOfSuccessfulBranchesKey))
    {
        bourne::json value = object[numberOfSuccessfulBranchesKey];



        jsonToValue(&numberOfSuccessfulBranches, value, "int");


    }

    const char *numberOfSuccessfulPullRequestsKey = "numberOfSuccessfulPullRequests";

    if(object.has_key(numberOfSuccessfulPullRequestsKey))
    {
        bourne::json value = object[numberOfSuccessfulPullRequestsKey];



        jsonToValue(&numberOfSuccessfulPullRequests, value, "int");


    }

    const char *totalNumberOfBranchesKey = "totalNumberOfBranches";

    if(object.has_key(totalNumberOfBranchesKey))
    {
        bourne::json value = object[totalNumberOfBranchesKey];



        jsonToValue(&totalNumberOfBranches, value, "int");


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
MultibranchPipeline::toJson()
{
    bourne::json object = bourne::json::object();





    object["displayName"] = getDisplayName();






    object["estimatedDurationInMillis"] = getEstimatedDurationInMillis();






    object["latestRun"] = getLatestRun();






    object["name"] = getName();






    object["organization"] = getOrganization();






    object["weatherScore"] = getWeatherScore();





    std::list<std::string> branchNames_list = getBranchNames();
    bourne::json branchNames_arr = bourne::json::array();

    for(auto& var : branchNames_list)
    {
        branchNames_arr.append(var);
    }
    object["branchNames"] = branchNames_arr;









    object["numberOfFailingBranches"] = getNumberOfFailingBranches();






    object["numberOfFailingPullRequests"] = getNumberOfFailingPullRequests();






    object["numberOfSuccessfulBranches"] = getNumberOfSuccessfulBranches();






    object["numberOfSuccessfulPullRequests"] = getNumberOfSuccessfulPullRequests();






    object["totalNumberOfBranches"] = getTotalNumberOfBranches();






    object["totalNumberOfPullRequests"] = getTotalNumberOfPullRequests();






    object["_class"] = getClass();



    return object;

}

std::string
MultibranchPipeline::getDisplayName()
{
	return displayName;
}

void
MultibranchPipeline::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
MultibranchPipeline::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
MultibranchPipeline::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
MultibranchPipeline::getLatestRun()
{
	return latestRun;
}

void
MultibranchPipeline::setLatestRun(std::string  latestRun)
{
	this->latestRun = latestRun;
}

std::string
MultibranchPipeline::getName()
{
	return name;
}

void
MultibranchPipeline::setName(std::string  name)
{
	this->name = name;
}

std::string
MultibranchPipeline::getOrganization()
{
	return organization;
}

void
MultibranchPipeline::setOrganization(std::string  organization)
{
	this->organization = organization;
}

int
MultibranchPipeline::getWeatherScore()
{
	return weatherScore;
}

void
MultibranchPipeline::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

std::list<std::string>
MultibranchPipeline::getBranchNames()
{
	return branchNames;
}

void
MultibranchPipeline::setBranchNames(std::list <std::string> branchNames)
{
	this->branchNames = branchNames;
}

int
MultibranchPipeline::getNumberOfFailingBranches()
{
	return numberOfFailingBranches;
}

void
MultibranchPipeline::setNumberOfFailingBranches(int  numberOfFailingBranches)
{
	this->numberOfFailingBranches = numberOfFailingBranches;
}

int
MultibranchPipeline::getNumberOfFailingPullRequests()
{
	return numberOfFailingPullRequests;
}

void
MultibranchPipeline::setNumberOfFailingPullRequests(int  numberOfFailingPullRequests)
{
	this->numberOfFailingPullRequests = numberOfFailingPullRequests;
}

int
MultibranchPipeline::getNumberOfSuccessfulBranches()
{
	return numberOfSuccessfulBranches;
}

void
MultibranchPipeline::setNumberOfSuccessfulBranches(int  numberOfSuccessfulBranches)
{
	this->numberOfSuccessfulBranches = numberOfSuccessfulBranches;
}

int
MultibranchPipeline::getNumberOfSuccessfulPullRequests()
{
	return numberOfSuccessfulPullRequests;
}

void
MultibranchPipeline::setNumberOfSuccessfulPullRequests(int  numberOfSuccessfulPullRequests)
{
	this->numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
}

int
MultibranchPipeline::getTotalNumberOfBranches()
{
	return totalNumberOfBranches;
}

void
MultibranchPipeline::setTotalNumberOfBranches(int  totalNumberOfBranches)
{
	this->totalNumberOfBranches = totalNumberOfBranches;
}

int
MultibranchPipeline::getTotalNumberOfPullRequests()
{
	return totalNumberOfPullRequests;
}

void
MultibranchPipeline::setTotalNumberOfPullRequests(int  totalNumberOfPullRequests)
{
	this->totalNumberOfPullRequests = totalNumberOfPullRequests;
}

std::string
MultibranchPipeline::getClass()
{
	return _class;
}

void
MultibranchPipeline::setClass(std::string  _class)
{
	this->_class = _class;
}



