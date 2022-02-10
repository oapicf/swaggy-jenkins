

#include "SwapSpaceMonitorMemoryUsage2.h"

using namespace Tiny;

SwapSpaceMonitorMemoryUsage2::SwapSpaceMonitorMemoryUsage2()
{
	_class = std::string();
	availablePhysicalMemory = int(0);
	availableSwapSpace = int(0);
	totalPhysicalMemory = int(0);
	totalSwapSpace = int(0);
}

SwapSpaceMonitorMemoryUsage2::SwapSpaceMonitorMemoryUsage2(std::string jsonString)
{
	this->fromJson(jsonString);
}

SwapSpaceMonitorMemoryUsage2::~SwapSpaceMonitorMemoryUsage2()
{

}

void
SwapSpaceMonitorMemoryUsage2::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *availablePhysicalMemoryKey = "availablePhysicalMemory";

    if(object.has_key(availablePhysicalMemoryKey))
    {
        bourne::json value = object[availablePhysicalMemoryKey];



        jsonToValue(&availablePhysicalMemory, value, "int");


    }

    const char *availableSwapSpaceKey = "availableSwapSpace";

    if(object.has_key(availableSwapSpaceKey))
    {
        bourne::json value = object[availableSwapSpaceKey];



        jsonToValue(&availableSwapSpace, value, "int");


    }

    const char *totalPhysicalMemoryKey = "totalPhysicalMemory";

    if(object.has_key(totalPhysicalMemoryKey))
    {
        bourne::json value = object[totalPhysicalMemoryKey];



        jsonToValue(&totalPhysicalMemory, value, "int");


    }

    const char *totalSwapSpaceKey = "totalSwapSpace";

    if(object.has_key(totalSwapSpaceKey))
    {
        bourne::json value = object[totalSwapSpaceKey];



        jsonToValue(&totalSwapSpace, value, "int");


    }


}

bourne::json
SwapSpaceMonitorMemoryUsage2::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["availablePhysicalMemory"] = getAvailablePhysicalMemory();






    object["availableSwapSpace"] = getAvailableSwapSpace();






    object["totalPhysicalMemory"] = getTotalPhysicalMemory();






    object["totalSwapSpace"] = getTotalSwapSpace();



    return object;

}

std::string
SwapSpaceMonitorMemoryUsage2::getClass()
{
	return _class;
}

void
SwapSpaceMonitorMemoryUsage2::setClass(std::string  _class)
{
	this->_class = _class;
}

int
SwapSpaceMonitorMemoryUsage2::getAvailablePhysicalMemory()
{
	return availablePhysicalMemory;
}

void
SwapSpaceMonitorMemoryUsage2::setAvailablePhysicalMemory(int  availablePhysicalMemory)
{
	this->availablePhysicalMemory = availablePhysicalMemory;
}

int
SwapSpaceMonitorMemoryUsage2::getAvailableSwapSpace()
{
	return availableSwapSpace;
}

void
SwapSpaceMonitorMemoryUsage2::setAvailableSwapSpace(int  availableSwapSpace)
{
	this->availableSwapSpace = availableSwapSpace;
}

int
SwapSpaceMonitorMemoryUsage2::getTotalPhysicalMemory()
{
	return totalPhysicalMemory;
}

void
SwapSpaceMonitorMemoryUsage2::setTotalPhysicalMemory(int  totalPhysicalMemory)
{
	this->totalPhysicalMemory = totalPhysicalMemory;
}

int
SwapSpaceMonitorMemoryUsage2::getTotalSwapSpace()
{
	return totalSwapSpace;
}

void
SwapSpaceMonitorMemoryUsage2::setTotalSwapSpace(int  totalSwapSpace)
{
	this->totalSwapSpace = totalSwapSpace;
}



