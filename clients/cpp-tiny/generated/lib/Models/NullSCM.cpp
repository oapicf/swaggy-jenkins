

#include "NullSCM.h"

using namespace Tiny;

NullSCM::NullSCM()
{
	_class = std::string();
}

NullSCM::NullSCM(std::string jsonString)
{
	this->fromJson(jsonString);
}

NullSCM::~NullSCM()
{

}

void
NullSCM::fromJson(std::string jsonObj)
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
NullSCM::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();



    return object;

}

std::string
NullSCM::getClass()
{
	return _class;
}

void
NullSCM::setClass(std::string  _class)
{
	this->_class = _class;
}



