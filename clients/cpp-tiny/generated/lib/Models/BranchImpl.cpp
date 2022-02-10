

#include "BranchImpl.h"

using namespace Tiny;

BranchImpl::BranchImpl()
{
	_class = std::string();
	displayName = std::string();
	estimatedDurationInMillis = int(0);
	fullDisplayName = std::string();
	fullName = std::string();
	name = std::string();
	organization = std::string();
	parameters = std::list<StringParameterDefinition>();
	permissions = BranchImplpermissions();
	weatherScore = int(0);
	pullRequest = std::string();
	_links = BranchImpllinks();
	latestRun = PipelineRunImpl();
}

BranchImpl::BranchImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

BranchImpl::~BranchImpl()
{

}

void
BranchImpl::fromJson(std::string jsonObj)
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

    const char *fullDisplayNameKey = "fullDisplayName";

    if(object.has_key(fullDisplayNameKey))
    {
        bourne::json value = object[fullDisplayNameKey];



        jsonToValue(&fullDisplayName, value, "std::string");


    }

    const char *fullNameKey = "fullName";

    if(object.has_key(fullNameKey))
    {
        bourne::json value = object[fullNameKey];



        jsonToValue(&fullName, value, "std::string");


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

    const char *parametersKey = "parameters";

    if(object.has_key(parametersKey))
    {
        bourne::json value = object[parametersKey];


        std::list<StringParameterDefinition> parameters_list;
        StringParameterDefinition element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            parameters_list.push_back(element);
        }
        parameters = parameters_list;


    }

    const char *permissionsKey = "permissions";

    if(object.has_key(permissionsKey))
    {
        bourne::json value = object[permissionsKey];




        BranchImplpermissions* obj = &permissions;
		obj->fromJson(value.dump());

    }

    const char *weatherScoreKey = "weatherScore";

    if(object.has_key(weatherScoreKey))
    {
        bourne::json value = object[weatherScoreKey];



        jsonToValue(&weatherScore, value, "int");


    }

    const char *pullRequestKey = "pullRequest";

    if(object.has_key(pullRequestKey))
    {
        bourne::json value = object[pullRequestKey];



        jsonToValue(&pullRequest, value, "std::string");


    }

    const char *_linksKey = "_links";

    if(object.has_key(_linksKey))
    {
        bourne::json value = object[_linksKey];




        BranchImpllinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *latestRunKey = "latestRun";

    if(object.has_key(latestRunKey))
    {
        bourne::json value = object[latestRunKey];




        PipelineRunImpl* obj = &latestRun;
		obj->fromJson(value.dump());

    }


}

bourne::json
BranchImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["displayName"] = getDisplayName();






    object["estimatedDurationInMillis"] = getEstimatedDurationInMillis();






    object["fullDisplayName"] = getFullDisplayName();






    object["fullName"] = getFullName();






    object["name"] = getName();






    object["organization"] = getOrganization();





    std::list<StringParameterDefinition> parameters_list = getParameters();
    bourne::json parameters_arr = bourne::json::array();

    for(auto& var : parameters_list)
    {
        StringParameterDefinition obj = var;
        parameters_arr.append(obj.toJson());
    }
    object["parameters"] = parameters_arr;








	object["permissions"] = getPermissions().toJson();





    object["weatherScore"] = getWeatherScore();






    object["pullRequest"] = getPullRequest();







	object["_links"] = getLinks().toJson();






	object["latestRun"] = getLatestRun().toJson();


    return object;

}

std::string
BranchImpl::getClass()
{
	return _class;
}

void
BranchImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
BranchImpl::getDisplayName()
{
	return displayName;
}

void
BranchImpl::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
BranchImpl::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
BranchImpl::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
BranchImpl::getFullDisplayName()
{
	return fullDisplayName;
}

void
BranchImpl::setFullDisplayName(std::string  fullDisplayName)
{
	this->fullDisplayName = fullDisplayName;
}

std::string
BranchImpl::getFullName()
{
	return fullName;
}

void
BranchImpl::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
BranchImpl::getName()
{
	return name;
}

void
BranchImpl::setName(std::string  name)
{
	this->name = name;
}

std::string
BranchImpl::getOrganization()
{
	return organization;
}

void
BranchImpl::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::list<StringParameterDefinition>
BranchImpl::getParameters()
{
	return parameters;
}

void
BranchImpl::setParameters(std::list <StringParameterDefinition> parameters)
{
	this->parameters = parameters;
}

BranchImplpermissions
BranchImpl::getPermissions()
{
	return permissions;
}

void
BranchImpl::setPermissions(BranchImplpermissions  permissions)
{
	this->permissions = permissions;
}

int
BranchImpl::getWeatherScore()
{
	return weatherScore;
}

void
BranchImpl::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

std::string
BranchImpl::getPullRequest()
{
	return pullRequest;
}

void
BranchImpl::setPullRequest(std::string  pullRequest)
{
	this->pullRequest = pullRequest;
}

BranchImpllinks
BranchImpl::getLinks()
{
	return _links;
}

void
BranchImpl::setLinks(BranchImpllinks  _links)
{
	this->_links = _links;
}

PipelineRunImpl
BranchImpl::getLatestRun()
{
	return latestRun;
}

void
BranchImpl::setLatestRun(PipelineRunImpl  latestRun)
{
	this->latestRun = latestRun;
}



