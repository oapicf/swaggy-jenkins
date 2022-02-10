

#include "GithubContent.h"

using namespace Tiny;

GithubContent::GithubContent()
{
	name = std::string();
	sha = std::string();
	_class = std::string();
	repo = std::string();
	size = int(0);
	owner = std::string();
	path = std::string();
	base64Data = std::string();
}

GithubContent::GithubContent(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubContent::~GithubContent()
{

}

void
GithubContent::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *shaKey = "sha";

    if(object.has_key(shaKey))
    {
        bourne::json value = object[shaKey];



        jsonToValue(&sha, value, "std::string");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *repoKey = "repo";

    if(object.has_key(repoKey))
    {
        bourne::json value = object[repoKey];



        jsonToValue(&repo, value, "std::string");


    }

    const char *sizeKey = "size";

    if(object.has_key(sizeKey))
    {
        bourne::json value = object[sizeKey];



        jsonToValue(&size, value, "int");


    }

    const char *ownerKey = "owner";

    if(object.has_key(ownerKey))
    {
        bourne::json value = object[ownerKey];



        jsonToValue(&owner, value, "std::string");


    }

    const char *pathKey = "path";

    if(object.has_key(pathKey))
    {
        bourne::json value = object[pathKey];



        jsonToValue(&path, value, "std::string");


    }

    const char *base64DataKey = "base64Data";

    if(object.has_key(base64DataKey))
    {
        bourne::json value = object[base64DataKey];



        jsonToValue(&base64Data, value, "std::string");


    }


}

bourne::json
GithubContent::toJson()
{
    bourne::json object = bourne::json::object();





    object["name"] = getName();






    object["sha"] = getSha();






    object["_class"] = getClass();






    object["repo"] = getRepo();






    object["size"] = getSize();






    object["owner"] = getOwner();






    object["path"] = getPath();






    object["base64Data"] = getBase64Data();



    return object;

}

std::string
GithubContent::getName()
{
	return name;
}

void
GithubContent::setName(std::string  name)
{
	this->name = name;
}

std::string
GithubContent::getSha()
{
	return sha;
}

void
GithubContent::setSha(std::string  sha)
{
	this->sha = sha;
}

std::string
GithubContent::getClass()
{
	return _class;
}

void
GithubContent::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
GithubContent::getRepo()
{
	return repo;
}

void
GithubContent::setRepo(std::string  repo)
{
	this->repo = repo;
}

int
GithubContent::getSize()
{
	return size;
}

void
GithubContent::setSize(int  size)
{
	this->size = size;
}

std::string
GithubContent::getOwner()
{
	return owner;
}

void
GithubContent::setOwner(std::string  owner)
{
	this->owner = owner;
}

std::string
GithubContent::getPath()
{
	return path;
}

void
GithubContent::setPath(std::string  path)
{
	this->path = path;
}

std::string
GithubContent::getBase64Data()
{
	return base64Data;
}

void
GithubContent::setBase64Data(std::string  base64Data)
{
	this->base64Data = base64Data;
}



