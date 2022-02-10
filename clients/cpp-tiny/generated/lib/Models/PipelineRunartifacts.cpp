

#include "PipelineRunartifacts.h"

using namespace Tiny;

PipelineRunartifacts::PipelineRunartifacts()
{
	name = std::string();
	size = int(0);
	url = std::string();
	_class = std::string();
}

PipelineRunartifacts::PipelineRunartifacts(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineRunartifacts::~PipelineRunartifacts()
{

}

void
PipelineRunartifacts::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *sizeKey = "size";

    if(object.has_key(sizeKey))
    {
        bourne::json value = object[sizeKey];



        jsonToValue(&size, value, "int");


    }

    const char *urlKey = "url";

    if(object.has_key(urlKey))
    {
        bourne::json value = object[urlKey];



        jsonToValue(&url, value, "std::string");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelineRunartifacts::toJson()
{
    bourne::json object = bourne::json::object();





    object["name"] = getName();






    object["size"] = getSize();






    object["url"] = getUrl();






    object["_class"] = getClass();



    return object;

}

std::string
PipelineRunartifacts::getName()
{
	return name;
}

void
PipelineRunartifacts::setName(std::string  name)
{
	this->name = name;
}

int
PipelineRunartifacts::getSize()
{
	return size;
}

void
PipelineRunartifacts::setSize(int  size)
{
	this->size = size;
}

std::string
PipelineRunartifacts::getUrl()
{
	return url;
}

void
PipelineRunartifacts::setUrl(std::string  url)
{
	this->url = url;
}

std::string
PipelineRunartifacts::getClass()
{
	return _class;
}

void
PipelineRunartifacts::setClass(std::string  _class)
{
	this->_class = _class;
}



