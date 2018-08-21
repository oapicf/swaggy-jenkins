#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QueueBlockedItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QueueBlockedItem::QueueBlockedItem()
{
	//__init();
}

QueueBlockedItem::~QueueBlockedItem()
{
	//__cleanup();
}

void
QueueBlockedItem::__init()
{
	//_class = std::string();
	//new std::list()std::list> actions;
	//blocked = bool(false);
	//buildable = bool(false);
	//id = int(0);
	//inQueueSince = int(0);
	//params = std::string();
	//stuck = bool(false);
	//task = new FreeStyleProject();
	//url = std::string();
	//why = std::string();
	//buildableStartMilliseconds = int(0);
}

void
QueueBlockedItem::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(actions != NULL) {
	//actions.RemoveAll(true);
	//delete actions;
	//actions = NULL;
	//}
	//if(blocked != NULL) {
	//
	//delete blocked;
	//blocked = NULL;
	//}
	//if(buildable != NULL) {
	//
	//delete buildable;
	//buildable = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(inQueueSince != NULL) {
	//
	//delete inQueueSince;
	//inQueueSince = NULL;
	//}
	//if(params != NULL) {
	//
	//delete params;
	//params = NULL;
	//}
	//if(stuck != NULL) {
	//
	//delete stuck;
	//stuck = NULL;
	//}
	//if(task != NULL) {
	//
	//delete task;
	//task = NULL;
	//}
	//if(url != NULL) {
	//
	//delete url;
	//url = NULL;
	//}
	//if(why != NULL) {
	//
	//delete why;
	//why = NULL;
	//}
	//if(buildableStartMilliseconds != NULL) {
	//
	//delete buildableStartMilliseconds;
	//buildableStartMilliseconds = NULL;
	//}
	//
}

void
QueueBlockedItem::fromJson(char* jsonStr)
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
	const gchar *actionsKey = "actions";
	node = json_object_get_member(pJsonObject, actionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CauseAction> new_list;
			CauseAction inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CauseAction")) {
					jsonToValue(&inst, temp_json, "CauseAction", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			actions = new_list;
		}
		
	}
	const gchar *blockedKey = "blocked";
	node = json_object_get_member(pJsonObject, blockedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&blocked, node, "bool", "");
		} else {
			
		}
	}
	const gchar *buildableKey = "buildable";
	node = json_object_get_member(pJsonObject, buildableKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&buildable, node, "bool", "");
		} else {
			
		}
	}
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&id, node, "int", "");
		} else {
			
		}
	}
	const gchar *inQueueSinceKey = "inQueueSince";
	node = json_object_get_member(pJsonObject, inQueueSinceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&inQueueSince, node, "int", "");
		} else {
			
		}
	}
	const gchar *paramsKey = "params";
	node = json_object_get_member(pJsonObject, paramsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&params, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *stuckKey = "stuck";
	node = json_object_get_member(pJsonObject, stuckKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&stuck, node, "bool", "");
		} else {
			
		}
	}
	const gchar *taskKey = "task";
	node = json_object_get_member(pJsonObject, taskKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleProject")) {
			jsonToValue(&task, node, "FreeStyleProject", "FreeStyleProject");
		} else {
			
			FreeStyleProject* obj = static_cast<FreeStyleProject*> (&task);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *urlKey = "url";
	node = json_object_get_member(pJsonObject, urlKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&url, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *whyKey = "why";
	node = json_object_get_member(pJsonObject, whyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&why, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *buildableStartMillisecondsKey = "buildableStartMilliseconds";
	node = json_object_get_member(pJsonObject, buildableStartMillisecondsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&buildableStartMilliseconds, node, "int", "");
		} else {
			
		}
	}
}

QueueBlockedItem::QueueBlockedItem(char* json)
{
	this->fromJson(json);
}

