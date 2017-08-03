#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineRunImpllinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineRunImpllinks::PipelineRunImpllinks()
{
	//__init();
}

PipelineRunImpllinks::~PipelineRunImpllinks()
{
	//__cleanup();
}

void
PipelineRunImpllinks::__init()
{
	//
	//
	//nodes = new Link();
	//
	//
	//log = new Link();
	//
	//
	//self = new Link();
	//
	//
	//actions = new Link();
	//
	//
	//steps = new Link();
	//
	//
	//_class = std::string();
	//
}

void
PipelineRunImpllinks::__cleanup()
{
	//if(nodes != NULL) {
	//
	//delete nodes;
	//nodes = NULL;
	//}
	//if(log != NULL) {
	//
	//delete log;
	//log = NULL;
	//}
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(actions != NULL) {
	//
	//delete actions;
	//actions = NULL;
	//}
	//if(steps != NULL) {
	//
	//delete steps;
	//steps = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
PipelineRunImpllinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nodesKey = "nodes";
	node = json_object_get_member(pJsonObject, nodesKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&nodes, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&nodes);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *logKey = "log";
	node = json_object_get_member(pJsonObject, logKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&log, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&log);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&self, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *actionsKey = "actions";
	node = json_object_get_member(pJsonObject, actionsKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&actions, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&actions);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *stepsKey = "steps";
	node = json_object_get_member(pJsonObject, stepsKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&steps, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&steps);
			obj->fromJson(json_to_string(node, false));
			
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

PipelineRunImpllinks::PipelineRunImpllinks(char* json)
{
	this->fromJson(json);
}

char*
PipelineRunImpllinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Link")) {
		Link obj = getNodes();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getNodes());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *nodesKey = "nodes";
	json_object_set_member(pJsonObject, nodesKey, node);
	if (isprimitive("Link")) {
		Link obj = getLog();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getLog());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *logKey = "log";
	json_object_set_member(pJsonObject, logKey, node);
	if (isprimitive("Link")) {
		Link obj = getSelf();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("Link")) {
		Link obj = getActions();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getActions());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *actionsKey = "actions";
	json_object_set_member(pJsonObject, actionsKey, node);
	if (isprimitive("Link")) {
		Link obj = getSteps();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getSteps());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *stepsKey = "steps";
	json_object_set_member(pJsonObject, stepsKey, node);
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

Link
PipelineRunImpllinks::getNodes()
{
	return nodes;
}

void
PipelineRunImpllinks::setNodes(Link  nodes)
{
	this->nodes = nodes;
}

Link
PipelineRunImpllinks::getLog()
{
	return log;
}

void
PipelineRunImpllinks::setLog(Link  log)
{
	this->log = log;
}

Link
PipelineRunImpllinks::getSelf()
{
	return self;
}

void
PipelineRunImpllinks::setSelf(Link  self)
{
	this->self = self;
}

Link
PipelineRunImpllinks::getActions()
{
	return actions;
}

void
PipelineRunImpllinks::setActions(Link  actions)
{
	this->actions = actions;
}

Link
PipelineRunImpllinks::getSteps()
{
	return steps;
}

void
PipelineRunImpllinks::setSteps(Link  steps)
{
	this->steps = steps;
}

std::string
PipelineRunImpllinks::getClass()
{
	return _class;
}

void
PipelineRunImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}


