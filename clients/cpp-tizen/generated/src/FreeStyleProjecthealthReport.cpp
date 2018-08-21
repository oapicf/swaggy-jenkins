#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "FreeStyleProjecthealthReport.h"

using namespace std;
using namespace Tizen::ArtikCloud;

FreeStyleProjecthealthReport::FreeStyleProjecthealthReport()
{
	//__init();
}

FreeStyleProjecthealthReport::~FreeStyleProjecthealthReport()
{
	//__cleanup();
}

void
FreeStyleProjecthealthReport::__init()
{
	//description = std::string();
	//iconClassName = std::string();
	//iconUrl = std::string();
	//score = int(0);
	//_class = std::string();
}

void
FreeStyleProjecthealthReport::__cleanup()
{
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(iconClassName != NULL) {
	//
	//delete iconClassName;
	//iconClassName = NULL;
	//}
	//if(iconUrl != NULL) {
	//
	//delete iconUrl;
	//iconUrl = NULL;
	//}
	//if(score != NULL) {
	//
	//delete score;
	//score = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
FreeStyleProjecthealthReport::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iconClassNameKey = "iconClassName";
	node = json_object_get_member(pJsonObject, iconClassNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iconClassName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iconUrlKey = "iconUrl";
	node = json_object_get_member(pJsonObject, iconUrlKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iconUrl, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *scoreKey = "score";
	node = json_object_get_member(pJsonObject, scoreKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&score, node, "int", "");
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

FreeStyleProjecthealthReport::FreeStyleProjecthealthReport(char* json)
{
	this->fromJson(json);
}

char*
FreeStyleProjecthealthReport::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIconClassName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iconClassNameKey = "iconClassName";
	json_object_set_member(pJsonObject, iconClassNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIconUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iconUrlKey = "iconUrl";
	json_object_set_member(pJsonObject, iconUrlKey, node);
	if (isprimitive("int")) {
		int obj = getScore();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *scoreKey = "score";
	json_object_set_member(pJsonObject, scoreKey, node);
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

std::string
FreeStyleProjecthealthReport::getDescription()
{
	return description;
}

void
FreeStyleProjecthealthReport::setDescription(std::string  description)
{
	this->description = description;
}

std::string
FreeStyleProjecthealthReport::getIconClassName()
{
	return iconClassName;
}

void
FreeStyleProjecthealthReport::setIconClassName(std::string  iconClassName)
{
	this->iconClassName = iconClassName;
}

std::string
FreeStyleProjecthealthReport::getIconUrl()
{
	return iconUrl;
}

void
FreeStyleProjecthealthReport::setIconUrl(std::string  iconUrl)
{
	this->iconUrl = iconUrl;
}

int
FreeStyleProjecthealthReport::getScore()
{
	return score;
}

void
FreeStyleProjecthealthReport::setScore(int  score)
{
	this->score = score;
}

std::string
FreeStyleProjecthealthReport::getClass()
{
	return _class;
}

void
FreeStyleProjecthealthReport::setClass(std::string  _class)
{
	this->_class = _class;
}


