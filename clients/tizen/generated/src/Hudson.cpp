#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Hudson.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Hudson::Hudson()
{
	//__init();
}

Hudson::~Hudson()
{
	//__cleanup();
}

void
Hudson::__init()
{
	//
	//
	//_class = std::string();
	//
	//new std::list()std::list> assignedLabels;
	//
	//
	//
	//mode = std::string();
	//
	//
	//nodeDescription = std::string();
	//
	//
	//nodeName = std::string();
	//
	//
	//numExecutors = null;
	//
	//
	//description = std::string();
	//
	//new std::list()std::list> jobs;
	//
	//
	//
	//primaryView = new AllView();
	//
	//
	//quietingDown = bool(false);
	//
	//
	//slaveAgentPort = null;
	//
	//
	//unlabeledLoad = new UnlabeledLoadStatistics();
	//
	//
	//useCrumbs = bool(false);
	//
	//
	//useSecurity = bool(false);
	//
	//new std::list()std::list> views;
	//
	//
}

void
Hudson::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(assignedLabels != NULL) {
	//assignedLabels.RemoveAll(true);
	//delete assignedLabels;
	//assignedLabels = NULL;
	//}
	//if(mode != NULL) {
	//
	//delete mode;
	//mode = NULL;
	//}
	//if(nodeDescription != NULL) {
	//
	//delete nodeDescription;
	//nodeDescription = NULL;
	//}
	//if(nodeName != NULL) {
	//
	//delete nodeName;
	//nodeName = NULL;
	//}
	//if(numExecutors != NULL) {
	//
	//delete numExecutors;
	//numExecutors = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(jobs != NULL) {
	//jobs.RemoveAll(true);
	//delete jobs;
	//jobs = NULL;
	//}
	//if(primaryView != NULL) {
	//
	//delete primaryView;
	//primaryView = NULL;
	//}
	//if(quietingDown != NULL) {
	//
	//delete quietingDown;
	//quietingDown = NULL;
	//}
	//if(slaveAgentPort != NULL) {
	//
	//delete slaveAgentPort;
	//slaveAgentPort = NULL;
	//}
	//if(unlabeledLoad != NULL) {
	//
	//delete unlabeledLoad;
	//unlabeledLoad = NULL;
	//}
	//if(useCrumbs != NULL) {
	//
	//delete useCrumbs;
	//useCrumbs = NULL;
	//}
	//if(useSecurity != NULL) {
	//
	//delete useSecurity;
	//useSecurity = NULL;
	//}
	//if(views != NULL) {
	//views.RemoveAll(true);
	//delete views;
	//views = NULL;
	//}
	//
}

