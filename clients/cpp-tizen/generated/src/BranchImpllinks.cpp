#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "BranchImpllinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

BranchImpllinks::BranchImpllinks()
{
	//__init();
}

BranchImpllinks::~BranchImpllinks()
{
	//__cleanup();
}

void
BranchImpllinks::__init()
{
	//self = new Link();
	//actions = new Link();
	//runs = new Link();
	//queue = new Link();
	//_class = std::string();
}

void
BranchImpllinks::__cleanup()
{
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
	//if(runs != NULL) {
	//
	//delete runs;
	//runs = NULL;
	//}
	//if(queue != NULL) {
	//
	//delete queue;
	//queue = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
BranchImpllinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
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
	const gchar *runsKey = "runs";
	node = json_object_get_member(pJsonObject, runsKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&runs, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&runs);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *queueKey = "queue";
	node = json_object_get_member(pJsonObject, queueKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&queue, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&queue);
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

BranchImpllinks::BranchImpllinks(char* json)
{
	this->fromJson(json);
}

char*
BranchImpllinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
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
		Link obj = getRuns();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getRuns());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *runsKey = "runs";
	json_object_set_member(pJsonObject, runsKey, node);
	if (isprimitive("Link")) {
		Link obj = getQueue();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getQueue());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *queueKey = "queue";
	json_object_set_member(pJsonObject, queueKey, node);
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
BranchImpllinks::getSelf()
{
	return self;
}

void
BranchImpllinks::setSelf(Link  self)
{
	this->self = self;
}

Link
BranchImpllinks::getActions()
{
	return actions;
}

void
BranchImpllinks::setActions(Link  actions)
{
	this->actions = actions;
}

Link
BranchImpllinks::getRuns()
{
	return runs;
}

void
BranchImpllinks::setRuns(Link  runs)
{
	this->runs = runs;
}

Link
BranchImpllinks::getQueue()
{
	return queue;
}

void
BranchImpllinks::setQueue(Link  queue)
{
	this->queue = queue;
}

std::string
BranchImpllinks::getClass()
{
	return _class;
}

void
BranchImpllinks::setClass(std::string  _class)
{
	this->_class = _class;
}


