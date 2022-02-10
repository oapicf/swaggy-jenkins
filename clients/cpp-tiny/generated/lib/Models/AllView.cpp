

#include "AllView.h"

using namespace Tiny;

AllView::AllView()
{
	_class = std::string();
	name = std::string();
	url = std::string();
}

AllView::AllView(std::string jsonString)
{
	this->fromJson(jsonString);
}

AllView::~AllView()
{

}

void
AllView::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *urlKey = "url";

    if(object.has_key(urlKey))
    {
        bourne::json value = object[urlKey];



        jsonToValue(&url, value, "std::string");


    }


}

bourne::json
AllView::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["name"] = getName();






    object["url"] = getUrl();



    return object;

}

std::string
AllView::getClass()
{
	return _class;
}

void
AllView::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
AllView::getName()
{
	return name;
}

void
AllView::setName(std::string  name)
{
	this->name = name;
}

std::string
AllView::getUrl()
{
	return url;
}

void
AllView::setUrl(std::string  url)
{
	this->url = url;
}



