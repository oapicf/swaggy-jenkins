

#include "GithubScm.h"

using namespace Tiny;

GithubScm::GithubScm()
{
	_class = std::string();
	_links = GithubScmlinks();
	credentialId = std::string();
	id = std::string();
	uri = std::string();
}

GithubScm::GithubScm(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubScm::~GithubScm()
{

}

void
GithubScm::fromJson(std::string jsonObj)
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




        GithubScmlinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *credentialIdKey = "credentialId";

    if(object.has_key(credentialIdKey))
    {
        bourne::json value = object[credentialIdKey];



        jsonToValue(&credentialId, value, "std::string");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *uriKey = "uri";

    if(object.has_key(uriKey))
    {
        bourne::json value = object[uriKey];



        jsonToValue(&uri, value, "std::string");


    }


}

bourne::json
GithubScm::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();





    object["credentialId"] = getCredentialId();






    object["id"] = getId();






    object["uri"] = getUri();



    return object;

}

std::string
GithubScm::getClass()
{
	return _class;
}

void
GithubScm::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubScmlinks
GithubScm::getLinks()
{
	return _links;
}

void
GithubScm::setLinks(GithubScmlinks  _links)
{
	this->_links = _links;
}

std::string
GithubScm::getCredentialId()
{
	return credentialId;
}

void
GithubScm::setCredentialId(std::string  credentialId)
{
	this->credentialId = credentialId;
}

std::string
GithubScm::getId()
{
	return id;
}

void
GithubScm::setId(std::string  id)
{
	this->id = id;
}

std::string
GithubScm::getUri()
{
	return uri;
}

void
GithubScm::setUri(std::string  uri)
{
	this->uri = uri;
}



