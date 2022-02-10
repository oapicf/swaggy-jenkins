

#include "DefaultCrumbIssuer.h"

using namespace Tiny;

DefaultCrumbIssuer::DefaultCrumbIssuer()
{
	_class = std::string();
	crumb = std::string();
	crumbRequestField = std::string();
}

DefaultCrumbIssuer::DefaultCrumbIssuer(std::string jsonString)
{
	this->fromJson(jsonString);
}

DefaultCrumbIssuer::~DefaultCrumbIssuer()
{

}

void
DefaultCrumbIssuer::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *crumbKey = "crumb";

    if(object.has_key(crumbKey))
    {
        bourne::json value = object[crumbKey];



        jsonToValue(&crumb, value, "std::string");


    }

    const char *crumbRequestFieldKey = "crumbRequestField";

    if(object.has_key(crumbRequestFieldKey))
    {
        bourne::json value = object[crumbRequestFieldKey];



        jsonToValue(&crumbRequestField, value, "std::string");


    }


}

bourne::json
DefaultCrumbIssuer::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["crumb"] = getCrumb();






    object["crumbRequestField"] = getCrumbRequestField();



    return object;

}

std::string
DefaultCrumbIssuer::getClass()
{
	return _class;
}

void
DefaultCrumbIssuer::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
DefaultCrumbIssuer::getCrumb()
{
	return crumb;
}

void
DefaultCrumbIssuer::setCrumb(std::string  crumb)
{
	this->crumb = crumb;
}

std::string
DefaultCrumbIssuer::getCrumbRequestField()
{
	return crumbRequestField;
}

void
DefaultCrumbIssuer::setCrumbRequestField(std::string  crumbRequestField)
{
	this->crumbRequestField = crumbRequestField;
}



