

#include "ClassesByClass.h"

using namespace Tiny;

ClassesByClass::ClassesByClass()
{
	classes = std::list<std::string>();
	_class = std::string();
}

ClassesByClass::ClassesByClass(std::string jsonString)
{
	this->fromJson(jsonString);
}

ClassesByClass::~ClassesByClass()
{

}

void
ClassesByClass::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

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

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
ClassesByClass::toJson()
{
    bourne::json object = bourne::json::object();




    std::list<std::string> classes_list = getClasses();
    bourne::json classes_arr = bourne::json::array();

    for(auto& var : classes_list)
    {
        classes_arr.append(var);
    }
    object["classes"] = classes_arr;









    object["_class"] = getClass();



    return object;

}

std::list<std::string>
ClassesByClass::getClasses()
{
	return classes;
}

void
ClassesByClass::setClasses(std::list <std::string> classes)
{
	this->classes = classes;
}

std::string
ClassesByClass::getClass()
{
	return _class;
}

void
ClassesByClass::setClass(std::string  _class)
{
	this->_class = _class;
}



