#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "HudsonMasterComputer.h"

using namespace std;
using namespace Tizen::ArtikCloud;

HudsonMasterComputer::HudsonMasterComputer()
{
	//__init();
}

HudsonMasterComputer::~HudsonMasterComputer()
{
	//__cleanup();
}

void
HudsonMasterComputer::__init()
{
	//_class = std::string();
	//displayName = std::string();
	//new std::list()std::list> executors;
	//icon = std::string();
	//iconClassName = std::string();
	//idle = bool(false);
	//jnlpAgent = bool(false);
	//launchSupported = bool(false);
	//loadStatistics = new Label1();
	//manualLaunchAllowed = bool(false);
	//monitorData = new HudsonMasterComputermonitorData();
	//numExecutors = int(0);
	//offline = bool(false);
	//offlineCause = std::string();
	//offlineCauseReason = std::string();
	//temporarilyOffline = bool(false);
}

void
HudsonMasterComputer::__cleanup()
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
	//if(executors != NULL) {
	//executors.RemoveAll(true);
	//delete executors;
	//executors = NULL;
	//}
	//if(icon != NULL) {
	//
	//delete icon;
	//icon = NULL;
	//}
	//if(iconClassName != NULL) {
	//
	//delete iconClassName;
	//iconClassName = NULL;
	//}
	//if(idle != NULL) {
	//
	//delete idle;
	//idle = NULL;
	//}
	//if(jnlpAgent != NULL) {
	//
	//delete jnlpAgent;
	//jnlpAgent = NULL;
	//}
	//if(launchSupported != NULL) {
	//
	//delete launchSupported;
	//launchSupported = NULL;
	//}
	//if(loadStatistics != NULL) {
	//
	//delete loadStatistics;
	//loadStatistics = NULL;
	//}
	//if(manualLaunchAllowed != NULL) {
	//
	//delete manualLaunchAllowed;
	//manualLaunchAllowed = NULL;
	//}
	//if(monitorData != NULL) {
	//
	//delete monitorData;
	//monitorData = NULL;
	//}
	//if(numExecutors != NULL) {
	//
	//delete numExecutors;
	//numExecutors = NULL;
	//}
	//if(offline != NULL) {
	//
	//delete offline;
	//offline = NULL;
	//}
	//if(offlineCause != NULL) {
	//
	//delete offlineCause;
	//offlineCause = NULL;
	//}
	//if(offlineCauseReason != NULL) {
	//
	//delete offlineCauseReason;
	//offlineCauseReason = NULL;
	//}
	//if(temporarilyOffline != NULL) {
	//
	//delete temporarilyOffline;
	//temporarilyOffline = NULL;
	//}
	//
}

