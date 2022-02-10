

#include "HudsonassignedLabels.h"

using namespace Tiny;

HudsonassignedLabels::HudsonassignedLabels()
{
	_class = std::string();
}

HudsonassignedLabels::HudsonassignedLabels(std::string jsonString)
{
	this->fromJson(jsonString);
}

HudsonassignedLabels::~HudsonassignedLabels()
{

}

void
HudsonassignedLabels::fromJson(std::string jsonObj)
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
HudsonassignedLabels::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();



    return object;

}

std::string
HudsonassignedLabels::getClass()
{
	return _class;
}

void
HudsonassignedLabels::setClass(std::string  _class)
{
	this->_class = _class;
}



