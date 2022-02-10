

#include "ExtensionClassImpl.h"

using namespace Tiny;

ExtensionClassImpl::ExtensionClassImpl()
{
	_class = std::string();
	_links = ExtensionClassImpllinks();
	classes = std::list<std::string>();
}

ExtensionClassImpl::ExtensionClassImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

ExtensionClassImpl::~ExtensionClassImpl()
{

}

void
ExtensionClassImpl::fromJson(std::string jsonObj)
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




        ExtensionClassImpllinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *classesKey = "classes";

    if(object.has_key(classesKey))
    {
        bourne::json value = object[classesKey];


        std::list<std::string> classes_list;
        std::string element;
        for(auto& var : value.array_range())
        {

            jsonToValue(&element, var, "std::string");


            classes_list.push_back(element);
        }
        classes = classes_list;


    }


}

bourne::json
ExtensionClassImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();




    std::list<std::string> classes_list = getClasses();
    bourne::json classes_arr = bourne::json::array();

    for(auto& var : classes_list)
    {
        classes_arr.append(var);
    }
    object["classes"] = classes_arr;






    return object;

}

std::string
ExtensionClassImpl::getClass()
{
	return _class;
}

void
ExtensionClassImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

ExtensionClassImpllinks
ExtensionClassImpl::getLinks()
{
	return _links;
}

void
ExtensionClassImpl::setLinks(ExtensionClassImpllinks  _links)
{
	this->_links = _links;
}

std::list<std::string>
ExtensionClassImpl::getClasses()
{
	return classes;
}

void
ExtensionClassImpl::setClasses(std::list <std::string> classes)
{
	this->classes = classes;
}