char*
QueueBlockedItem::toJson()
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
	if (isprimitive("CauseAction")) {
		list<CauseAction> new_list = static_cast<list <CauseAction> > (getActions());
		node = converttoJson(&new_list, "CauseAction", "array");
	} else {
		node = json_node_alloc();
		list<CauseAction> new_list = static_cast<list <CauseAction> > (getActions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CauseAction>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CauseAction obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *actionsKey = "actions";
	json_object_set_member(pJsonObject, actionsKey, node);
	if (isprimitive("bool")) {
		bool obj = getBlocked();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *blockedKey = "blocked";
	json_object_set_member(pJsonObject, blockedKey, node);
	if (isprimitive("bool")) {
		bool obj = getBuildable();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *buildableKey = "buildable";
	json_object_set_member(pJsonObject, buildableKey, node);
	if (isprimitive("int")) {
		int obj = getId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("int")) {
		int obj = getInQueueSince();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *inQueueSinceKey = "inQueueSince";
	json_object_set_member(pJsonObject, inQueueSinceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getParams();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *paramsKey = "params";
	json_object_set_member(pJsonObject, paramsKey, node);
	if (isprimitive("bool")) {
		bool obj = getStuck();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *stuckKey = "stuck";
	json_object_set_member(pJsonObject, stuckKey, node);
	if (isprimitive("FreeStyleProject")) {
		FreeStyleProject obj = getTask();
		node = converttoJson(&obj, "FreeStyleProject", "");
	}
	else {
		
		FreeStyleProject obj = static_cast<FreeStyleProject> (getTask());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *taskKey = "task";
	json_object_set_member(pJsonObject, taskKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *urlKey = "url";
	json_object_set_member(pJsonObject, urlKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getWhy();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *whyKey = "why";
	json_object_set_member(pJsonObject, whyKey, node);
	if (isprimitive("int")) {
		int obj = getBuildableStartMilliseconds();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *buildableStartMillisecondsKey = "buildableStartMilliseconds";
	json_object_set_member(pJsonObject, buildableStartMillisecondsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
QueueBlockedItem::getClass()
{
	return _class;
}

void
QueueBlockedItem::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<CauseAction>
QueueBlockedItem::getActions()
{
	return actions;
}

void
QueueBlockedItem::setActions(std::list <CauseAction> actions)
{
	this->actions = actions;
}

bool
QueueBlockedItem::getBlocked()
{
	return blocked;
}

void
QueueBlockedItem::setBlocked(bool  blocked)
{
	this->blocked = blocked;
}

bool
QueueBlockedItem::getBuildable()
{
	return buildable;
}

void
QueueBlockedItem::setBuildable(bool  buildable)
{
	this->buildable = buildable;
}

int
QueueBlockedItem::getId()
{
	return id;
}

void
QueueBlockedItem::setId(int  id)
{
	this->id = id;
}

int
QueueBlockedItem::getInQueueSince()
{
	return inQueueSince;
}

void
QueueBlockedItem::setInQueueSince(int  inQueueSince)
{
	this->inQueueSince = inQueueSince;
}

std::string
QueueBlockedItem::getParams()
{
	return params;
}

void
QueueBlockedItem::setParams(std::string  params)
{
	this->params = params;
}

bool
QueueBlockedItem::getStuck()
{
	return stuck;
}

void
QueueBlockedItem::setStuck(bool  stuck)
{
	this->stuck = stuck;
}

FreeStyleProject
QueueBlockedItem::getTask()
{
	return task;
}

void
QueueBlockedItem::setTask(FreeStyleProject  task)
{
	this->task = task;
}

std::string
QueueBlockedItem::getUrl()
{
	return url;
}

void
QueueBlockedItem::setUrl(std::string  url)
{
	this->url = url;
}

std::string
QueueBlockedItem::getWhy()
{
	return why;
}

void
QueueBlockedItem::setWhy(std::string  why)
{
	this->why = why;
}

int
QueueBlockedItem::getBuildableStartMilliseconds()
{
	return buildableStartMilliseconds;
}

void
QueueBlockedItem::setBuildableStartMilliseconds(int  buildableStartMilliseconds)
{
	this->buildableStartMilliseconds = buildableStartMilliseconds;
}


