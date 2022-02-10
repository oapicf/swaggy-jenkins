

#include "PipelineFolderImpl.h"

using namespace Tiny;

PipelineFolderImpl::PipelineFolderImpl()
{
	_class = std::string();
	displayName = std::string();
	fullName = std::string();
	name = std::string();
	organization = std::string();
	numberOfFolders = int(0);
	numberOfPipelines = int(0);
}

PipelineFolderImpl::PipelineFolderImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineFolderImpl::~PipelineFolderImpl()
{

}

void
PipelineFolderImpl::fromJson(std::string jsonObj)
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

    const char *numberOfFoldersKey = "numberOfFolders";

    if(object.has_key(numberOfFoldersKey))
    {
        bourne::json value = object[numberOfFoldersKey];



        jsonToValue(&numberOfFolders, value, "int");


    }

    const char *numberOfPipelinesKey = "numberOfPipelines";

    if(object.has_key(numberOfPipelinesKey))
    {
        bourne::json value = object[numberOfPipelinesKey];



        jsonToValue(&numberOfPipelines, value, "int");


    }


}

bourne::json
PipelineFolderImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["displayName"] = getDisplayName();






    object["fullName"] = getFullName();






    object["name"] = getName();






    object["organization"] = getOrganization();






    object["numberOfFolders"] = getNumberOfFolders();






    object["numberOfPipelines"] = getNumberOfPipelines();



    return object;

}

std::string
PipelineFolderImpl::getClass()
{
	return _class;
}

void
PipelineFolderImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
PipelineFolderImpl::getDisplayName()
{
	return displayName;
}

void
PipelineFolderImpl::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::string
PipelineFolderImpl::getFullName()
{
	return fullName;
}

void
PipelineFolderImpl::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
PipelineFolderImpl::getName()
{
	return name;
}

void
PipelineFolderImpl::setName(std::string  name)
{
	this->name = name;
}

std::string
PipelineFolderImpl::getOrganization()
{
	return organization;
}

void
PipelineFolderImpl::setOrganization(std::string  organization)
{
	this->organization = organization;
}

int
PipelineFolderImpl::getNumberOfFolders()
{
	return numberOfFolders;
}

void
PipelineFolderImpl::setNumberOfFolders(int  numberOfFolders)
{
	this->numberOfFolders = numberOfFolders;
}

int
PipelineFolderImpl::getNumberOfPipelines()
{
	return numberOfPipelines;
}

void
PipelineFolderImpl::setNumberOfPipelines(int  numberOfPipelines)
{
	this->numberOfPipelines = numberOfPipelines;
}



