

#include "GithubOrganization.h"

using namespace Tiny;

GithubOrganization::GithubOrganization()
{
	_class = std::string();
	_links = GithubOrganizationlinks();
	jenkinsOrganizationPipeline = bool(false);
	name = std::string();
}

GithubOrganization::GithubOrganization(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubOrganization::~GithubOrganization()
{

}

void
GithubOrganization::fromJson(std::string jsonObj)
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




        GithubOrganizationlinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *jenkinsOrganizationPipelineKey = "jenkinsOrganizationPipeline";

    if(object.has_key(jenkinsOrganizationPipelineKey))
    {
        bourne::json value = object[jenkinsOrganizationPipelineKey];



        jsonToValue(&jenkinsOrganizationPipeline, value, "bool");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }


}

bourne::json
GithubOrganization::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();





    object["jenkinsOrganizationPipeline"] = isJenkinsOrganizationPipeline();






    object["name"] = getName();



    return object;

}

std::string
GithubOrganization::getClass()
{
	return _class;
}

void
GithubOrganization::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubOrganizationlinks
GithubOrganization::getLinks()
{
	return _links;
}

void
GithubOrganization::setLinks(GithubOrganizationlinks  _links)
{
	this->_links = _links;
}

bool
GithubOrganization::isJenkinsOrganizationPipeline()
{
	return jenkinsOrganizationPipeline;
}

void
GithubOrganization::setJenkinsOrganizationPipeline(bool  jenkinsOrganizationPipeline)
{
	this->jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
}

std::string
GithubOrganization::getName()
{
	return name;
}

void
GithubOrganization::setName(std::string  name)
{
	this->name = name;
}



