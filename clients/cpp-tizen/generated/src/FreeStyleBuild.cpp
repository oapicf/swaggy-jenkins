#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "FreeStyleBuild.h"

using namespace std;
using namespace Tizen::ArtikCloud;

FreeStyleBuild::FreeStyleBuild()
{
	//__init();
}

FreeStyleBuild::~FreeStyleBuild()
{
	//__cleanup();
}

void
FreeStyleBuild::__init()
{
	//_class = std::string();
	//number = int(0);
	//url = std::string();
	//new std::list()std::list> actions;
	//building = bool(false);
	//description = std::string();
	//displayName = std::string();
	//duration = int(0);
	//estimatedDuration = int(0);
	//executor = std::string();
	//fullDisplayName = std::string();
	//id = std::string();
	//keepLog = bool(false);
	//queueId = int(0);
	//result = std::string();
	//timestamp = int(0);
	//builtOn = std::string();
	//changeSet = new EmptyChangeLogSet();
}

void
FreeStyleBuild::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(number != NULL) {
	//
	//delete number;
	//number = NULL;
	//}
	//if(url != NULL) {
	//
	//delete url;
	//url = NULL;
	//}
	//if(actions != NULL) {
	//actions.RemoveAll(true);
	//delete actions;
	//actions = NULL;
	//}
	//if(building != NULL) {
	//
	//delete building;
	//building = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(displayName != NULL) {
	//
	//delete displayName;
	//displayName = NULL;
	//}
	//if(duration != NULL) {
	//
	//delete duration;
	//duration = NULL;
	//}
	//if(estimatedDuration != NULL) {
	//
	//delete estimatedDuration;
	//estimatedDuration = NULL;
	//}
	//if(executor != NULL) {
	//
	//delete executor;
	//executor = NULL;
	//}
	//if(fullDisplayName != NULL) {
	//
	//delete fullDisplayName;
	//fullDisplayName = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(keepLog != NULL) {
	//
	//delete keepLog;
	//keepLog = NULL;
	//}
	//if(queueId != NULL) {
	//
	//delete queueId;
	//queueId = NULL;
	//}
	//if(result != NULL) {
	//
	//delete result;
	//result = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(builtOn != NULL) {
	//
	//delete builtOn;
	//builtOn = NULL;
	//}
	//if(changeSet != NULL) {
	//
	//delete changeSet;
	//changeSet = NULL;
	//}
	//
}

