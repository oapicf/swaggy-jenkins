

#include "FreeStyleProjectactions.h"

using namespace Tiny;

FreeStyleProjectactions::FreeStyleProjectactions()
{
	_class = std::string();
}

FreeStyleProjectactions::FreeStyleProjectactions(std::string jsonString)
{
	this->fromJson(jsonString);
}

FreeStyleProjectactions::~FreeStyleProjectactions()
{

}

void
FreeStyleProjectactions::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
FreeStyleProjectactions::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();



    return object;

}

std::string
FreeStyleProjectactions::getClass()
{
	return _class;
}

void
FreeStyleProjectactions::setClass(std::string  _class)
{
	this->_class = _class;
}



