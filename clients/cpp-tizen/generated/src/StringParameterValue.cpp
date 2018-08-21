#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "StringParameterValue.h"

using namespace std;
using namespace Tizen::ArtikCloud;

StringParameterValue::StringParameterValue()
{
	//__init();
}

StringParameterValue::~StringParameterValue()
{
	//__cleanup();
}

void
StringParameterValue::__init()
{
	//_class = std::string();
	//name = std::string();
	//value = std::string();
}

void
StringParameterValue::__cleanup()
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
	//if(value != NULL) {
	//
	//delete value;
	//value = NULL;
	//}
	//
}

void
StringParameterValue::fromJson(char* jsonStr)
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
	const gchar *valueKey = "value";
	node = json_object_get_member(pJsonObject, valueKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&value, node, "std::string", "");
		} else {
			
		}
	}
}

StringParameterValue::StringParameterValue(char* json)
{
	this->fromJson(json);
}

char*
StringParameterValue::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getValue();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *valueKey = "value";
	json_object_set_member(pJsonObject, valueKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
StringParameterValue::getClass()
{
	return _class;
}

void
StringParameterValue::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
StringParameterValue::getName()
{
	return name;
}

void
StringParameterValue::setName(std::string  name)
{
	this->name = name;
}

std::string
StringParameterValue::getValue()
{
	return value;
}

void
StringParameterValue::setValue(std::string  value)
{
	this->value = value;
}


