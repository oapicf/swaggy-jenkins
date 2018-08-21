#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DiskSpaceMonitorDescriptorDiskSpace.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DiskSpaceMonitorDescriptorDiskSpace::DiskSpaceMonitorDescriptorDiskSpace()
{
	//__init();
}

DiskSpaceMonitorDescriptorDiskSpace::~DiskSpaceMonitorDescriptorDiskSpace()
{
	//__cleanup();
}

void
DiskSpaceMonitorDescriptorDiskSpace::__init()
{
	//_class = std::string();
	//timestamp = int(0);
	//path = std::string();
	//size = int(0);
}

void
DiskSpaceMonitorDescriptorDiskSpace::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(path != NULL) {
	//
	//delete path;
	//path = NULL;
	//}
	//if(size != NULL) {
	//
	//delete size;
	//size = NULL;
	//}
	//
}

void
DiskSpaceMonitorDescriptorDiskSpace::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_classKey = "_class";
	node = json_object_get_member(pJsonObject, _classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_class, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&timestamp, node, "int", "");
		} else {
			
		}
	}
	const gchar *pathKey = "path";
	node = json_object_get_member(pJsonObject, pathKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&path, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sizeKey = "size";
	node = json_object_get_member(pJsonObject, sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&size, node, "int", "");
		} else {
			
		}
	}
}

DiskSpaceMonitorDescriptorDiskSpace::DiskSpaceMonitorDescriptorDiskSpace(char* json)
{
	this->fromJson(json);
}

char*
DiskSpaceMonitorDescriptorDiskSpace::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_classKey = "_class";
	json_object_set_member(pJsonObject, _classKey, node);
	if (isprimitive("int")) {
		int obj = getTimestamp();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPath();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pathKey = "path";
	json_object_set_member(pJsonObject, pathKey, node);
	if (isprimitive("int")) {
		int obj = getSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sizeKey = "size";
	json_object_set_member(pJsonObject, sizeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


