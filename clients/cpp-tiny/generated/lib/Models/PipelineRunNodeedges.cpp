

#include "PipelineRunNodeedges.h"

using namespace Tiny;

PipelineRunNodeedges::PipelineRunNodeedges()
{
	id = std::string();
	_class = std::string();
}

PipelineRunNodeedges::PipelineRunNodeedges(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineRunNodeedges::~PipelineRunNodeedges()
{

}

void
PipelineRunNodeedges::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelineRunNodeedges::toJson()
{
    bourne::json object = bourne::json::object();





    object["id"] = getId();






    object["_class"] = getClass();



    return object;

}

std::string
PipelineRunNodeedges::getId()
{
	return id;
}

void
PipelineRunNodeedges::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineRunNodeedges::getClass()
{
	return _class;
}

void
PipelineRunNodeedges::setClass(std::string  _class)
{
	this->_class = _class;
}