void
Hudson::fromJson(char* jsonStr)
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
	const gchar *assignedLabelsKey = "assignedLabels";
	node = json_object_get_member(pJsonObject, assignedLabelsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<HudsonassignedLabels> new_list;
			HudsonassignedLabels inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("HudsonassignedLabels")) {
					jsonToValue(&inst, temp_json, "HudsonassignedLabels", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			assignedLabels = new_list;
		}
		
	}
	const gchar *modeKey = "mode";
	node = json_object_get_member(pJsonObject, modeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&mode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nodeDescriptionKey = "nodeDescription";
	node = json_object_get_member(pJsonObject, nodeDescriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&nodeDescription, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nodeNameKey = "nodeName";
	node = json_object_get_member(pJsonObject, nodeNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&nodeName, node, "std::string", "");
		} else {
			
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
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *jobsKey = "jobs";
	node = json_object_get_member(pJsonObject, jobsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<FreeStyleProject> new_list;
			FreeStyleProject inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("FreeStyleProject")) {
					jsonToValue(&inst, temp_json, "FreeStyleProject", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			jobs = new_list;
		}
		
	}
	const gchar *primaryViewKey = "primaryView";
	node = json_object_get_member(pJsonObject, primaryViewKey);
	if (node !=NULL) {
	

		if (isprimitive("AllView")) {
			jsonToValue(&primaryView, node, "AllView", "AllView");
		} else {
			
			AllView* obj = static_cast<AllView*> (&primaryView);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *quietingDownKey = "quietingDown";
	node = json_object_get_member(pJsonObject, quietingDownKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&quietingDown, node, "bool", "");
		} else {
			
		}
	}
	const gchar *slaveAgentPortKey = "slaveAgentPort";
	node = json_object_get_member(pJsonObject, slaveAgentPortKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&slaveAgentPort, node, "int", "");
		} else {
			
		}
	}
	const gchar *unlabeledLoadKey = "unlabeledLoad";
	node = json_object_get_member(pJsonObject, unlabeledLoadKey);
	if (node !=NULL) {
	

		if (isprimitive("UnlabeledLoadStatistics")) {
			jsonToValue(&unlabeledLoad, node, "UnlabeledLoadStatistics", "UnlabeledLoadStatistics");
		} else {
			
			UnlabeledLoadStatistics* obj = static_cast<UnlabeledLoadStatistics*> (&unlabeledLoad);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *useCrumbsKey = "useCrumbs";
	node = json_object_get_member(pJsonObject, useCrumbsKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&useCrumbs, node, "bool", "");
		} else {
			
		}
	}
	const gchar *useSecurityKey = "useSecurity";
	node = json_object_get_member(pJsonObject, useSecurityKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&useSecurity, node, "bool", "");
		} else {
			
		}
	}
	const gchar *viewsKey = "views";
	node = json_object_get_member(pJsonObject, viewsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AllView> new_list;
			AllView inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AllView")) {
					jsonToValue(&inst, temp_json, "AllView", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			views = new_list;
		}
		
	}
}

Hudson::Hudson(char* json)
{
	this->fromJson(json);
}

