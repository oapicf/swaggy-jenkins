

#include "GithubRespositoryContainerlinks.h"

using namespace Tiny;

GithubRespositoryContainerlinks::GithubRespositoryContainerlinks()
{
	self = Link();
	_class = std::string();
}

GithubRespositoryContainerlinks::GithubRespositoryContainerlinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubRespositoryContainerlinks::~GithubRespositoryContainerlinks()
{

}

void
GithubRespositoryContainerlinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

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
GithubRespositoryContainerlinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();





    object["_class"] = getClass();



    return object;

}

Link
GithubRespositoryContainerlinks::getSelf()
{
	return self;
}

void
GithubRespositoryContainerlinks::setSelf(Link  self)
{
	this->self = self;
}

std::string
GithubRespositoryContainerlinks::getClass()
{
	return _class;
}

void
GithubRespositoryContainerlinks::setClass(std::string  _class)
{
	this->_class = _class;
}



