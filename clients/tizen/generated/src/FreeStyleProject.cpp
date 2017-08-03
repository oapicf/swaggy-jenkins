#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "FreeStyleProject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

FreeStyleProject::FreeStyleProject()
{
	//__init();
}

FreeStyleProject::~FreeStyleProject()
{
	//__cleanup();
}

void
FreeStyleProject::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//name = std::string();
	//
	//
	//url = std::string();
	//
	//
	//color = std::string();
	//
	//new std::list()std::list> actions;
	//
	//
	//
	//description = std::string();
	//
	//
	//displayName = std::string();
	//
	//
	//displayNameOrNull = std::string();
	//
	//
	//fullDisplayName = std::string();
	//
	//
	//fullName = std::string();
	//
	//
	//buildable = bool(false);
	//
	//new std::list()std::list> builds;
	//
	//
	//
	//firstBuild = new FreeStyleBuild();
	//
	//new std::list()std::list> healthReport;
	//
	//
	//
	//inQueue = bool(false);
	//
	//
	//keepDependencies = bool(false);
	//
	//
	//lastBuild = new FreeStyleBuild();
	//
	//
	//lastCompletedBuild = new FreeStyleBuild();
	//
	//
	//lastFailedBuild = std::string();
	//
	//
	//lastStableBuild = new FreeStyleBuild();
	//
	//
	//lastSuccessfulBuild = new FreeStyleBuild();
	//
	//
	//lastUnstableBuild = std::string();
	//
	//
	//lastUnsuccessfulBuild = std::string();
	//
	//
	//nextBuildNumber = null;
	//
	//
	//queueItem = std::string();
	//
	//
	//concurrentBuild = bool(false);
	//
	//
	//scm = new NullSCM();
	//
}

void
FreeStyleProject::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(url != NULL) {
	//
	//delete url;
	//url = NULL;
	//}
	//if(color != NULL) {
	//
	//delete color;
	//color = NULL;
	//}
	//if(actions != NULL) {
	//actions.RemoveAll(true);
	//delete actions;
	//actions = NULL;
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
	//if(displayNameOrNull != NULL) {
	//
	//delete displayNameOrNull;
	//displayNameOrNull = NULL;
	//}
	//if(fullDisplayName != NULL) {
	//
	//delete fullDisplayName;
	//fullDisplayName = NULL;
	//}
	//if(fullName != NULL) {
	//
	//delete fullName;
	//fullName = NULL;
	//}
	//if(buildable != NULL) {
	//
	//delete buildable;
	//buildable = NULL;
	//}
	//if(builds != NULL) {
	//builds.RemoveAll(true);
	//delete builds;
	//builds = NULL;
	//}
	//if(firstBuild != NULL) {
	//
	//delete firstBuild;
	//firstBuild = NULL;
	//}
	//if(healthReport != NULL) {
	//healthReport.RemoveAll(true);
	//delete healthReport;
	//healthReport = NULL;
	//}
	//if(inQueue != NULL) {
	//
	//delete inQueue;
	//inQueue = NULL;
	//}
	//if(keepDependencies != NULL) {
	//
	//delete keepDependencies;
	//keepDependencies = NULL;
	//}
	//if(lastBuild != NULL) {
	//
	//delete lastBuild;
	//lastBuild = NULL;
	//}
	//if(lastCompletedBuild != NULL) {
	//
	//delete lastCompletedBuild;
	//lastCompletedBuild = NULL;
	//}
	//if(lastFailedBuild != NULL) {
	//
	//delete lastFailedBuild;
	//lastFailedBuild = NULL;
	//}
	//if(lastStableBuild != NULL) {
	//
	//delete lastStableBuild;
	//lastStableBuild = NULL;
	//}
	//if(lastSuccessfulBuild != NULL) {
	//
	//delete lastSuccessfulBuild;
	//lastSuccessfulBuild = NULL;
	//}
	//if(lastUnstableBuild != NULL) {
	//
	//delete lastUnstableBuild;
	//lastUnstableBuild = NULL;
	//}
	//if(lastUnsuccessfulBuild != NULL) {
	//
	//delete lastUnsuccessfulBuild;
	//lastUnsuccessfulBuild = NULL;
	//}
	//if(nextBuildNumber != NULL) {
	//
	//delete nextBuildNumber;
	//nextBuildNumber = NULL;
	//}
	//if(queueItem != NULL) {
	//
	//delete queueItem;
	//queueItem = NULL;
	//}
	//if(concurrentBuild != NULL) {
	//
	//delete concurrentBuild;
	//concurrentBuild = NULL;
	//}
	//if(scm != NULL) {
	//
	//delete scm;
	//scm = NULL;
	//}
	//
}