void
HudsonMasterComputer::fromJson(char* jsonStr)
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
	const gchar *executorsKey = "executors";
	node = json_object_get_member(pJsonObject, executorsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<HudsonMasterComputerexecutors> new_list;
			HudsonMasterComputerexecutors inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("HudsonMasterComputerexecutors")) {
					jsonToValue(&inst, temp_json, "HudsonMasterComputerexecutors", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			executors = new_list;
		}
		
	}
	const gchar *iconKey = "icon";
	node = json_object_get_member(pJsonObject, iconKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&icon, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iconClassNameKey = "iconClassName";
	node = json_object_get_member(pJsonObject, iconClassNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iconClassName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *idleKey = "idle";
	node = json_object_get_member(pJsonObject, idleKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&idle, node, "bool", "");
		} else {
			
		}
	}
	const gchar *jnlpAgentKey = "jnlpAgent";
	node = json_object_get_member(pJsonObject, jnlpAgentKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&jnlpAgent, node, "bool", "");
		} else {
			
		}
	}
	const gchar *launchSupportedKey = "launchSupported";
	node = json_object_get_member(pJsonObject, launchSupportedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&launchSupported, node, "bool", "");
		} else {
			
		}
	}
	const gchar *loadStatisticsKey = "loadStatistics";
	node = json_object_get_member(pJsonObject, loadStatisticsKey);
	if (node !=NULL) {
	

		if (isprimitive("Label1")) {
			jsonToValue(&loadStatistics, node, "Label1", "Label1");
		} else {
			
			Label1* obj = static_cast<Label1*> (&loadStatistics);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *manualLaunchAllowedKey = "manualLaunchAllowed";
	node = json_object_get_member(pJsonObject, manualLaunchAllowedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&manualLaunchAllowed, node, "bool", "");
		} else {
			
		}
	}
	const gchar *monitorDataKey = "monitorData";
	node = json_object_get_member(pJsonObject, monitorDataKey);
	if (node !=NULL) {
	

		if (isprimitive("HudsonMasterComputermonitorData")) {
			jsonToValue(&monitorData, node, "HudsonMasterComputermonitorData", "HudsonMasterComputermonitorData");
		} else {
			
			HudsonMasterComputermonitorData* obj = static_cast<HudsonMasterComputermonitorData*> (&monitorData);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *numExecutorsKey = "numExecutors";
	node = json_object_get_member(pJsonObject, numExecutorsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&numExecutors, node, "int", "");
		} else {
			
		}
	}
	const gchar *offlineKey = "offline";
	node = json_object_get_member(pJsonObject, offlineKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&offline, node, "bool", "");
		} else {
			
		}
	}
	const gchar *offlineCauseKey = "offlineCause";
	node = json_object_get_member(pJsonObject, offlineCauseKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&offlineCause, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *offlineCauseReasonKey = "offlineCauseReason";
	node = json_object_get_member(pJsonObject, offlineCauseReasonKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&offlineCauseReason, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *temporarilyOfflineKey = "temporarilyOffline";
	node = json_object_get_member(pJsonObject, temporarilyOfflineKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&temporarilyOffline, node, "bool", "");
		} else {
			
		}
	}
}

HudsonMasterComputer::HudsonMasterComputer(char* json)
{
	this->fromJson(json);
}

