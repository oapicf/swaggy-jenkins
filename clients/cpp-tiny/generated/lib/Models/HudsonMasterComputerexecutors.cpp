

#include "HudsonMasterComputerexecutors.h"

using namespace Tiny;

HudsonMasterComputerexecutors::HudsonMasterComputerexecutors()
{
	currentExecutable = FreeStyleBuild();
	idle = bool(false);
	likelyStuck = bool(false);
	number = int(0);
	progress = int(0);
	_class = std::string();
}

HudsonMasterComputerexecutors::HudsonMasterComputerexecutors(std::string jsonString)
{
	this->fromJson(jsonString);
}

HudsonMasterComputerexecutors::~HudsonMasterComputerexecutors()
{

}

void
HudsonMasterComputerexecutors::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *currentExecutableKey = "currentExecutable";

    if(object.has_key(currentExecutableKey))
    {
        bourne::json value = object[currentExecutableKey];




        FreeStyleBuild* obj = &currentExecutable;
		obj->fromJson(value.dump());

    }

    const char *idleKey = "idle";

    if(object.has_key(idleKey))
    {
        bourne::json value = object[idleKey];



        jsonToValue(&idle, value, "bool");


    }

    const char *likelyStuckKey = "likelyStuck";

    if(object.has_key(likelyStuckKey))
    {
        bourne::json value = object[likelyStuckKey];



        jsonToValue(&likelyStuck, value, "bool");


    }

    const char *numberKey = "number";

    if(object.has_key(numberKey))
    {
        bourne::json value = object[numberKey];



        jsonToValue(&number, value, "int");


    }

    const char *progressKey = "progress";

    if(object.has_key(progressKey))
    {
        bourne::json value = object[progressKey];



        jsonToValue(&progress, value, "int");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
HudsonMasterComputerexecutors::toJson()
{
    bourne::json object = bourne::json::object();






	object["currentExecutable"] = getCurrentExecutable().toJson();





    object["idle"] = isIdle();






    object["likelyStuck"] = isLikelyStuck();






    object["number"] = getNumber();






    object["progress"] = getProgress();






    object["_class"] = getClass();



    return object;

}

FreeStyleBuild
HudsonMasterComputerexecutors::getCurrentExecutable()
{
	return currentExecutable;
}

void
HudsonMasterComputerexecutors::setCurrentExecutable(FreeStyleBuild  currentExecutable)
{
	this->currentExecutable = currentExecutable;
}

bool
HudsonMasterComputerexecutors::isIdle()
{
	return idle;
}

void
HudsonMasterComputerexecutors::setIdle(bool  idle)
{
	this->idle = idle;
}

bool
HudsonMasterComputerexecutors::isLikelyStuck()
{
	return likelyStuck;
}

void
HudsonMasterComputerexecutors::setLikelyStuck(bool  likelyStuck)
{
	this->likelyStuck = likelyStuck;
}

int
HudsonMasterComputerexecutors::getNumber()
{
	return number;
}

void
HudsonMasterComputerexecutors::setNumber(int  number)
{
	this->number = number;
}

int
HudsonMasterComputerexecutors::getProgress()
{
	return progress;
}

void
HudsonMasterComputerexecutors::setProgress(int  progress)
{
	this->progress = progress;
}

std::string
HudsonMasterComputerexecutors::getClass()
{
	return _class;
}

void
HudsonMasterComputerexecutors::setClass(std::string  _class)
{
	this->_class = _class;
}