void
FreeStyleProject::fromJson(char* jsonStr)
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
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
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
	const gchar *colorKey = "color";
	node = json_object_get_member(pJsonObject, colorKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&color, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *actionsKey = "actions";
	node = json_object_get_member(pJsonObject, actionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<FreeStyleProjectactions> new_list;
			FreeStyleProjectactions inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("FreeStyleProjectactions")) {
					jsonToValue(&inst, temp_json, "FreeStyleProjectactions", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			actions = new_list;
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
	const gchar *displayNameOrNullKey = "displayNameOrNull";
	node = json_object_get_member(pJsonObject, displayNameOrNullKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&displayNameOrNull, node, "std::string", "");
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
	const gchar *fullNameKey = "fullName";
	node = json_object_get_member(pJsonObject, fullNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fullName, node, "std::string", "");
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
	const gchar *buildsKey = "builds";
	node = json_object_get_member(pJsonObject, buildsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<FreeStyleBuild> new_list;
			FreeStyleBuild inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("FreeStyleBuild")) {
					jsonToValue(&inst, temp_json, "FreeStyleBuild", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			builds = new_list;
		}
		
	}
	const gchar *firstBuildKey = "firstBuild";
	node = json_object_get_member(pJsonObject, firstBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleBuild")) {
			jsonToValue(&firstBuild, node, "FreeStyleBuild", "FreeStyleBuild");
		} else {
			
			FreeStyleBuild* obj = static_cast<FreeStyleBuild*> (&firstBuild);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *healthReportKey = "healthReport";
	node = json_object_get_member(pJsonObject, healthReportKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<FreeStyleProjecthealthReport> new_list;
			FreeStyleProjecthealthReport inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("FreeStyleProjecthealthReport")) {
					jsonToValue(&inst, temp_json, "FreeStyleProjecthealthReport", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			healthReport = new_list;
		}
		
	}
	const gchar *inQueueKey = "inQueue";
	node = json_object_get_member(pJsonObject, inQueueKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&inQueue, node, "bool", "");
		} else {
			
		}
	}
	const gchar *keepDependenciesKey = "keepDependencies";
	node = json_object_get_member(pJsonObject, keepDependenciesKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&keepDependencies, node, "bool", "");
		} else {
			
		}
	}
	const gchar *lastBuildKey = "lastBuild";
	node = json_object_get_member(pJsonObject, lastBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleBuild")) {
			jsonToValue(&lastBuild, node, "FreeStyleBuild", "FreeStyleBuild");
		} else {
			
			FreeStyleBuild* obj = static_cast<FreeStyleBuild*> (&lastBuild);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lastCompletedBuildKey = "lastCompletedBuild";
	node = json_object_get_member(pJsonObject, lastCompletedBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleBuild")) {
			jsonToValue(&lastCompletedBuild, node, "FreeStyleBuild", "FreeStyleBuild");
		} else {
			
			FreeStyleBuild* obj = static_cast<FreeStyleBuild*> (&lastCompletedBuild);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lastFailedBuildKey = "lastFailedBuild";
	node = json_object_get_member(pJsonObject, lastFailedBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lastFailedBuild, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lastStableBuildKey = "lastStableBuild";
	node = json_object_get_member(pJsonObject, lastStableBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleBuild")) {
			jsonToValue(&lastStableBuild, node, "FreeStyleBuild", "FreeStyleBuild");
		} else {
			
			FreeStyleBuild* obj = static_cast<FreeStyleBuild*> (&lastStableBuild);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lastSuccessfulBuildKey = "lastSuccessfulBuild";
	node = json_object_get_member(pJsonObject, lastSuccessfulBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleBuild")) {
			jsonToValue(&lastSuccessfulBuild, node, "FreeStyleBuild", "FreeStyleBuild");
		} else {
			
			FreeStyleBuild* obj = static_cast<FreeStyleBuild*> (&lastSuccessfulBuild);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lastUnstableBuildKey = "lastUnstableBuild";
	node = json_object_get_member(pJsonObject, lastUnstableBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lastUnstableBuild, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lastUnsuccessfulBuildKey = "lastUnsuccessfulBuild";
	node = json_object_get_member(pJsonObject, lastUnsuccessfulBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lastUnsuccessfulBuild, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nextBuildNumberKey = "nextBuildNumber";
	node = json_object_get_member(pJsonObject, nextBuildNumberKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&nextBuildNumber, node, "int", "");
		} else {
			
		}
	}
	const gchar *queueItemKey = "queueItem";
	node = json_object_get_member(pJsonObject, queueItemKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&queueItem, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *concurrentBuildKey = "concurrentBuild";
	node = json_object_get_member(pJsonObject, concurrentBuildKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&concurrentBuild, node, "bool", "");
		} else {
			
		}
	}
	const gchar *scmKey = "scm";
	node = json_object_get_member(pJsonObject, scmKey);
	if (node !=NULL) {
	

		if (isprimitive("NullSCM")) {
			jsonToValue(&scm, node, "NullSCM", "NullSCM");
		} else {
			
			NullSCM* obj = static_cast<NullSCM*> (&scm);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

FreeStyleProject::FreeStyleProject(char* json)
{
	this->fromJson(json);
}

char*
FreeStyleProject::toJson()
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
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *urlKey = "url";
	json_object_set_member(pJsonObject, urlKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getColor();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *colorKey = "color";
	json_object_set_member(pJsonObject, colorKey, node);
	if (isprimitive("FreeStyleProjectactions")) {
		list<FreeStyleProjectactions> new_list = static_cast<list <FreeStyleProjectactions> > (getActions());
		node = converttoJson(&new_list, "FreeStyleProjectactions", "array");
	} else {
		node = json_node_alloc();
		list<FreeStyleProjectactions> new_list = static_cast<list <FreeStyleProjectactions> > (getActions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<FreeStyleProjectactions>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			FreeStyleProjectactions obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *actionsKey = "actions";
	json_object_set_member(pJsonObject, actionsKey, node);
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
	if (isprimitive("std::string")) {
		std::string obj = getDisplayNameOrNull();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *displayNameOrNullKey = "displayNameOrNull";
	json_object_set_member(pJsonObject, displayNameOrNullKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFullDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullDisplayNameKey = "fullDisplayName";
	json_object_set_member(pJsonObject, fullDisplayNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFullName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullNameKey = "fullName";
	json_object_set_member(pJsonObject, fullNameKey, node);
	if (isprimitive("bool")) {
		bool obj = getBuildable();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *buildableKey = "buildable";
	json_object_set_member(pJsonObject, buildableKey, node);
	if (isprimitive("FreeStyleBuild")) {
		list<FreeStyleBuild> new_list = static_cast<list <FreeStyleBuild> > (getBuilds());
		node = converttoJson(&new_list, "FreeStyleBuild", "array");
	} else {
		node = json_node_alloc();
		list<FreeStyleBuild> new_list = static_cast<list <FreeStyleBuild> > (getBuilds());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<FreeStyleBuild>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			FreeStyleBuild obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *buildsKey = "builds";
	json_object_set_member(pJsonObject, buildsKey, node);
	if (isprimitive("FreeStyleBuild")) {
		FreeStyleBuild obj = getFirstBuild();
		node = converttoJson(&obj, "FreeStyleBuild", "");
	}
	else {
		
		FreeStyleBuild obj = static_cast<FreeStyleBuild> (getFirstBuild());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *firstBuildKey = "firstBuild";
	json_object_set_member(pJsonObject, firstBuildKey, node);
	if (isprimitive("FreeStyleProjecthealthReport")) {
		list<FreeStyleProjecthealthReport> new_list = static_cast<list <FreeStyleProjecthealthReport> > (getHealthReport());
		node = converttoJson(&new_list, "FreeStyleProjecthealthReport", "array");
	} else {
		node = json_node_alloc();
		list<FreeStyleProjecthealthReport> new_list = static_cast<list <FreeStyleProjecthealthReport> > (getHealthReport());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<FreeStyleProjecthealthReport>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			FreeStyleProjecthealthReport obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *healthReportKey = "healthReport";
	json_object_set_member(pJsonObject, healthReportKey, node);
	if (isprimitive("bool")) {
		bool obj = getInQueue();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *inQueueKey = "inQueue";
	json_object_set_member(pJsonObject, inQueueKey, node);
	if (isprimitive("bool")) {
		bool obj = getKeepDependencies();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *keepDependenciesKey = "keepDependencies";
	json_object_set_member(pJsonObject, keepDependenciesKey, node);
	if (isprimitive("FreeStyleBuild")) {
		FreeStyleBuild obj = getLastBuild();
		node = converttoJson(&obj, "FreeStyleBuild", "");
	}
	else {
		
		FreeStyleBuild obj = static_cast<FreeStyleBuild> (getLastBuild());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lastBuildKey = "lastBuild";
	json_object_set_member(pJsonObject, lastBuildKey, node);
	if (isprimitive("FreeStyleBuild")) {
		FreeStyleBuild obj = getLastCompletedBuild();
		node = converttoJson(&obj, "FreeStyleBuild", "");
	}
	else {
		
		FreeStyleBuild obj = static_cast<FreeStyleBuild> (getLastCompletedBuild());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lastCompletedBuildKey = "lastCompletedBuild";
	json_object_set_member(pJsonObject, lastCompletedBuildKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastFailedBuild();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lastFailedBuildKey = "lastFailedBuild";
	json_object_set_member(pJsonObject, lastFailedBuildKey, node);
	if (isprimitive("FreeStyleBuild")) {
		FreeStyleBuild obj = getLastStableBuild();
		node = converttoJson(&obj, "FreeStyleBuild", "");
	}
	else {
		
		FreeStyleBuild obj = static_cast<FreeStyleBuild> (getLastStableBuild());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lastStableBuildKey = "lastStableBuild";
	json_object_set_member(pJsonObject, lastStableBuildKey, node);
	if (isprimitive("FreeStyleBuild")) {
		FreeStyleBuild obj = getLastSuccessfulBuild();
		node = converttoJson(&obj, "FreeStyleBuild", "");
	}
	else {
		
		FreeStyleBuild obj = static_cast<FreeStyleBuild> (getLastSuccessfulBuild());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lastSuccessfulBuildKey = "lastSuccessfulBuild";
	json_object_set_member(pJsonObject, lastSuccessfulBuildKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastUnstableBuild();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lastUnstableBuildKey = "lastUnstableBuild";
	json_object_set_member(pJsonObject, lastUnstableBuildKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastUnsuccessfulBuild();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lastUnsuccessfulBuildKey = "lastUnsuccessfulBuild";
	json_object_set_member(pJsonObject, lastUnsuccessfulBuildKey, node);
	if (isprimitive("int")) {
		int obj = getNextBuildNumber();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *nextBuildNumberKey = "nextBuildNumber";
	json_object_set_member(pJsonObject, nextBuildNumberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getQueueItem();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *queueItemKey = "queueItem";
	json_object_set_member(pJsonObject, queueItemKey, node);
	if (isprimitive("bool")) {
		bool obj = getConcurrentBuild();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *concurrentBuildKey = "concurrentBuild";
	json_object_set_member(pJsonObject, concurrentBuildKey, node);
	if (isprimitive("NullSCM")) {
		NullSCM obj = getScm();
		node = converttoJson(&obj, "NullSCM", "");
	}
	else {
		
		NullSCM obj = static_cast<NullSCM> (getScm());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *scmKey = "scm";
	json_object_set_member(pJsonObject, scmKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
FreeStyleProject::getClass()
{
	return _class;
}

void
FreeStyleProject::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
FreeStyleProject::getName()
{
	return name;
}

void
FreeStyleProject::setName(std::string  name)
{
	this->name = name;
}

std::string
FreeStyleProject::getUrl()
{
	return url;
}

void
FreeStyleProject::setUrl(std::string  url)
{
	this->url = url;
}

std::string
FreeStyleProject::getColor()
{
	return color;
}

void
FreeStyleProject::setColor(std::string  color)
{
	this->color = color;
}

std::list<FreeStyleProjectactions>
FreeStyleProject::getActions()
{
	return actions;
}

void
FreeStyleProject::setActions(std::list <FreeStyleProjectactions> actions)
{
	this->actions = actions;
}

std::string
FreeStyleProject::getDescription()
{
	return description;
}

void
FreeStyleProject::setDescription(std::string  description)
{
	this->description = description;
}

std::string
FreeStyleProject::getDisplayName()
{
	return displayName;
}

void
FreeStyleProject::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::string
FreeStyleProject::getDisplayNameOrNull()
{
	return displayNameOrNull;
}

void
FreeStyleProject::setDisplayNameOrNull(std::string  displayNameOrNull)
{
	this->displayNameOrNull = displayNameOrNull;
}

std::string
FreeStyleProject::getFullDisplayName()
{
	return fullDisplayName;
}

void
FreeStyleProject::setFullDisplayName(std::string  fullDisplayName)
{
	this->fullDisplayName = fullDisplayName;
}

std::string
FreeStyleProject::getFullName()
{
	return fullName;
}

void
FreeStyleProject::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

bool
FreeStyleProject::getBuildable()
{
	return buildable;
}

void
FreeStyleProject::setBuildable(bool  buildable)
{
	this->buildable = buildable;
}

std::list<FreeStyleBuild>
FreeStyleProject::getBuilds()
{
	return builds;
}

void
FreeStyleProject::setBuilds(std::list <FreeStyleBuild> builds)
{
	this->builds = builds;
}

FreeStyleBuild
FreeStyleProject::getFirstBuild()
{
	return firstBuild;
}

void
FreeStyleProject::setFirstBuild(FreeStyleBuild  firstBuild)
{
	this->firstBuild = firstBuild;
}

std::list<FreeStyleProjecthealthReport>
FreeStyleProject::getHealthReport()
{
	return healthReport;
}

void
FreeStyleProject::setHealthReport(std::list <FreeStyleProjecthealthReport> healthReport)
{
	this->healthReport = healthReport;
}

bool
FreeStyleProject::getInQueue()
{
	return inQueue;
}

void
FreeStyleProject::setInQueue(bool  inQueue)
{
	this->inQueue = inQueue;
}

bool
FreeStyleProject::getKeepDependencies()
{
	return keepDependencies;
}

void
FreeStyleProject::setKeepDependencies(bool  keepDependencies)
{
	this->keepDependencies = keepDependencies;
}

FreeStyleBuild
FreeStyleProject::getLastBuild()
{
	return lastBuild;
}

void
FreeStyleProject::setLastBuild(FreeStyleBuild  lastBuild)
{
	this->lastBuild = lastBuild;
}

FreeStyleBuild
FreeStyleProject::getLastCompletedBuild()
{
	return lastCompletedBuild;
}

void
FreeStyleProject::setLastCompletedBuild(FreeStyleBuild  lastCompletedBuild)
{
	this->lastCompletedBuild = lastCompletedBuild;
}

std::string
FreeStyleProject::getLastFailedBuild()
{
	return lastFailedBuild;
}

void
FreeStyleProject::setLastFailedBuild(std::string  lastFailedBuild)
{
	this->lastFailedBuild = lastFailedBuild;
}

FreeStyleBuild
FreeStyleProject::getLastStableBuild()
{
	return lastStableBuild;
}

void
FreeStyleProject::setLastStableBuild(FreeStyleBuild  lastStableBuild)
{
	this->lastStableBuild = lastStableBuild;
}

FreeStyleBuild
FreeStyleProject::getLastSuccessfulBuild()
{
	return lastSuccessfulBuild;
}

void
FreeStyleProject::setLastSuccessfulBuild(FreeStyleBuild  lastSuccessfulBuild)
{
	this->lastSuccessfulBuild = lastSuccessfulBuild;
}

std::string
FreeStyleProject::getLastUnstableBuild()
{
	return lastUnstableBuild;
}

void
FreeStyleProject::setLastUnstableBuild(std::string  lastUnstableBuild)
{
	this->lastUnstableBuild = lastUnstableBuild;
}

std::string
FreeStyleProject::getLastUnsuccessfulBuild()
{
	return lastUnsuccessfulBuild;
}

void
FreeStyleProject::setLastUnsuccessfulBuild(std::string  lastUnsuccessfulBuild)
{
	this->lastUnsuccessfulBuild = lastUnsuccessfulBuild;
}

int
FreeStyleProject::getNextBuildNumber()
{
	return nextBuildNumber;
}

void
FreeStyleProject::setNextBuildNumber(int  nextBuildNumber)
{
	this->nextBuildNumber = nextBuildNumber;
}

std::string
FreeStyleProject::getQueueItem()
{
	return queueItem;
}

void
FreeStyleProject::setQueueItem(std::string  queueItem)
{
	this->queueItem = queueItem;
}

bool
FreeStyleProject::getConcurrentBuild()
{
	return concurrentBuild;
}

void
FreeStyleProject::setConcurrentBuild(bool  concurrentBuild)
{
	this->concurrentBuild = concurrentBuild;
}

NullSCM
FreeStyleProject::getScm()
{
	return scm;
}

void
FreeStyleProject::setScm(NullSCM  scm)
{
	this->scm = scm;
}


