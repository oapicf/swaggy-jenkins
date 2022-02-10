

#include "GithubScmlinks.h"

using namespace Tiny;

GithubScmlinks::GithubScmlinks()
{
	self = Link();
	_class = std::string();
}

GithubScmlinks::GithubScmlinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubScmlinks::~GithubScmlinks()
{

}

void
GithubScmlinks::fromJson(std::string jsonObj)
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
GithubScmlinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();





    object["_class"] = getClass();



    return object;

}

Link
GithubScmlinks::getSelf()
{
	return self;
}

void
GithubScmlinks::setSelf(Link  self)
{
	this->self = self;
}

std::string
GithubScmlinks::getClass()
{
	return _class;
}

void
GithubScmlinks::setClass(std::string  _class)
{
	this->_class = _class;
}