char*
Hudson::toJson()
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
	if (isprimitive("HudsonassignedLabels")) {
		list<HudsonassignedLabels> new_list = static_cast<list <HudsonassignedLabels> > (getAssignedLabels());
		node = converttoJson(&new_list, "HudsonassignedLabels", "array");
	} else {
		node = json_node_alloc();
		list<HudsonassignedLabels> new_list = static_cast<list <HudsonassignedLabels> > (getAssignedLabels());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<HudsonassignedLabels>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			HudsonassignedLabels obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *assignedLabelsKey = "assignedLabels";
	json_object_set_member(pJsonObject, assignedLabelsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *modeKey = "mode";
	json_object_set_member(pJsonObject, modeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getNodeDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nodeDescriptionKey = "nodeDescription";
	json_object_set_member(pJsonObject, nodeDescriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getNodeName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nodeNameKey = "nodeName";
	json_object_set_member(pJsonObject, nodeNameKey, node);
	if (isprimitive("int")) {
		int obj = getNumExecutors();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numExecutorsKey = "numExecutors";
	json_object_set_member(pJsonObject, numExecutorsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("FreeStyleProject")) {
		list<FreeStyleProject> new_list = static_cast<list <FreeStyleProject> > (getJobs());
		node = converttoJson(&new_list, "FreeStyleProject", "array");
	} else {
		node = json_node_alloc();
		list<FreeStyleProject> new_list = static_cast<list <FreeStyleProject> > (getJobs());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<FreeStyleProject>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			FreeStyleProject obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *jobsKey = "jobs";
	json_object_set_member(pJsonObject, jobsKey, node);
	if (isprimitive("AllView")) {
		AllView obj = getPrimaryView();
		node = converttoJson(&obj, "AllView", "");
	}
	else {
		
		AllView obj = static_cast<AllView> (getPrimaryView());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *primaryViewKey = "primaryView";
	json_object_set_member(pJsonObject, primaryViewKey, node);
	if (isprimitive("bool")) {
		bool obj = getQuietingDown();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *quietingDownKey = "quietingDown";
	json_object_set_member(pJsonObject, quietingDownKey, node);
	if (isprimitive("int")) {
		int obj = getSlaveAgentPort();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *slaveAgentPortKey = "slaveAgentPort";
	json_object_set_member(pJsonObject, slaveAgentPortKey, node);
	if (isprimitive("UnlabeledLoadStatistics")) {
		UnlabeledLoadStatistics obj = getUnlabeledLoad();
		node = converttoJson(&obj, "UnlabeledLoadStatistics", "");
	}
	else {
		
		UnlabeledLoadStatistics obj = static_cast<UnlabeledLoadStatistics> (getUnlabeledLoad());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *unlabeledLoadKey = "unlabeledLoad";
	json_object_set_member(pJsonObject, unlabeledLoadKey, node);
	if (isprimitive("bool")) {
		bool obj = getUseCrumbs();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *useCrumbsKey = "useCrumbs";
	json_object_set_member(pJsonObject, useCrumbsKey, node);
	if (isprimitive("bool")) {
		bool obj = getUseSecurity();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *useSecurityKey = "useSecurity";
	json_object_set_member(pJsonObject, useSecurityKey, node);
	if (isprimitive("AllView")) {
		list<AllView> new_list = static_cast<list <AllView> > (getViews());
		node = converttoJson(&new_list, "AllView", "array");
	} else {
		node = json_node_alloc();
		list<AllView> new_list = static_cast<list <AllView> > (getViews());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AllView>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AllView obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *viewsKey = "views";
	json_object_set_member(pJsonObject, viewsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Hudson::getClass()
{
	return _class;
}

void
Hudson::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<HudsonassignedLabels>
Hudson::getAssignedLabels()
{
	return assignedLabels;
}

void
Hudson::setAssignedLabels(std::list <HudsonassignedLabels> assignedLabels)
{
	this->assignedLabels = assignedLabels;
}

std::string
Hudson::getMode()
{
	return mode;
}

void
Hudson::setMode(std::string  mode)
{
	this->mode = mode;
}

std::string
Hudson::getNodeDescription()
{
	return nodeDescription;
}

void
Hudson::setNodeDescription(std::string  nodeDescription)
{
	this->nodeDescription = nodeDescription;
}

std::string
Hudson::getNodeName()
{
	return nodeName;
}

void
Hudson::setNodeName(std::string  nodeName)
{
	this->nodeName = nodeName;
}

int
Hudson::getNumExecutors()
{
	return numExecutors;
}

void
Hudson::setNumExecutors(int  numExecutors)
{
	this->numExecutors = numExecutors;
}

std::string
Hudson::getDescription()
{
	return description;
}

void
Hudson::setDescription(std::string  description)
{
	this->description = description;
}

std::list<FreeStyleProject>
Hudson::getJobs()
{
	return jobs;
}

void
Hudson::setJobs(std::list <FreeStyleProject> jobs)
{
	this->jobs = jobs;
}

AllView
Hudson::getPrimaryView()
{
	return primaryView;
}

void
Hudson::setPrimaryView(AllView  primaryView)
{
	this->primaryView = primaryView;
}

bool
Hudson::getQuietingDown()
{
	return quietingDown;
}

void
Hudson::setQuietingDown(bool  quietingDown)
{
	this->quietingDown = quietingDown;
}

int
Hudson::getSlaveAgentPort()
{
	return slaveAgentPort;
}

void
Hudson::setSlaveAgentPort(int  slaveAgentPort)
{
	this->slaveAgentPort = slaveAgentPort;
}

UnlabeledLoadStatistics
Hudson::getUnlabeledLoad()
{
	return unlabeledLoad;
}

void
Hudson::setUnlabeledLoad(UnlabeledLoadStatistics  unlabeledLoad)
{
	this->unlabeledLoad = unlabeledLoad;
}

bool
Hudson::getUseCrumbs()
{
	return useCrumbs;
}

void
Hudson::setUseCrumbs(bool  useCrumbs)
{
	this->useCrumbs = useCrumbs;
}

bool
Hudson::getUseSecurity()
{
	return useSecurity;
}

void
Hudson::setUseSecurity(bool  useSecurity)
{
	this->useSecurity = useSecurity;
}

std::list<AllView>
Hudson::getViews()
{
	return views;
}

void
Hudson::setViews(std::list <AllView> views)
{
	this->views = views;
}


