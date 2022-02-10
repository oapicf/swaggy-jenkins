

#include "CauseAction.h"

using namespace Tiny;

CauseAction::CauseAction()
{
	_class = std::string();
	causes = std::list<CauseUserIdCause>();
}

CauseAction::CauseAction(std::string jsonString)
{
	this->fromJson(jsonString);
}

CauseAction::~CauseAction()
{

}

void
CauseAction::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *causesKey = "causes";

    if(object.has_key(causesKey))
    {
        bourne::json value = object[causesKey];


        std::list<CauseUserIdCause> causes_list;
        CauseUserIdCause element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            causes_list.push_back(element);
        }
        causes = causes_list;


    }


}

bourne::json
CauseAction::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();





    std::list<CauseUserIdCause> causes_list = getCauses();
    bourne::json causes_arr = bourne::json::array();

    for(auto& var : causes_list)
    {
        CauseUserIdCause obj = var;
        causes_arr.append(obj.toJson());
    }
    object["causes"] = causes_arr;




    return object;

}

std::string
CauseAction::getClass()
{
	return _class;
}

void
CauseAction::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<CauseUserIdCause>
CauseAction::getCauses()
{
	return causes;
}

void
CauseAction::setCauses(std::list <CauseUserIdCause> causes)
{
	this->causes = causes;
}



