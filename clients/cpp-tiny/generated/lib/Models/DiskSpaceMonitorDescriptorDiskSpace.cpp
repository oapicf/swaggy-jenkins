

#include "DiskSpaceMonitorDescriptorDiskSpace.h"

using namespace Tiny;

DiskSpaceMonitorDescriptorDiskSpace::DiskSpaceMonitorDescriptorDiskSpace()
{
	_class = std::string();
	timestamp = int(0);
	path = std::string();
	size = int(0);
}

DiskSpaceMonitorDescriptorDiskSpace::DiskSpaceMonitorDescriptorDiskSpace(std::string jsonString)
{
	this->fromJson(jsonString);
}

DiskSpaceMonitorDescriptorDiskSpace::~DiskSpaceMonitorDescriptorDiskSpace()
{

}

void
DiskSpaceMonitorDescriptorDiskSpace::fromJson(std::string jsonObj)
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

    const char *pathKey = "path";

    if(object.has_key(pathKey))
    {
        bourne::json value = object[pathKey];



        jsonToValue(&path, value, "std::string");


    }

    const char *sizeKey = "size";

    if(object.has_key(sizeKey))
    {
        bourne::json value = object[sizeKey];



        jsonToValue(&size, value, "int");


    }


}

bourne::json
DiskSpaceMonitorDescriptorDiskSpace::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["timestamp"] = getTimestamp();






    object["path"] = getPath();






    object["size"] = getSize();



    return object;

}

std::string
DiskSpaceMonitorDescriptorDiskSpace::getClass()
{
	return _class;
}

void
DiskSpaceMonitorDescriptorDiskSpace::setClass(std::string  _class)
{
	this->_class = _class;
}

int
DiskSpaceMonitorDescriptorDiskSpace::getTimestamp()
{
	return timestamp;
}

void
DiskSpaceMonitorDescriptorDiskSpace::setTimestamp(int  timestamp)
{
	this->timestamp = timestamp;
}

std::string
DiskSpaceMonitorDescriptorDiskSpace::getPath()
{
	return path;
}

void
DiskSpaceMonitorDescriptorDiskSpace::setPath(std::string  path)
{
	this->path = path;
}

int
DiskSpaceMonitorDescriptorDiskSpace::getSize()
{
	return size;
}

void
DiskSpaceMonitorDescriptorDiskSpace::setSize(int  size)
{
	this->size = size;
}



