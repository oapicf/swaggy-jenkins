

#include "PipelinelatestRunartifacts.h"

using namespace Tiny;

PipelinelatestRunartifacts::PipelinelatestRunartifacts()
{
	name = std::string();
	size = int(0);
	url = std::string();
	_class = std::string();
}

PipelinelatestRunartifacts::PipelinelatestRunartifacts(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelinelatestRunartifacts::~PipelinelatestRunartifacts()
{

}

void
PipelinelatestRunartifacts::fromJson(std::string jsonObj)
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
PipelinelatestRunartifacts::toJson()
{
    bourne::json object = bourne::json::object();





    object["name"] = getName();






    object["size"] = getSize();






    object["url"] = getUrl();






    object["_class"] = getClass();



    return object;

}

std::string
PipelinelatestRunartifacts::getName()
{
	return name;
}

void
PipelinelatestRunartifacts::setName(std::string  name)
{
	this->name = name;
}

int
PipelinelatestRunartifacts::getSize()
{
	return size;
}

void
PipelinelatestRunartifacts::setSize(int  size)
{
	this->size = size;
}

std::string
PipelinelatestRunartifacts::getUrl()
{
	return url;
}

void
PipelinelatestRunartifacts::setUrl(std::string  url)
{
	this->url = url;
}

std::string
PipelinelatestRunartifacts::getClass()
{
	return _class;
}

void
PipelinelatestRunartifacts::setClass(std::string  _class)
{
	this->_class = _class;
}



