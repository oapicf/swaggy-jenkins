#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CauseUserIdCause.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CauseUserIdCause::CauseUserIdCause()
{
	//__init();
}

CauseUserIdCause::~CauseUserIdCause()
{
	//__cleanup();
}

void
CauseUserIdCause::__init()
{
	//_class = std::string();
	//shortDescription = std::string();
	//userId = std::string();
	//userName = std::string();
}

void
CauseUserIdCause::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(shortDescription != NULL) {
	//
	//delete shortDescription;
	//shortDescription = NULL;
	//}
	//if(userId != NULL) {
	//
	//delete userId;
	//userId = NULL;
	//}
	//if(userName != NULL) {
	//
	//delete userName;
	//userName = NULL;
	//}
	//
}

void
CauseUserIdCause::fromJson(char* jsonStr)
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
	const gchar *shortDescriptionKey = "shortDescription";
	node = json_object_get_member(pJsonObject, shortDescriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&shortDescription, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *userIdKey = "userId";
	node = json_object_get_member(pJsonObject, userIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&userId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *userNameKey = "userName";
	node = json_object_get_member(pJsonObject, userNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&userName, node, "std::string", "");
		} else {
			
		}
	}
}

CauseUserIdCause::CauseUserIdCause(char* json)
{
	this->fromJson(json);
}

char*
CauseUserIdCause::toJson()
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
		std::string obj = getShortDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *shortDescriptionKey = "shortDescription";
	json_object_set_member(pJsonObject, shortDescriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUserId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *userIdKey = "userId";
	json_object_set_member(pJsonObject, userIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUserName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *userNameKey = "userName";
	json_object_set_member(pJsonObject, userNameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CauseUserIdCause::getClass()
{
	return _class;
}

void
CauseUserIdCause::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
CauseUserIdCause::getShortDescription()
{
	return shortDescription;
}

void
CauseUserIdCause::setShortDescription(std::string  shortDescription)
{
	this->shortDescription = shortDescription;
}

std::string
CauseUserIdCause::getUserId()
{
	return userId;
}

void
CauseUserIdCause::setUserId(std::string  userId)
{
	this->userId = userId;
}

std::string
CauseUserIdCause::getUserName()
{
	return userName;
}

void
CauseUserIdCause::setUserName(std::string  userName)
{
	this->userName = userName;
}


