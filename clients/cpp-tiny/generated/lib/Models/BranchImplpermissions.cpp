

#include "BranchImplpermissions.h"

using namespace Tiny;

BranchImplpermissions::BranchImplpermissions()
{
	create = bool(false);
	read = bool(false);
	start = bool(false);
	stop = bool(false);
	_class = std::string();
}

BranchImplpermissions::BranchImplpermissions(std::string jsonString)
{
	this->fromJson(jsonString);
}

BranchImplpermissions::~BranchImplpermissions()
{

}

void
BranchImplpermissions::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *createKey = "create";

    if(object.has_key(createKey))
    {
        bourne::json value = object[createKey];



        jsonToValue(&create, value, "bool");


    }

    const char *readKey = "read";

    if(object.has_key(readKey))
    {
        bourne::json value = object[readKey];



        jsonToValue(&read, value, "bool");


    }

    const char *startKey = "start";

    if(object.has_key(startKey))
    {
        bourne::json value = object[startKey];



        jsonToValue(&start, value, "bool");


    }

    const char *stopKey = "stop";

    if(object.has_key(stopKey))
    {
        bourne::json value = object[stopKey];



        jsonToValue(&stop, value, "bool");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
BranchImplpermissions::toJson()
{
    bourne::json object = bourne::json::object();





    object["create"] = isCreate();






    object["read"] = isRead();






    object["start"] = isStart();






    object["stop"] = isStop();






    object["_class"] = getClass();



    return object;

}

bool
BranchImplpermissions::isCreate()
{
	return create;
}

void
BranchImplpermissions::setCreate(bool  create)
{
	this->create = create;
}

bool
BranchImplpermissions::isRead()
{
	return read;
}

void
BranchImplpermissions::setRead(bool  read)
{
	this->read = read;
}

bool
BranchImplpermissions::isStart()
{
	return start;
}

void
BranchImplpermissions::setStart(bool  start)
{
	this->start = start;
}

bool
BranchImplpermissions::isStop()
{
	return stop;
}

void
BranchImplpermissions::setStop(bool  stop)
{
	this->stop = stop;
}

std::string
BranchImplpermissions::getClass()
{
	return _class;
}

void
BranchImplpermissions::setClass(std::string  _class)
{
	this->_class = _class;
}