void
FreeStyleBuild::fromJson(char* jsonStr)
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
	const gchar *numberKey = "number";
	node = json_object_get_member(pJsonObject, numberKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&number, node, "int", "");
		} else {
			
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
	const gchar *buildingKey = "building";
	node = json_object_get_member(pJsonObject, buildingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&building, node, "bool", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
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
	const gchar *durationKey = "duration";
	node = json_object_get_member(pJsonObject, durationKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&duration, node, "int", "");
		} else {
			
		}
	}
	const gchar *estimatedDurationKey = "estimatedDuration";
	node = json_object_get_member(pJsonObject, estimatedDurationKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&estimatedDuration, node, "int", "");
		} else {
			
		}
	}
	const gchar *executorKey = "executor";
	node = json_object_get_member(pJsonObject, executorKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&executor, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fullDisplayNameKey = "fullDisplayName";
	node = json_object_get_member(pJsonObject, fullDisplayNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fullDisplayName, node, "std::string", "");
		} else {
			
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
	const gchar *keepLogKey = "keepLog";
	node = json_object_get_member(pJsonObject, keepLogKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&keepLog, node, "bool", "");
		} else {
			
		}
	}
	const gchar *queueIdKey = "queueId";
	node = json_object_get_member(pJsonObject, queueIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&queueId, node, "int", "");
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
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&timestamp, node, "int", "");
		} else {
			
		}
	}
	const gchar *builtOnKey = "builtOn";
	node = json_object_get_member(pJsonObject, builtOnKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&builtOn, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *changeSetKey = "changeSet";
	node = json_object_get_member(pJsonObject, changeSetKey);
	if (node !=NULL) {
	

		if (isprimitive("EmptyChangeLogSet")) {
			jsonToValue(&changeSet, node, "EmptyChangeLogSet", "EmptyChangeLogSet");
		} else {
			
			EmptyChangeLogSet* obj = static_cast<EmptyChangeLogSet*> (&changeSet);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

FreeStyleBuild::FreeStyleBuild(char* json)
{
	this->fromJson(json);
}

char*
FreeStyleBuild::toJson()
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
		int obj = getNumber();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberKey = "number";
	json_object_set_member(pJsonObject, numberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *urlKey = "url";
	json_object_set_member(pJsonObject, urlKey, node);
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
		bool obj = getBuilding();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *buildingKey = "building";
	json_object_set_member(pJsonObject, buildingKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *displayNameKey = "displayName";
	json_object_set_member(pJsonObject, displayNameKey, node);
	if (isprimitive("int")) {
		int obj = getDuration();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *durationKey = "duration";
	json_object_set_member(pJsonObject, durationKey, node);
	if (isprimitive("int")) {
		int obj = getEstimatedDuration();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *estimatedDurationKey = "estimatedDuration";
	json_object_set_member(pJsonObject, estimatedDurationKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExecutor();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *executorKey = "executor";
	json_object_set_member(pJsonObject, executorKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFullDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullDisplayNameKey = "fullDisplayName";
	json_object_set_member(pJsonObject, fullDisplayNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("bool")) {
		bool obj = getKeepLog();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *keepLogKey = "keepLog";
	json_object_set_member(pJsonObject, keepLogKey, node);
	if (isprimitive("int")) {
		int obj = getQueueId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *queueIdKey = "queueId";
	json_object_set_member(pJsonObject, queueIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResult();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *resultKey = "result";
	json_object_set_member(pJsonObject, resultKey, node);
	if (isprimitive("int")) {
		int obj = getTimestamp();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBuiltOn();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *builtOnKey = "builtOn";
	json_object_set_member(pJsonObject, builtOnKey, node);
	if (isprimitive("EmptyChangeLogSet")) {
		EmptyChangeLogSet obj = getChangeSet();
		node = converttoJson(&obj, "EmptyChangeLogSet", "");
	}
	else {
		
		EmptyChangeLogSet obj = static_cast<EmptyChangeLogSet> (getChangeSet());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *changeSetKey = "changeSet";
	json_object_set_member(pJsonObject, changeSetKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
FreeStyleBuild::getClass()
{
	return _class;
}

void
FreeStyleBuild::setClass(std::string  _class)
{
	this->_class = _class;
}

int
FreeStyleBuild::getNumber()
{
	return number;
}

void
FreeStyleBuild::setNumber(int  number)
{
	this->number = number;
}

std::string
FreeStyleBuild::getUrl()
{
	return url;
}

void
FreeStyleBuild::setUrl(std::string  url)
{
	this->url = url;
}

std::list<CauseAction>
FreeStyleBuild::getActions()
{
	return actions;
}

void
FreeStyleBuild::setActions(std::list <CauseAction> actions)
{
	this->actions = actions;
}

bool
FreeStyleBuild::getBuilding()
{
	return building;
}

void
FreeStyleBuild::setBuilding(bool  building)
{
	this->building = building;
}

std::string
FreeStyleBuild::getDescription()
{
	return description;
}

void
FreeStyleBuild::setDescription(std::string  description)
{
	this->description = description;
}

std::string
FreeStyleBuild::getDisplayName()
{
	return displayName;
}

void
FreeStyleBuild::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
FreeStyleBuild::getDuration()
{
	return duration;
}

void
FreeStyleBuild::setDuration(int  duration)
{
	this->duration = duration;
}

int
FreeStyleBuild::getEstimatedDuration()
{
	return estimatedDuration;
}

void
FreeStyleBuild::setEstimatedDuration(int  estimatedDuration)
{
	this->estimatedDuration = estimatedDuration;
}

std::string
FreeStyleBuild::getExecutor()
{
	return executor;
}

void
FreeStyleBuild::setExecutor(std::string  executor)
{
	this->executor = executor;
}

std::string
FreeStyleBuild::getFullDisplayName()
{
	return fullDisplayName;
}

void
FreeStyleBuild::setFullDisplayName(std::string  fullDisplayName)
{
	this->fullDisplayName = fullDisplayName;
}

std::string
FreeStyleBuild::getId()
{
	return id;
}

void
FreeStyleBuild::setId(std::string  id)
{
	this->id = id;
}

bool
FreeStyleBuild::getKeepLog()
{
	return keepLog;
}

void
FreeStyleBuild::setKeepLog(bool  keepLog)
{
	this->keepLog = keepLog;
}

int
FreeStyleBuild::getQueueId()
{
	return queueId;
}

void
FreeStyleBuild::setQueueId(int  queueId)
{
	this->queueId = queueId;
}

std::string
FreeStyleBuild::getResult()
{
	return result;
}

void
FreeStyleBuild::setResult(std::string  result)
{
	this->result = result;
}

int
FreeStyleBuild::getTimestamp()
{
	return timestamp;
}

void
FreeStyleBuild::setTimestamp(int  timestamp)
{
	this->timestamp = timestamp;
}

std::string
FreeStyleBuild::getBuiltOn()
{
	return builtOn;
}

void
FreeStyleBuild::setBuiltOn(std::string  builtOn)
{
	this->builtOn = builtOn;
}

EmptyChangeLogSet
FreeStyleBuild::getChangeSet()
{
	return changeSet;
}

void
FreeStyleBuild::setChangeSet(EmptyChangeLogSet  changeSet)
{
	this->changeSet = changeSet;
}


