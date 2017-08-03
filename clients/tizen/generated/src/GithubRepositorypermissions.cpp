#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubRepositorypermissions.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubRepositorypermissions::GithubRepositorypermissions()
{
	//__init();
}

GithubRepositorypermissions::~GithubRepositorypermissions()
{
	//__cleanup();
}

void
GithubRepositorypermissions::__init()
{
	//
	//
	//admin = bool(false);
	//
	//
	//push = bool(false);
	//
	//
	//pull = bool(false);
	//
	//
	//_class = std::string();
	//
}

void
GithubRepositorypermissions::__cleanup()
{
	//if(admin != NULL) {
	//
	//delete admin;
	//admin = NULL;
	//}
	//if(push != NULL) {
	//
	//delete push;
	//push = NULL;
	//}
	//if(pull != NULL) {
	//
	//delete pull;
	//pull = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
GithubRepositorypermissions::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *adminKey = "admin";
	node = json_object_get_member(pJsonObject, adminKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&admin, node, "bool", "");
		} else {
			
		}
	}
	const gchar *pushKey = "push";
	node = json_object_get_member(pJsonObject, pushKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&push, node, "bool", "");
		} else {
			
		}
	}
	const gchar *pullKey = "pull";
	node = json_object_get_member(pJsonObject, pullKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&pull, node, "bool", "");
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

GithubRepositorypermissions::GithubRepositorypermissions(char* json)
{
	this->fromJson(json);
}

char*
GithubRepositorypermissions::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getAdmin();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *adminKey = "admin";
	json_object_set_member(pJsonObject, adminKey, node);
	if (isprimitive("bool")) {
		bool obj = getPush();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *pushKey = "push";
	json_object_set_member(pJsonObject, pushKey, node);
	if (isprimitive("bool")) {
		bool obj = getPull();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *pullKey = "pull";
	json_object_set_member(pJsonObject, pullKey, node);
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
GithubRepositorypermissions::getAdmin()
{
	return admin;
}

void
GithubRepositorypermissions::setAdmin(bool  admin)
{
	this->admin = admin;
}

bool
GithubRepositorypermissions::getPush()
{
	return push;
}

void
GithubRepositorypermissions::setPush(bool  push)
{
	this->push = push;
}

bool
GithubRepositorypermissions::getPull()
{
	return pull;
}

void
GithubRepositorypermissions::setPull(bool  pull)
{
	this->pull = pull;
}

std::string
GithubRepositorypermissions::getClass()
{
	return _class;
}

void
GithubRepositorypermissions::setClass(std::string  _class)
{
	this->_class = _class;
}


