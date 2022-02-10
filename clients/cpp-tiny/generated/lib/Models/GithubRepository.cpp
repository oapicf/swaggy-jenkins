

#include "GithubRepository.h"

using namespace Tiny;

GithubRepository::GithubRepository()
{
	_class = std::string();
	_links = GithubRepositorylinks();
	defaultBranch = std::string();
	description = std::string();
	name = std::string();
	permissions = GithubRepositorypermissions();
	r_private = bool(false);
	fullName = std::string();
}

GithubRepository::GithubRepository(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubRepository::~GithubRepository()
{

}

void
GithubRepository::fromJson(std::string jsonObj)
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




        GithubRepositorylinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *defaultBranchKey = "defaultBranch";

    if(object.has_key(defaultBranchKey))
    {
        bourne::json value = object[defaultBranchKey];



        jsonToValue(&defaultBranch, value, "std::string");


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

    const char *permissionsKey = "permissions";

    if(object.has_key(permissionsKey))
    {
        bourne::json value = object[permissionsKey];




        GithubRepositorypermissions* obj = &permissions;
		obj->fromJson(value.dump());

    }

    const char *r_privateKey = "private";

    if(object.has_key(r_privateKey))
    {
        bourne::json value = object[r_privateKey];



        jsonToValue(&r_private, value, "bool");


    }

    const char *fullNameKey = "fullName";

    if(object.has_key(fullNameKey))
    {
        bourne::json value = object[fullNameKey];



        jsonToValue(&fullName, value, "std::string");


    }


}

bourne::json
GithubRepository::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();





    object["defaultBranch"] = getDefaultBranch();






    object["description"] = getDescription();






    object["name"] = getName();







	object["permissions"] = getPermissions().toJson();





    object["r_private"] = isRPrivate();






    object["fullName"] = getFullName();



    return object;

}

std::string
GithubRepository::getClass()
{
	return _class;
}

void
GithubRepository::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubRepositorylinks
GithubRepository::getLinks()
{
	return _links;
}

void
GithubRepository::setLinks(GithubRepositorylinks  _links)
{
	this->_links = _links;
}

std::string
GithubRepository::getDefaultBranch()
{
	return defaultBranch;
}

void
GithubRepository::setDefaultBranch(std::string  defaultBranch)
{
	this->defaultBranch = defaultBranch;
}

std::string
GithubRepository::getDescription()
{
	return description;
}

void
GithubRepository::setDescription(std::string  description)
{
	this->description = description;
}

std::string
GithubRepository::getName()
{
	return name;
}

void
GithubRepository::setName(std::string  name)
{
	this->name = name;
}

GithubRepositorypermissions
GithubRepository::getPermissions()
{
	return permissions;
}

void
GithubRepository::setPermissions(GithubRepositorypermissions  permissions)
{
	this->permissions = permissions;
}

bool
GithubRepository::isRPrivate()
{
	return r_private;
}

void
GithubRepository::setRPrivate(bool  r_private)
{
	this->r_private = r_private;
}

std::string
GithubRepository::getFullName()
{
	return fullName;
}

void
GithubRepository::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}



