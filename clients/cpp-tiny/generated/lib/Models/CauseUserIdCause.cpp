

#include "CauseUserIdCause.h"

using namespace Tiny;

CauseUserIdCause::CauseUserIdCause()
{
	_class = std::string();
	shortDescription = std::string();
	userId = std::string();
	userName = std::string();
}

CauseUserIdCause::CauseUserIdCause(std::string jsonString)
{
	this->fromJson(jsonString);
}

CauseUserIdCause::~CauseUserIdCause()
{

}

void
CauseUserIdCause::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *shortDescriptionKey = "shortDescription";

    if(object.has_key(shortDescriptionKey))
    {
        bourne::json value = object[shortDescriptionKey];



        jsonToValue(&shortDescription, value, "std::string");


    }

    const char *userIdKey = "userId";

    if(object.has_key(userIdKey))
    {
        bourne::json value = object[userIdKey];



        jsonToValue(&userId, value, "std::string");


    }

    const char *userNameKey = "userName";

    if(object.has_key(userNameKey))
    {
        bourne::json value = object[userNameKey];



        jsonToValue(&userName, value, "std::string");


    }


}

bourne::json
CauseUserIdCause::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["shortDescription"] = getShortDescription();






    object["userId"] = getUserId();






    object["userName"] = getUserName();



    return object;

}

std::string
CauseUserIdCause::getClass()
{
	return _class;
}

void
CauseUserIdCause::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
CauseUserIdCause::getShortDescription()
{
	return shortDescription;
}

void
CauseUserIdCause::setShortDescription(std::string  shortDescription)
{
	this->shortDescription = shortDescription;
}

std::string
CauseUserIdCause::getUserId()
{
	return userId;
}

void
CauseUserIdCause::setUserId(std::string  userId)
{
	this->userId = userId;
}

std::string
CauseUserIdCause::getUserName()
{
	return userName;
}

void
CauseUserIdCause::setUserName(std::string  userName)
{
	this->userName = userName;
}



