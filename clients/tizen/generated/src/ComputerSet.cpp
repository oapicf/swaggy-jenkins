#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ComputerSet.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ComputerSet::ComputerSet()
{
	//__init();
}

ComputerSet::~ComputerSet()
{
	//__cleanup();
}

void
ComputerSet::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//busyExecutors = null;
	//
	//new std::list()std::list> computer;
	//
	//
	//
	//displayName = std::string();
	//
	//
	//totalExecutors = null;
	//
}

void
ComputerSet::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(busyExecutors != NULL) {
	//
	//delete busyExecutors;
	//busyExecutors = NULL;
	//}
	//if(computer != NULL) {
	//computer.RemoveAll(true);
	//delete computer;
	//computer = NULL;
	//}
	//if(displayName != NULL) {
	//
	//delete displayName;
	//displayName = NULL;
	//}
	//if(totalExecutors != NULL) {
	//
	//delete totalExecutors;
	//totalExecutors = NULL;
	//}
	//
}

void
ComputerSet::fromJson(char* jsonStr)
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
	const gchar *busyExecutorsKey = "busyExecutors";
	node = json_object_get_member(pJsonObject, busyExecutorsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&busyExecutors, node, "int", "");
		} else {
			
		}
	}
	const gchar *computerKey = "computer";
	node = json_object_get_member(pJsonObject, computerKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<HudsonMasterComputer> new_list;
			HudsonMasterComputer inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("HudsonMasterComputer")) {
					jsonToValue(&inst, temp_json, "HudsonMasterComputer", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			computer = new_list;
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
	const gchar *totalExecutorsKey = "totalExecutors";
	node = json_object_get_member(pJsonObject, totalExecutorsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&totalExecutors, node, "int", "");
		} else {
			
		}
	}
}

ComputerSet::ComputerSet(char* json)
{
	this->fromJson(json);
}

char*
ComputerSet::toJson()
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
		int obj = getBusyExecutors();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *busyExecutorsKey = "busyExecutors";
	json_object_set_member(pJsonObject, busyExecutorsKey, node);
	if (isprimitive("HudsonMasterComputer")) {
		list<HudsonMasterComputer> new_list = static_cast<list <HudsonMasterComputer> > (getComputer());
		node = converttoJson(&new_list, "HudsonMasterComputer", "array");
	} else {
		node = json_node_alloc();
		list<HudsonMasterComputer> new_list = static_cast<list <HudsonMasterComputer> > (getComputer());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<HudsonMasterComputer>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			HudsonMasterComputer obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *computerKey = "computer";
	json_object_set_member(pJsonObject, computerKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *displayNameKey = "displayName";
	json_object_set_member(pJsonObject, displayNameKey, node);
	if (isprimitive("int")) {
		int obj = getTotalExecutors();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *totalExecutorsKey = "totalExecutors";
	json_object_set_member(pJsonObject, totalExecutorsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ComputerSet::getClass()
{
	return _class;
}

void
ComputerSet::setClass(std::string  _class)
{
	this->_class = _class;
}

int
ComputerSet::getBusyExecutors()
{
	return busyExecutors;
}

void
ComputerSet::setBusyExecutors(int  busyExecutors)
{
	this->busyExecutors = busyExecutors;
}

std::list<HudsonMasterComputer>
ComputerSet::getComputer()
{
	return computer;
}

void
ComputerSet::setComputer(std::list <HudsonMasterComputer> computer)
{
	this->computer = computer;
}

std::string
ComputerSet::getDisplayName()
{
	return displayName;
}

void
ComputerSet::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
ComputerSet::getTotalExecutors()
{
	return totalExecutors;
}

void
ComputerSet::setTotalExecutors(int  totalExecutors)
{
	this->totalExecutors = totalExecutors;
}


