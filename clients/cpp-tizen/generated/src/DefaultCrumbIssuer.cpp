#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DefaultCrumbIssuer.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DefaultCrumbIssuer::DefaultCrumbIssuer()
{
	//__init();
}

DefaultCrumbIssuer::~DefaultCrumbIssuer()
{
	//__cleanup();
}

void
DefaultCrumbIssuer::__init()
{
	//_class = std::string();
	//crumb = std::string();
	//crumbRequestField = std::string();
}

void
DefaultCrumbIssuer::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(crumb != NULL) {
	//
	//delete crumb;
	//crumb = NULL;
	//}
	//if(crumbRequestField != NULL) {
	//
	//delete crumbRequestField;
	//crumbRequestField = NULL;
	//}
	//
}

void
DefaultCrumbIssuer::fromJson(char* jsonStr)
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
	const gchar *crumbKey = "crumb";
	node = json_object_get_member(pJsonObject, crumbKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&crumb, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *crumbRequestFieldKey = "crumbRequestField";
	node = json_object_get_member(pJsonObject, crumbRequestFieldKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&crumbRequestField, node, "std::string", "");
		} else {
			
		}
	}
}

DefaultCrumbIssuer::DefaultCrumbIssuer(char* json)
{
	this->fromJson(json);
}

char*
DefaultCrumbIssuer::toJson()
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
		std::string obj = getCrumb();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *crumbKey = "crumb";
	json_object_set_member(pJsonObject, crumbKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCrumbRequestField();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *crumbRequestFieldKey = "crumbRequestField";
	json_object_set_member(pJsonObject, crumbRequestFieldKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
DefaultCrumbIssuer::getClass()
{
	return _class;
}

void
DefaultCrumbIssuer::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
DefaultCrumbIssuer::getCrumb()
{
	return crumb;
}

void
DefaultCrumbIssuer::setCrumb(std::string  crumb)
{
	this->crumb = crumb;
}

std::string
DefaultCrumbIssuer::getCrumbRequestField()
{
	return crumbRequestField;
}

void
DefaultCrumbIssuer::setCrumbRequestField(std::string  crumbRequestField)
{
	this->crumbRequestField = crumbRequestField;
}


