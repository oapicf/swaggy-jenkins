#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ResponseTimeMonitorData.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ResponseTimeMonitorData::ResponseTimeMonitorData()
{
	//__init();
}

ResponseTimeMonitorData::~ResponseTimeMonitorData()
{
	//__cleanup();
}

void
ResponseTimeMonitorData::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//timestamp = null;
	//
	//
	//average = null;
	//
}

void
ResponseTimeMonitorData::__cleanup()
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
	//if(average != NULL) {
	//
	//delete average;
	//average = NULL;
	//}
	//
}

void
ResponseTimeMonitorData::fromJson(char* jsonStr)
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
	const gchar *averageKey = "average";
	node = json_object_get_member(pJsonObject, averageKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&average, node, "int", "");
		} else {
			
		}
	}
}

ResponseTimeMonitorData::ResponseTimeMonitorData(char* json)
{
	this->fromJson(json);
}

char*
ResponseTimeMonitorData::toJson()
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
	if (isprimitive("int")) {
		int obj = getAverage();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *averageKey = "average";
	json_object_set_member(pJsonObject, averageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


