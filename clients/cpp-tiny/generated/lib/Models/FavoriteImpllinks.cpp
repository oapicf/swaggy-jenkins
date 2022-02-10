

#include "FavoriteImpllinks.h"

using namespace Tiny;

FavoriteImpllinks::FavoriteImpllinks()
{
	self = Link();
	_class = std::string();
}

FavoriteImpllinks::FavoriteImpllinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

FavoriteImpllinks::~FavoriteImpllinks()
{

}

void
FavoriteImpllinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *selfKey = "self";

    if(object.has_key(selfKey))
    {
        bourne::json value = object[selfKey];




        Link* obj = &self;
		obj->fromJson(value.dump());

    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
FavoriteImpllinks::toJson()
{
    bourne::json object = bourne::json::object();






	object["self"] = getSelf().toJson();





    object["_class"] = getClass();



    return object;

}

Link
FavoriteImpllinks::getSelf()
{
	return self;
}

void
FavoriteImpllinks::setSelf(Link  self)
{
	this->self = self;
}

std::string
FavoriteImpllinks::getClass()
{
	return _class;
}

void
FavoriteImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}



