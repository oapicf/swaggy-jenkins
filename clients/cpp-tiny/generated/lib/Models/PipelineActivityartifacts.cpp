

#include "PipelineActivityartifacts.h"

using namespace Tiny;

PipelineActivityartifacts::PipelineActivityartifacts()
{
	name = std::string();
	size = int(0);
	url = std::string();
	_class = std::string();
}

PipelineActivityartifacts::PipelineActivityartifacts(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineActivityartifacts::~PipelineActivityartifacts()
{

}

void
PipelineActivityartifacts::fromJson(std::string jsonObj)
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
PipelineActivityartifacts::toJson()
{
    bourne::json object = bourne::json::object();





    object["name"] = getName();






    object["size"] = getSize();






    object["url"] = getUrl();






    object["_class"] = getClass();



    return object;

}

std::string
PipelineActivityartifacts::getName()
{
	return name;
}

void
PipelineActivityartifacts::setName(std::string  name)
{
	this->name = name;
}

int
PipelineActivityartifacts::getSize()
{
	return size;
}

void
PipelineActivityartifacts::setSize(int  size)
{
	this->size = size;
}

std::string
PipelineActivityartifacts::getUrl()
{
	return url;
}

void
PipelineActivityartifacts::setUrl(std::string  url)
{
	this->url = url;
}

std::string
PipelineActivityartifacts::getClass()
{
	return _class;
}

void
PipelineActivityartifacts::setClass(std::string  _class)
{
	this->_class = _class;
}



