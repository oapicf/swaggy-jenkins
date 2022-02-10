

#include "FavoriteImpl.h"

using namespace Tiny;

FavoriteImpl::FavoriteImpl()
{
	_class = std::string();
	_links = FavoriteImpllinks();
	item = PipelineImpl();
}

FavoriteImpl::FavoriteImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

FavoriteImpl::~FavoriteImpl()
{

}

void
FavoriteImpl::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *_linksKey = "_links";

    if(object.has_key(_linksKey))
    {
        bourne::json value = object[_linksKey];




        FavoriteImpllinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *itemKey = "item";

    if(object.has_key(itemKey))
    {
        bourne::json value = object[itemKey];




        PipelineImpl* obj = &item;
		obj->fromJson(value.dump());

    }


}

bourne::json
FavoriteImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();






	object["item"] = getItem().toJson();


    return object;

}

std::string
FavoriteImpl::getClass()
{
	return _class;
}

void
FavoriteImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

FavoriteImpllinks
FavoriteImpl::getLinks()
{
	return _links;
}

void
FavoriteImpl::setLinks(FavoriteImpllinks  _links)
{
	this->_links = _links;
}

PipelineImpl
FavoriteImpl::getItem()
{
	return item;
}

void
FavoriteImpl::setItem(PipelineImpl  item)
{
	this->item = item;
}



