

#include "ClockDifference.h"

using namespace Tiny;

ClockDifference::ClockDifference()
{
	_class = std::string();
	diff = int(0);
}

ClockDifference::ClockDifference(std::string jsonString)
{
	this->fromJson(jsonString);
}

ClockDifference::~ClockDifference()
{

}

void
ClockDifference::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *diffKey = "diff";

    if(object.has_key(diffKey))
    {
        bourne::json value = object[diffKey];



        jsonToValue(&diff, value, "int");


    }


}

bourne::json
ClockDifference::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["diff"] = getDiff();



    return object;

}

std::string
ClockDifference::getClass()
{
	return _class;
}

void
ClockDifference::setClass(std::string  _class)
{
	this->_class = _class;
}

int
ClockDifference::getDiff()
{
	return diff;
}

void
ClockDifference::setDiff(int  diff)
{
	this->diff = diff;
}



