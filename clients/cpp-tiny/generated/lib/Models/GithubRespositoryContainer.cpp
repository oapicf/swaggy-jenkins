

#include "GithubRespositoryContainer.h"

using namespace Tiny;

GithubRespositoryContainer::GithubRespositoryContainer()
{
	_class = std::string();
	_links = GithubRespositoryContainerlinks();
	repositories = GithubRepositories();
}

GithubRespositoryContainer::GithubRespositoryContainer(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubRespositoryContainer::~GithubRespositoryContainer()
{

}

void
GithubRespositoryContainer::fromJson(std::string jsonObj)
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




        GithubRespositoryContainerlinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *repositoriesKey = "repositories";

    if(object.has_key(repositoriesKey))
    {
        bourne::json value = object[repositoriesKey];




        GithubRepositories* obj = &repositories;
		obj->fromJson(value.dump());

    }


}

bourne::json
GithubRespositoryContainer::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();






	object["repositories"] = getRepositories().toJson();


    return object;

}

std::string
GithubRespositoryContainer::getClass()
{
	return _class;
}

void
GithubRespositoryContainer::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubRespositoryContainerlinks
GithubRespositoryContainer::getLinks()
{
	return _links;
}

void
GithubRespositoryContainer::setLinks(GithubRespositoryContainerlinks  _links)
{
	this->_links = _links;
}

GithubRepositories
GithubRespositoryContainer::getRepositories()
{
	return repositories;
}

void
GithubRespositoryContainer::setRepositories(GithubRepositories  repositories)
{
	this->repositories = repositories;
}