char*
HudsonMasterComputer::toJson()
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
	if (isprimitive("HudsonMasterComputerexecutors")) {
		list<HudsonMasterComputerexecutors> new_list = static_cast<list <HudsonMasterComputerexecutors> > (getExecutors());
		node = converttoJson(&new_list, "HudsonMasterComputerexecutors", "array");
	} else {
		node = json_node_alloc();
		list<HudsonMasterComputerexecutors> new_list = static_cast<list <HudsonMasterComputerexecutors> > (getExecutors());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<HudsonMasterComputerexecutors>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			HudsonMasterComputerexecutors obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *executorsKey = "executors";
	json_object_set_member(pJsonObject, executorsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIcon();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iconKey = "icon";
	json_object_set_member(pJsonObject, iconKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIconClassName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iconClassNameKey = "iconClassName";
	json_object_set_member(pJsonObject, iconClassNameKey, node);
	if (isprimitive("bool")) {
		bool obj = getIdle();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *idleKey = "idle";
	json_object_set_member(pJsonObject, idleKey, node);
	if (isprimitive("bool")) {
		bool obj = getJnlpAgent();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *jnlpAgentKey = "jnlpAgent";
	json_object_set_member(pJsonObject, jnlpAgentKey, node);
	if (isprimitive("bool")) {
		bool obj = getLaunchSupported();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *launchSupportedKey = "launchSupported";
	json_object_set_member(pJsonObject, launchSupportedKey, node);
	if (isprimitive("Label1")) {
		Label1 obj = getLoadStatistics();
		node = converttoJson(&obj, "Label1", "");
	}
	else {
		
		Label1 obj = static_cast<Label1> (getLoadStatistics());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *loadStatisticsKey = "loadStatistics";
	json_object_set_member(pJsonObject, loadStatisticsKey, node);
	if (isprimitive("bool")) {
		bool obj = getManualLaunchAllowed();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *manualLaunchAllowedKey = "manualLaunchAllowed";
	json_object_set_member(pJsonObject, manualLaunchAllowedKey, node);
	if (isprimitive("HudsonMasterComputermonitorData")) {
		HudsonMasterComputermonitorData obj = getMonitorData();
		node = converttoJson(&obj, "HudsonMasterComputermonitorData", "");
	}
	else {
		
		HudsonMasterComputermonitorData obj = static_cast<HudsonMasterComputermonitorData> (getMonitorData());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *monitorDataKey = "monitorData";
	json_object_set_member(pJsonObject, monitorDataKey, node);
	if (isprimitive("int")) {
		int obj = getNumExecutors();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numExecutorsKey = "numExecutors";
	json_object_set_member(pJsonObject, numExecutorsKey, node);
	if (isprimitive("bool")) {
		bool obj = getOffline();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *offlineKey = "offline";
	json_object_set_member(pJsonObject, offlineKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOfflineCause();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *offlineCauseKey = "offlineCause";
	json_object_set_member(pJsonObject, offlineCauseKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOfflineCauseReason();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *offlineCauseReasonKey = "offlineCauseReason";
	json_object_set_member(pJsonObject, offlineCauseReasonKey, node);
	if (isprimitive("bool")) {
		bool obj = getTemporarilyOffline();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *temporarilyOfflineKey = "temporarilyOffline";
	json_object_set_member(pJsonObject, temporarilyOfflineKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
HudsonMasterComputer::getClass()
{
	return _class;
}

void
HudsonMasterComputer::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
HudsonMasterComputer::getDisplayName()
{
	return displayName;
}

void
HudsonMasterComputer::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::list<HudsonMasterComputerexecutors>
HudsonMasterComputer::getExecutors()
{
	return executors;
}

void
HudsonMasterComputer::setExecutors(std::list <HudsonMasterComputerexecutors> executors)
{
	this->executors = executors;
}

std::string
HudsonMasterComputer::getIcon()
{
	return icon;
}

void
HudsonMasterComputer::setIcon(std::string  icon)
{
	this->icon = icon;
}

std::string
HudsonMasterComputer::getIconClassName()
{
	return iconClassName;
}

void
HudsonMasterComputer::setIconClassName(std::string  iconClassName)
{
	this->iconClassName = iconClassName;
}

bool
HudsonMasterComputer::getIdle()
{
	return idle;
}

void
HudsonMasterComputer::setIdle(bool  idle)
{
	this->idle = idle;
}

bool
HudsonMasterComputer::getJnlpAgent()
{
	return jnlpAgent;
}

void
HudsonMasterComputer::setJnlpAgent(bool  jnlpAgent)
{
	this->jnlpAgent = jnlpAgent;
}

bool
HudsonMasterComputer::getLaunchSupported()
{
	return launchSupported;
}

void
HudsonMasterComputer::setLaunchSupported(bool  launchSupported)
{
	this->launchSupported = launchSupported;
}

Label1
HudsonMasterComputer::getLoadStatistics()
{
	return loadStatistics;
}

void
HudsonMasterComputer::setLoadStatistics(Label1  loadStatistics)
{
	this->loadStatistics = loadStatistics;
}

bool
HudsonMasterComputer::getManualLaunchAllowed()
{
	return manualLaunchAllowed;
}

void
HudsonMasterComputer::setManualLaunchAllowed(bool  manualLaunchAllowed)
{
	this->manualLaunchAllowed = manualLaunchAllowed;
}

HudsonMasterComputermonitorData
HudsonMasterComputer::getMonitorData()
{
	return monitorData;
}

void
HudsonMasterComputer::setMonitorData(HudsonMasterComputermonitorData  monitorData)
{
	this->monitorData = monitorData;
}

int
HudsonMasterComputer::getNumExecutors()
{
	return numExecutors;
}

void
HudsonMasterComputer::setNumExecutors(int  numExecutors)
{
	this->numExecutors = numExecutors;
}

bool
HudsonMasterComputer::getOffline()
{
	return offline;
}

void
HudsonMasterComputer::setOffline(bool  offline)
{
	this->offline = offline;
}

std::string
HudsonMasterComputer::getOfflineCause()
{
	return offlineCause;
}

void
HudsonMasterComputer::setOfflineCause(std::string  offlineCause)
{
	this->offlineCause = offlineCause;
}

std::string
HudsonMasterComputer::getOfflineCauseReason()
{
	return offlineCauseReason;
}

void
HudsonMasterComputer::setOfflineCauseReason(std::string  offlineCauseReason)
{
	this->offlineCauseReason = offlineCauseReason;
}

bool
HudsonMasterComputer::getTemporarilyOffline()
{
	return temporarilyOffline;
}

void
HudsonMasterComputer::setTemporarilyOffline(bool  temporarilyOffline)
{
	this->temporarilyOffline = temporarilyOffline;
}


