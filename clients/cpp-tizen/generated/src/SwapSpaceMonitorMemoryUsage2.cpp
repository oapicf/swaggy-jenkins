#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SwapSpaceMonitorMemoryUsage2.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SwapSpaceMonitorMemoryUsage2::SwapSpaceMonitorMemoryUsage2()
{
	//__init();
}

SwapSpaceMonitorMemoryUsage2::~SwapSpaceMonitorMemoryUsage2()
{
	//__cleanup();
}

void
SwapSpaceMonitorMemoryUsage2::__init()
{
	//_class = std::string();
	//availablePhysicalMemory = int(0);
	//availableSwapSpace = int(0);
	//totalPhysicalMemory = int(0);
	//totalSwapSpace = int(0);
}

void
SwapSpaceMonitorMemoryUsage2::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(availablePhysicalMemory != NULL) {
	//
	//delete availablePhysicalMemory;
	//availablePhysicalMemory = NULL;
	//}
	//if(availableSwapSpace != NULL) {
	//
	//delete availableSwapSpace;
	//availableSwapSpace = NULL;
	//}
	//if(totalPhysicalMemory != NULL) {
	//
	//delete totalPhysicalMemory;
	//totalPhysicalMemory = NULL;
	//}
	//if(totalSwapSpace != NULL) {
	//
	//delete totalSwapSpace;
	//totalSwapSpace = NULL;
	//}
	//
}

void
SwapSpaceMonitorMemoryUsage2::fromJson(char* jsonStr)
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
	const gchar *availablePhysicalMemoryKey = "availablePhysicalMemory";
	node = json_object_get_member(pJsonObject, availablePhysicalMemoryKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&availablePhysicalMemory, node, "int", "");
		} else {
			
		}
	}
	const gchar *availableSwapSpaceKey = "availableSwapSpace";
	node = json_object_get_member(pJsonObject, availableSwapSpaceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&availableSwapSpace, node, "int", "");
		} else {
			
		}
	}
	const gchar *totalPhysicalMemoryKey = "totalPhysicalMemory";
	node = json_object_get_member(pJsonObject, totalPhysicalMemoryKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&totalPhysicalMemory, node, "int", "");
		} else {
			
		}
	}
	const gchar *totalSwapSpaceKey = "totalSwapSpace";
	node = json_object_get_member(pJsonObject, totalSwapSpaceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&totalSwapSpace, node, "int", "");
		} else {
			
		}
	}
}

SwapSpaceMonitorMemoryUsage2::SwapSpaceMonitorMemoryUsage2(char* json)
{
	this->fromJson(json);
}

char*
SwapSpaceMonitorMemoryUsage2::toJson()
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
		int obj = getAvailablePhysicalMemory();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *availablePhysicalMemoryKey = "availablePhysicalMemory";
	json_object_set_member(pJsonObject, availablePhysicalMemoryKey, node);
	if (isprimitive("int")) {
		int obj = getAvailableSwapSpace();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *availableSwapSpaceKey = "availableSwapSpace";
	json_object_set_member(pJsonObject, availableSwapSpaceKey, node);
	if (isprimitive("int")) {
		int obj = getTotalPhysicalMemory();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *totalPhysicalMemoryKey = "totalPhysicalMemory";
	json_object_set_member(pJsonObject, totalPhysicalMemoryKey, node);
	if (isprimitive("int")) {
		int obj = getTotalSwapSpace();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *totalSwapSpaceKey = "totalSwapSpace";
	json_object_set_member(pJsonObject, totalSwapSpaceKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


