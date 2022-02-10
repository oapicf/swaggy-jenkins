

#include "Link.h"

using namespace Tiny;

Link::Link()
{
	_class = std::string();
	href = std::string();
}

Link::Link(std::string jsonString)
{
	this->fromJson(jsonString);
}

Link::~Link()
{

}

void
Link::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *hrefKey = "href";

    if(object.has_key(hrefKey))
    {
        bourne::json value = object[hrefKey];



        jsonToValue(&href, value, "std::string");


    }


}

bourne::json
Link::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["href"] = getHref();



    return object;

}

std::string
Link::getClass()
{
	return _class;
}

void
Link::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
Link::getHref()
{
	return href;
}

void
Link::setHref(std::string  href)
{
	this->href = href;
}



