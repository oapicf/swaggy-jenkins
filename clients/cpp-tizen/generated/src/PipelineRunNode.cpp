#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineRunNode.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineRunNode::PipelineRunNode()
{
	//__init();
}

PipelineRunNode::~PipelineRunNode()
{
	//__cleanup();
}

void
PipelineRunNode::__init()
{
	//_class = std::string();
	//displayName = std::string();
	//durationInMillis = int(0);
	//new std::list()std::list> edges;
	//id = std::string();
	//result = std::string();
	//startTime = std::string();
	//state = std::string();
}

void
PipelineRunNode::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(displayName != NULL) {
	//
	//delete displayName;
	//displayName = NULL;
	//}
	//if(durationInMillis != NULL) {
	//
	//delete durationInMillis;
	//durationInMillis = NULL;
	//}
	//if(edges != NULL) {
	//edges.RemoveAll(true);
	//delete edges;
	//edges = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(result != NULL) {
	//
	//delete result;
	//result = NULL;
	//}
	//if(startTime != NULL) {
	//
	//delete startTime;
	//startTime = NULL;
	//}
	//if(state != NULL) {
	//
	//delete state;
	//state = NULL;
	//}
	//
}

void
PipelineRunNode::fromJson(char* jsonStr)
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
	const gchar *displayNameKey = "displayName";
	node = json_object_get_member(pJsonObject, displayNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&displayName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *durationInMillisKey = "durationInMillis";
	node = json_object_get_member(pJsonObject, durationInMillisKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&durationInMillis, node, "int", "");
		} else {
			
		}
	}
	const gchar *edgesKey = "edges";
	node = json_object_get_member(pJsonObject, edgesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<PipelineRunNodeedges> new_list;
			PipelineRunNodeedges inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("PipelineRunNodeedges")) {
					jsonToValue(&inst, temp_json, "PipelineRunNodeedges", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			edges = new_list;
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
	const gchar *resultKey = "result";
	node = json_object_get_member(pJsonObject, resultKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&result, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *startTimeKey = "startTime";
	node = json_object_get_member(pJsonObject, startTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&startTime, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *stateKey = "state";
	node = json_object_get_member(pJsonObject, stateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&state, node, "std::string", "");
		} else {
			
		}
	}
}

PipelineRunNode::PipelineRunNode(char* json)
{
	this->fromJson(json);
}

char*
PipelineRunNode::toJson()
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
		std::string obj = getDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *displayNameKey = "displayName";
	json_object_set_member(pJsonObject, displayNameKey, node);
	if (isprimitive("int")) {
		int obj = getDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *durationInMillisKey = "durationInMillis";
	json_object_set_member(pJsonObject, durationInMillisKey, node);
	if (isprimitive("PipelineRunNodeedges")) {
		list<PipelineRunNodeedges> new_list = static_cast<list <PipelineRunNodeedges> > (getEdges());
		node = converttoJson(&new_list, "PipelineRunNodeedges", "array");
	} else {
		node = json_node_alloc();
		list<PipelineRunNodeedges> new_list = static_cast<list <PipelineRunNodeedges> > (getEdges());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<PipelineRunNodeedges>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			PipelineRunNodeedges obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *edgesKey = "edges";
	json_object_set_member(pJsonObject, edgesKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResult();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *resultKey = "result";
	json_object_set_member(pJsonObject, resultKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStartTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *startTimeKey = "startTime";
	json_object_set_member(pJsonObject, startTimeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getState();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *stateKey = "state";
	json_object_set_member(pJsonObject, stateKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PipelineRunNode::getClass()
{
	return _class;
}

void
PipelineRunNode::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
PipelineRunNode::getDisplayName()
{
	return displayName;
}

void
PipelineRunNode::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
PipelineRunNode::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelineRunNode::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

std::list<PipelineRunNodeedges>
PipelineRunNode::getEdges()
{
	return edges;
}

void
PipelineRunNode::setEdges(std::list <PipelineRunNodeedges> edges)
{
	this->edges = edges;
}

std::string
PipelineRunNode::getId()
{
	return id;
}

void
PipelineRunNode::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineRunNode::getResult()
{
	return result;
}

void
PipelineRunNode::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelineRunNode::getStartTime()
{
	return startTime;
}

void
PipelineRunNode::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelineRunNode::getState()
{
	return state;
}

void
PipelineRunNode::setState(std::string  state)
{
	this->state = state;
}


