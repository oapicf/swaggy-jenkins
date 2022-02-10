

#include "User.h"

using namespace Tiny;

User::User()
{
	_class = std::string();
	id = std::string();
	fullName = std::string();
	email = std::string();
	name = std::string();
}

User::User(std::string jsonString)
{
	this->fromJson(jsonString);
}

User::~User()
{

}

void
User::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *fullNameKey = "fullName";

    if(object.has_key(fullNameKey))
    {
        bourne::json value = object[fullNameKey];



        jsonToValue(&fullName, value, "std::string");


    }

    const char *emailKey = "email";

    if(object.has_key(emailKey))
    {
        bourne::json value = object[emailKey];



        jsonToValue(&email, value, "std::string");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }


}

bourne::json
User::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["id"] = getId();






    object["fullName"] = getFullName();






    object["email"] = getEmail();






    object["name"] = getName();



    return object;

}

std::string
User::getClass()
{
	return _class;
}

void
User::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
User::getId()
{
	return id;
}

void
User::setId(std::string  id)
{
	this->id = id;
}

std::string
User::getFullName()
{
	return fullName;
}

void
User::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
User::getEmail()
{
	return email;
}

void
User::setEmail(std::string  email)
{
	this->email = email;
}

std::string
User::getName()
{
	return name;
}

void
User::setName(std::string  name)
{
	this->name = name;
}



