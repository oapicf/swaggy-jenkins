

#include "EmptyChangeLogSet.h"

using namespace Tiny;

EmptyChangeLogSet::EmptyChangeLogSet()
{
	_class = std::string();
	kind = std::string();
}

EmptyChangeLogSet::EmptyChangeLogSet(std::string jsonString)
{
	this->fromJson(jsonString);
}

EmptyChangeLogSet::~EmptyChangeLogSet()
{

}

void
EmptyChangeLogSet::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *kindKey = "kind";

    if(object.has_key(kindKey))
    {
        bourne::json value = object[kindKey];



        jsonToValue(&kind, value, "std::string");


    }


}

bourne::json
EmptyChangeLogSet::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["kind"] = getKind();



    return object;

}

std::string
EmptyChangeLogSet::getClass()
{
	return _class;
}

void
EmptyChangeLogSet::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
EmptyChangeLogSet::getKind()
{
	return kind;
}

void
EmptyChangeLogSet::setKind(std::string  kind)
{
	this->kind = kind;
}



