#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "BranchImplpermissions.h"

using namespace std;
using namespace Tizen::ArtikCloud;

BranchImplpermissions::BranchImplpermissions()
{
	//__init();
}

BranchImplpermissions::~BranchImplpermissions()
{
	//__cleanup();
}

void
BranchImplpermissions::__init()
{
	//create = bool(false);
	//read = bool(false);
	//start = bool(false);
	//stop = bool(false);
	//_class = std::string();
}

void
BranchImplpermissions::__cleanup()
{
	//if(create != NULL) {
	//
	//delete create;
	//create = NULL;
	//}
	//if(read != NULL) {
	//
	//delete read;
	//read = NULL;
	//}
	//if(start != NULL) {
	//
	//delete start;
	//start = NULL;
	//}
	//if(stop != NULL) {
	//
	//delete stop;
	//stop = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
BranchImplpermissions::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *createKey = "create";
	node = json_object_get_member(pJsonObject, createKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&create, node, "bool", "");
		} else {
			
		}
	}
	const gchar *readKey = "read";
	node = json_object_get_member(pJsonObject, readKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&read, node, "bool", "");
		} else {
			
		}
	}
	const gchar *startKey = "start";
	node = json_object_get_member(pJsonObject, startKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&start, node, "bool", "");
		} else {
			
		}
	}
	const gchar *stopKey = "stop";
	node = json_object_get_member(pJsonObject, stopKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&stop, node, "bool", "");
		} else {
			
		}
	}
	const gchar *_classKey = "_class";
	node = json_object_get_member(pJsonObject, _classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_class, node, "std::string", "");
		} else {
			
		}
	}
}

BranchImplpermissions::BranchImplpermissions(char* json)
{
	this->fromJson(json);
}

char*
BranchImplpermissions::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getCreate();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *createKey = "create";
	json_object_set_member(pJsonObject, createKey, node);
	if (isprimitive("bool")) {
		bool obj = getRead();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *readKey = "read";
	json_object_set_member(pJsonObject, readKey, node);
	if (isprimitive("bool")) {
		bool obj = getStart();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *startKey = "start";
	json_object_set_member(pJsonObject, startKey, node);
	if (isprimitive("bool")) {
		bool obj = getStop();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *stopKey = "stop";
	json_object_set_member(pJsonObject, stopKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_classKey = "_class";
	json_object_set_member(pJsonObject, _classKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

bool
BranchImplpermissions::getCreate()
{
	return create;
}

void
BranchImplpermissions::setCreate(bool  create)
{
	this->create = create;
}

bool
BranchImplpermissions::getRead()
{
	return read;
}

void
BranchImplpermissions::setRead(bool  read)
{
	this->read = read;
}

bool
BranchImplpermissions::getStart()
{
	return start;
}

void
BranchImplpermissions::setStart(bool  start)
{
	this->start = start;
}

bool
BranchImplpermissions::getStop()
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


