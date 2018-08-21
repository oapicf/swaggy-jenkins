#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Link.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Link::Link()
{
	//__init();
}

Link::~Link()
{
	//__cleanup();
}

void
Link::__init()
{
	//_class = std::string();
	//href = std::string();
}

void
Link::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(href != NULL) {
	//
	//delete href;
	//href = NULL;
	//}
	//
}

void
Link::fromJson(char* jsonStr)
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
	const gchar *hrefKey = "href";
	node = json_object_get_member(pJsonObject, hrefKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&href, node, "std::string", "");
		} else {
			
		}
	}
}

Link::Link(char* json)
{
	this->fromJson(json);
}

char*
Link::toJson()
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
		std::string obj = getHref();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hrefKey = "href";
	json_object_set_member(pJsonObject, hrefKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Link::getClass()
{
	return _class;
}

void
Link::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
Link::getHref()
{
	return href;
}

void
Link::setHref(std::string  href)
{
	this->href = href;
}


