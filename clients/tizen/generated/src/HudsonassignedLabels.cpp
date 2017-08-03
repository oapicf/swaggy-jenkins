#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "HudsonassignedLabels.h"

using namespace std;
using namespace Tizen::ArtikCloud;

HudsonassignedLabels::HudsonassignedLabels()
{
	//__init();
}

HudsonassignedLabels::~HudsonassignedLabels()
{
	//__cleanup();
}

void
HudsonassignedLabels::__init()
{
	//
	//
	//_class = std::string();
	//
}

void
HudsonassignedLabels::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
HudsonassignedLabels::fromJson(char* jsonStr)
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
}

HudsonassignedLabels::HudsonassignedLabels(char* json)
{
	this->fromJson(json);
}

char*
HudsonassignedLabels::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
HudsonassignedLabels::getClass()
{
	return _class;
}

void
HudsonassignedLabels::setClass(std::string  _class)
{
	this->_class = _class;
}


