

#include "Label1.h"

using namespace Tiny;

Label1::Label1()
{
	_class = std::string();
}

Label1::Label1(std::string jsonString)
{
	this->fromJson(jsonString);
}

Label1::~Label1()
{

}

void
Label1::fromJson(std::string jsonObj)
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
Label1::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();



    return object;

}

std::string
Label1::getClass()
{
	return _class;
}

void
Label1::setClass(std::string  _class)
{
	this->_class = _class;
}



