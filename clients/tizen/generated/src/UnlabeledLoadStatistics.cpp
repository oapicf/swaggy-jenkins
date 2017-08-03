#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UnlabeledLoadStatistics.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UnlabeledLoadStatistics::UnlabeledLoadStatistics()
{
	//__init();
}

UnlabeledLoadStatistics::~UnlabeledLoadStatistics()
{
	//__cleanup();
}

void
UnlabeledLoadStatistics::__init()
{
	//
	//
	//_class = std::string();
	//
}

void
UnlabeledLoadStatistics::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
UnlabeledLoadStatistics::fromJson(char* jsonStr)
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

UnlabeledLoadStatistics::UnlabeledLoadStatistics(char* json)
{
	this->fromJson(json);
}

char*
UnlabeledLoadStatistics::toJson()
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
UnlabeledLoadStatistics::getClass()
{
	return _class;
}

void
UnlabeledLoadStatistics::setClass(std::string  _class)
{
	this->_class = _class;
}


