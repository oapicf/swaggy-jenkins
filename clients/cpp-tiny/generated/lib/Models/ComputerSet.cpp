

#include "ComputerSet.h"

using namespace Tiny;

ComputerSet::ComputerSet()
{
	_class = std::string();
	busyExecutors = int(0);
	computer = std::list<HudsonMasterComputer>();
	displayName = std::string();
	totalExecutors = int(0);
}

ComputerSet::ComputerSet(std::string jsonString)
{
	this->fromJson(jsonString);
}

ComputerSet::~ComputerSet()
{

}

void
ComputerSet::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *busyExecutorsKey = "busyExecutors";

    if(object.has_key(busyExecutorsKey))
    {
        bourne::json value = object[busyExecutorsKey];



        jsonToValue(&busyExecutors, value, "int");


    }

    const char *computerKey = "computer";

    if(object.has_key(computerKey))
    {
        bourne::json value = object[computerKey];


        std::list<HudsonMasterComputer> computer_list;
        HudsonMasterComputer element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            computer_list.push_back(element);
        }
        computer = computer_list;


    }

    const char *displayNameKey = "displayName";

    if(object.has_key(displayNameKey))
    {
        bourne::json value = object[displayNameKey];



        jsonToValue(&displayName, value, "std::string");


    }

    const char *totalExecutorsKey = "totalExecutors";

    if(object.has_key(totalExecutorsKey))
    {
        bourne::json value = object[totalExecutorsKey];



        jsonToValue(&totalExecutors, value, "int");


    }


}

bourne::json
ComputerSet::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["busyExecutors"] = getBusyExecutors();





    std::list<HudsonMasterComputer> computer_list = getComputer();
    bourne::json computer_arr = bourne::json::array();

    for(auto& var : computer_list)
    {
        HudsonMasterComputer obj = var;
        computer_arr.append(obj.toJson());
    }
    object["computer"] = computer_arr;







    object["displayName"] = getDisplayName();






    object["totalExecutors"] = getTotalExecutors();



    return object;

}

std::string
ComputerSet::getClass()
{
	return _class;
}

void
ComputerSet::setClass(std::string  _class)
{
	this->_class = _class;
}

int
ComputerSet::getBusyExecutors()
{
	return busyExecutors;
}

void
ComputerSet::setBusyExecutors(int  busyExecutors)
{
	this->busyExecutors = busyExecutors;
}

std::list<HudsonMasterComputer>
ComputerSet::getComputer()
{
	return computer;
}

void
ComputerSet::setComputer(std::list <HudsonMasterComputer> computer)
{
	this->computer = computer;
}

std::string
ComputerSet::getDisplayName()
{
	return displayName;
}

void
ComputerSet::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
ComputerSet::getTotalExecutors()
{
	return totalExecutors;
}

void
ComputerSet::setTotalExecutors(int  totalExecutors)
{
	this->totalExecutors = totalExecutors;
}



