#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QueueLeftItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QueueLeftItem::QueueLeftItem()
{
	//__init();
}

QueueLeftItem::~QueueLeftItem()
{
	//__cleanup();
}

void
QueueLeftItem::__init()
{
	//
	//
	//_class = std::string();
	//
	//new std::list()std::list> actions;
	//
	//
	//
	//blocked = bool(false);
	//
	//
	//buildable = bool(false);
	//
	//
	//id = null;
	//
	//
	//inQueueSince = null;
	//
	//
	//params = std::string();
	//
	//
	//stuck = bool(false);
	//
	//
	//task = new FreeStyleProject();
	//
	//
	//url = std::string();
	//
	//
	//why = std::string();
	//
	//
	//cancelled = bool(false);
	//
	//
	//executable = new FreeStyleBuild();
	//
}

void
QueueLeftItem::__cleanup()
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
	//if(cancelled != NULL) {
	//
	//delete cancelled;
	//cancelled = NULL;
	//}
	//if(executable != NULL) {
	//
	//delete executable;
	//executable = NULL;
	//}
	//
}

void
QueueLeftItem::fromJson(char* jsonStr)
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
	const gchar *cancelledKey = "cancelled";
	node = json_object_get_member(pJsonObject, cancelledKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&cancelled, node, "bool", "");
		} else {
			
		}
	}
	const gchar *executableKey = "executable";
	node = json_object_get_member(pJsonObject, executableKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleBuild")) {
			jsonToValue(&executable, node, "FreeStyleBuild", "FreeStyleBuild");
		} else {
			
			FreeStyleBuild* obj = static_cast<FreeStyleBuild*> (&executable);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QueueLeftItem::QueueLeftItem(char* json)
{
	this->fromJson(json);
}

char*
QueueLeftItem::toJson()
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
	if (isprimitive("bool")) {
		bool obj = getCancelled();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *cancelledKey = "cancelled";
	json_object_set_member(pJsonObject, cancelledKey, node);
	if (isprimitive("FreeStyleBuild")) {
		FreeStyleBuild obj = getExecutable();
		node = converttoJson(&obj, "FreeStyleBuild", "");
	}
	else {
		
		FreeStyleBuild obj = static_cast<FreeStyleBuild> (getExecutable());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *executableKey = "executable";
	json_object_set_member(pJsonObject, executableKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
QueueLeftItem::getClass()
{
	return _class;
}

void
QueueLeftItem::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<CauseAction>
QueueLeftItem::getActions()
{
	return actions;
}

void
QueueLeftItem::setActions(std::list <CauseAction> actions)
{
	this->actions = actions;
}

bool
QueueLeftItem::getBlocked()
{
	return blocked;
}

void
QueueLeftItem::setBlocked(bool  blocked)
{
	this->blocked = blocked;
}

bool
QueueLeftItem::getBuildable()
{
	return buildable;
}

void
QueueLeftItem::setBuildable(bool  buildable)
{
	this->buildable = buildable;
}

int
QueueLeftItem::getId()
{
	return id;
}

void
QueueLeftItem::setId(int  id)
{
	this->id = id;
}

int
QueueLeftItem::getInQueueSince()
{
	return inQueueSince;
}

void
QueueLeftItem::setInQueueSince(int  inQueueSince)
{
	this->inQueueSince = inQueueSince;
}

std::string
QueueLeftItem::getParams()
{
	return params;
}

void
QueueLeftItem::setParams(std::string  params)
{
	this->params = params;
}

bool
QueueLeftItem::getStuck()
{
	return stuck;
}

void
QueueLeftItem::setStuck(bool  stuck)
{
	this->stuck = stuck;
}

FreeStyleProject
QueueLeftItem::getTask()
{
	return task;
}

void
QueueLeftItem::setTask(FreeStyleProject  task)
{
	this->task = task;
}

std::string
QueueLeftItem::getUrl()
{
	return url;
}

void
QueueLeftItem::setUrl(std::string  url)
{
	this->url = url;
}

std::string
QueueLeftItem::getWhy()
{
	return why;
}

void
QueueLeftItem::setWhy(std::string  why)
{
	this->why = why;
}

bool
QueueLeftItem::getCancelled()
{
	return cancelled;
}

void
QueueLeftItem::setCancelled(bool  cancelled)
{
	this->cancelled = cancelled;
}

FreeStyleBuild
QueueLeftItem::getExecutable()
{
	return executable;
}

void
QueueLeftItem::setExecutable(FreeStyleBuild  executable)
{
	this->executable = executable;
}


