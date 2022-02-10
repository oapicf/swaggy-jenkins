

#include "GithubRepositorypermissions.h"

using namespace Tiny;

GithubRepositorypermissions::GithubRepositorypermissions()
{
	admin = bool(false);
	push = bool(false);
	pull = bool(false);
	_class = std::string();
}

GithubRepositorypermissions::GithubRepositorypermissions(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubRepositorypermissions::~GithubRepositorypermissions()
{

}

void
GithubRepositorypermissions::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *adminKey = "admin";

    if(object.has_key(adminKey))
    {
        bourne::json value = object[adminKey];



        jsonToValue(&admin, value, "bool");


    }

    const char *pushKey = "push";

    if(object.has_key(pushKey))
    {
        bourne::json value = object[pushKey];



        jsonToValue(&push, value, "bool");


    }

    const char *pullKey = "pull";

    if(object.has_key(pullKey))
    {
        bourne::json value = object[pullKey];



        jsonToValue(&pull, value, "bool");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
GithubRepositorypermissions::toJson()
{
    bourne::json object = bourne::json::object();





    object["admin"] = isAdmin();






    object["push"] = isPush();






    object["pull"] = isPull();






    object["_class"] = getClass();



    return object;

}

bool
GithubRepositorypermissions::isAdmin()
{
	return admin;
}

void
GithubRepositorypermissions::setAdmin(bool  admin)
{
	this->admin = admin;
}

bool
GithubRepositorypermissions::isPush()
{
	return push;
}

void
GithubRepositorypermissions::setPush(bool  push)
{
	this->push = push;
}

bool
GithubRepositorypermissions::isPull()
{
	return pull;
}

void
GithubRepositorypermissions::setPull(bool  pull)
{
	this->pull = pull;
}

std::string
GithubRepositorypermissions::getClass()
{
	return _class;
}

void
GithubRepositorypermissions::setClass(std::string  _class)
{
	this->_class = _class;
}



