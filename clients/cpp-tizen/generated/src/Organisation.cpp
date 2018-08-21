#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Organisation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Organisation::Organisation()
{
	//__init();
}

Organisation::~Organisation()
{
	//__cleanup();
}

void
Organisation::__init()
{
	//_class = std::string();
	//name = std::string();
}

void
Organisation::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//
}

void
Organisation::fromJson(char* jsonStr)
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
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
}

Organisation::Organisation(char* json)
{
	this->fromJson(json);
}

char*
Organisation::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Organisation::getClass()
{
	return _class;
}

void
Organisation::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
Organisation::getName()
{
	return name;
}

void
Organisation::setName(std::string  name)
{
	this->name = name;
}


