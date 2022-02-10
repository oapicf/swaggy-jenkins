

#include "FreeStyleProjecthealthReport.h"

using namespace Tiny;

FreeStyleProjecthealthReport::FreeStyleProjecthealthReport()
{
	description = std::string();
	iconClassName = std::string();
	iconUrl = std::string();
	score = int(0);
	_class = std::string();
}

FreeStyleProjecthealthReport::FreeStyleProjecthealthReport(std::string jsonString)
{
	this->fromJson(jsonString);
}

FreeStyleProjecthealthReport::~FreeStyleProjecthealthReport()
{

}

void
FreeStyleProjecthealthReport::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *iconClassNameKey = "iconClassName";

    if(object.has_key(iconClassNameKey))
    {
        bourne::json value = object[iconClassNameKey];



        jsonToValue(&iconClassName, value, "std::string");


    }

    const char *iconUrlKey = "iconUrl";

    if(object.has_key(iconUrlKey))
    {
        bourne::json value = object[iconUrlKey];



        jsonToValue(&iconUrl, value, "std::string");


    }

    const char *scoreKey = "score";

    if(object.has_key(scoreKey))
    {
        bourne::json value = object[scoreKey];



        jsonToValue(&score, value, "int");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
FreeStyleProjecthealthReport::toJson()
{
    bourne::json object = bourne::json::object();





    object["description"] = getDescription();






    object["iconClassName"] = getIconClassName();






    object["iconUrl"] = getIconUrl();






    object["score"] = getScore();






    object["_class"] = getClass();



    return object;

}

std::string
FreeStyleProjecthealthReport::getDescription()
{
	return description;
}

void
FreeStyleProjecthealthReport::setDescription(std::string  description)
{
	this->description = description;
}

std::string
FreeStyleProjecthealthReport::getIconClassName()
{
	return iconClassName;
}

void
FreeStyleProjecthealthReport::setIconClassName(std::string  iconClassName)
{
	this->iconClassName = iconClassName;
}

std::string
FreeStyleProjecthealthReport::getIconUrl()
{
	return iconUrl;
}

void
FreeStyleProjecthealthReport::setIconUrl(std::string  iconUrl)
{
	this->iconUrl = iconUrl;
}

int
FreeStyleProjecthealthReport::getScore()
{
	return score;
}

void
FreeStyleProjecthealthReport::setScore(int  score)
{
	this->score = score;
}

std::string
FreeStyleProjecthealthReport::getClass()
{
	return _class;
}

void
FreeStyleProjecthealthReport::setClass(std::string  _class)
{
	this->_class = _class;
}



