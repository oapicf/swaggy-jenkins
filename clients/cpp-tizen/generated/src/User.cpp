#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "User.h"

using namespace std;
using namespace Tizen::ArtikCloud;

User::User()
{
	//__init();
}

User::~User()
{
	//__cleanup();
}

void
User::__init()
{
	//_class = std::string();
	//id = std::string();
	//fullName = std::string();
	//email = std::string();
	//name = std::string();
}

void
User::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(fullName != NULL) {
	//
	//delete fullName;
	//fullName = NULL;
	//}
	//if(email != NULL) {
	//
	//delete email;
	//email = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//
}

void
User::fromJson(char* jsonStr)
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
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fullNameKey = "fullName";
	node = json_object_get_member(pJsonObject, fullNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fullName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *emailKey = "email";
	node = json_object_get_member(pJsonObject, emailKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&email, node, "std::string", "");
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

User::User(char* json)
{
	this->fromJson(json);
}

char*
User::toJson()
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
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFullName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullNameKey = "fullName";
	json_object_set_member(pJsonObject, fullNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEmail();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *emailKey = "email";
	json_object_set_member(pJsonObject, emailKey, node);
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
User::getClass()
{
	return _class;
}

void
User::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
User::getId()
{
	return id;
}

void
User::setId(std::string  id)
{
	this->id = id;
}

std::string
User::getFullName()
{
	return fullName;
}

void
User::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
User::getEmail()
{
	return email;
}

void
User::setEmail(std::string  email)
{
	this->email = email;
}

std::string
User::getName()
{
	return name;
}

void
User::setName(std::string  name)
{
	this->name = name;
}


