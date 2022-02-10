

#include "UnlabeledLoadStatistics.h"

using namespace Tiny;

UnlabeledLoadStatistics::UnlabeledLoadStatistics()
{
	_class = std::string();
}

UnlabeledLoadStatistics::UnlabeledLoadStatistics(std::string jsonString)
{
	this->fromJson(jsonString);
}

UnlabeledLoadStatistics::~UnlabeledLoadStatistics()
{

}

void
UnlabeledLoadStatistics::fromJson(std::string jsonObj)
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
UnlabeledLoadStatistics::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();



    return object;

}

std::string
UnlabeledLoadStatistics::getClass()
{
	return _class;
}

void
UnlabeledLoadStatistics::setClass(std::string  _class)
{
	this->_class = _class;
}



