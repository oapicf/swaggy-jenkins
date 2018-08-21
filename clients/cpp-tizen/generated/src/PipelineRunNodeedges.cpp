#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineRunNodeedges.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineRunNodeedges::PipelineRunNodeedges()
{
	//__init();
}

PipelineRunNodeedges::~PipelineRunNodeedges()
{
	//__cleanup();
}

void
PipelineRunNodeedges::__init()
{
	//id = std::string();
	//_class = std::string();
}

void
PipelineRunNodeedges::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
PipelineRunNodeedges::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
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

PipelineRunNodeedges::PipelineRunNodeedges(char* json)
{
	this->fromJson(json);
}

char*
PipelineRunNodeedges::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
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
PipelineRunNodeedges::getId()
{
	return id;
}

void
PipelineRunNodeedges::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineRunNodeedges::getClass()
{
	return _class;
}

void
PipelineRunNodeedges::setClass(std::string  _class)
{
	this->_class = _class;
}


