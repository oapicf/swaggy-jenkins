

#include "GithubOrganizationlinks.h"

using namespace Tiny;

GithubOrganizationlinks::GithubOrganizationlinks()
{
	repositories = Link();
	self = Link();
	_class = std::string();
}

GithubOrganizationlinks::GithubOrganizationlinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubOrganizationlinks::~GithubOrganizationlinks()
{

}

void
GithubOrganizationlinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *repositoriesKey = "repositories";

    if(object.has_key(repositoriesKey))
    {
        bourne::json value = object[repositoriesKey];




        Link* obj = &repositories;
		obj->fromJson(value.dump());

    }

    const char *selfKey = "self";

    if(object.has_key(selfKey))
    {
        bourne::json value = object[selfKey];




        Link* obj = &self;
		obj->fromJson(value.dump());

    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
GithubOrganizationlinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["repositories"] = getRepositories().toJson();






	object["self"] = getSelf().toJson();





    object["_class"] = getClass();



    return object;

}

Link
GithubOrganizationlinks::getRepositories()
{
	return repositories;
}

void
GithubOrganizationlinks::setRepositories(Link  repositories)
{
	this->repositories = repositories;
}

Link
GithubOrganizationlinks::getSelf()
{
	return self;
}

void
GithubOrganizationlinks::setSelf(Link  self)
{
	this->self = self;
}

std::string
GithubOrganizationlinks::getClass()
{
	return _class;
}

void
GithubOrganizationlinks::setClass(std::string  _class)
{
	this->_class = _class;
}



