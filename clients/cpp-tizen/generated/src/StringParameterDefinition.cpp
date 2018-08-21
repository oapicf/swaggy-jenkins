#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "StringParameterDefinition.h"

using namespace std;
using namespace Tizen::ArtikCloud;

StringParameterDefinition::StringParameterDefinition()
{
	//__init();
}

StringParameterDefinition::~StringParameterDefinition()
{
	//__cleanup();
}

void
StringParameterDefinition::__init()
{
	//_class = std::string();
	//defaultParameterValue = new StringParameterValue();
	//description = std::string();
	//name = std::string();
	//type = std::string();
}

void
StringParameterDefinition::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(defaultParameterValue != NULL) {
	//
	//delete defaultParameterValue;
	//defaultParameterValue = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//
}

void
StringParameterDefinition::fromJson(char* jsonStr)
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
	const gchar *defaultParameterValueKey = "defaultParameterValue";
	node = json_object_get_member(pJsonObject, defaultParameterValueKey);
	if (node !=NULL) {
	

		if (isprimitive("StringParameterValue")) {
			jsonToValue(&defaultParameterValue, node, "StringParameterValue", "StringParameterValue");
		} else {
			
			StringParameterValue* obj = static_cast<StringParameterValue*> (&defaultParameterValue);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
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
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
}

StringParameterDefinition::StringParameterDefinition(char* json)
{
	this->fromJson(json);
}

char*
StringParameterDefinition::toJson()
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
	if (isprimitive("StringParameterValue")) {
		StringParameterValue obj = getDefaultParameterValue();
		node = converttoJson(&obj, "StringParameterValue", "");
	}
	else {
		
		StringParameterValue obj = static_cast<StringParameterValue> (getDefaultParameterValue());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *defaultParameterValueKey = "defaultParameterValue";
	json_object_set_member(pJsonObject, defaultParameterValueKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
StringParameterDefinition::getClass()
{
	return _class;
}

void
StringParameterDefinition::setClass(std::string  _class)
{
	this->_class = _class;
}

StringParameterValue
StringParameterDefinition::getDefaultParameterValue()
{
	return defaultParameterValue;
}

void
StringParameterDefinition::setDefaultParameterValue(StringParameterValue  defaultParameterValue)
{
	this->defaultParameterValue = defaultParameterValue;
}

std::string
StringParameterDefinition::getDescription()
{
	return description;
}

void
StringParameterDefinition::setDescription(std::string  description)
{
	this->description = description;
}

std::string
StringParameterDefinition::getName()
{
	return name;
}

void
StringParameterDefinition::setName(std::string  name)
{
	this->name = name;
}

std::string
StringParameterDefinition::getType()
{
	return type;
}

void
StringParameterDefinition::setType(std::string  type)
{
	this->type = type;
}


