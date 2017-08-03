#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ClockDifference.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ClockDifference::ClockDifference()
{
	//__init();
}

ClockDifference::~ClockDifference()
{
	//__cleanup();
}

void
ClockDifference::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//diff = null;
	//
}

void
ClockDifference::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(diff != NULL) {
	//
	//delete diff;
	//diff = NULL;
	//}
	//
}

void
ClockDifference::fromJson(char* jsonStr)
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
	const gchar *diffKey = "diff";
	node = json_object_get_member(pJsonObject, diffKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&diff, node, "int", "");
		} else {
			
		}
	}
}

ClockDifference::ClockDifference(char* json)
{
	this->fromJson(json);
}

char*
ClockDifference::toJson()
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
	if (isprimitive("int")) {
		int obj = getDiff();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *diffKey = "diff";
	json_object_set_member(pJsonObject, diffKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ClockDifference::getClass()
{
	return _class;
}

void
ClockDifference::setClass(std::string  _class)
{
	this->_class = _class;
}

int
ClockDifference::getDiff()
{
	return diff;
}

void
ClockDifference::setDiff(int  diff)
{
	this->diff = diff;
}


