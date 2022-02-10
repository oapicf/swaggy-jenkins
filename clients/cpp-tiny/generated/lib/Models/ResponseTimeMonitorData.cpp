

#include "ResponseTimeMonitorData.h"

using namespace Tiny;

ResponseTimeMonitorData::ResponseTimeMonitorData()
{
	_class = std::string();
	timestamp = int(0);
	average = int(0);
}

ResponseTimeMonitorData::ResponseTimeMonitorData(std::string jsonString)
{
	this->fromJson(jsonString);
}

ResponseTimeMonitorData::~ResponseTimeMonitorData()
{

}

void
ResponseTimeMonitorData::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *timestampKey = "timestamp";

    if(object.has_key(timestampKey))
    {
        bourne::json value = object[timestampKey];



        jsonToValue(&timestamp, value, "int");


    }

    const char *averageKey = "average";

    if(object.has_key(averageKey))
    {
        bourne::json value = object[averageKey];



        jsonToValue(&average, value, "int");


    }


}

bourne::json
ResponseTimeMonitorData::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["timestamp"] = getTimestamp();






    object["average"] = getAverage();



    return object;

}

std::string
ResponseTimeMonitorData::getClass()
{
	return _class;
}

void
ResponseTimeMonitorData::setClass(std::string  _class)
{
	this->_class = _class;
}

int
ResponseTimeMonitorData::getTimestamp()
{
	return timestamp;
}

void
ResponseTimeMonitorData::setTimestamp(int  timestamp)
{
	this->timestamp = timestamp;
}

int
ResponseTimeMonitorData::getAverage()
{
	return average;
}

void
ResponseTimeMonitorData::setAverage(int  average)
{
	this->average = average;
}



