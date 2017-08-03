#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "HudsonMasterComputerexecutors.h"

using namespace std;
using namespace Tizen::ArtikCloud;

HudsonMasterComputerexecutors::HudsonMasterComputerexecutors()
{
	//__init();
}

HudsonMasterComputerexecutors::~HudsonMasterComputerexecutors()
{
	//__cleanup();
}

void
HudsonMasterComputerexecutors::__init()
{
	//
	//
	//currentExecutable = new FreeStyleBuild();
	//
	//
	//idle = bool(false);
	//
	//
	//likelyStuck = bool(false);
	//
	//
	//number = null;
	//
	//
	//progress = null;
	//
	//
	//_class = std::string();
	//
}

void
HudsonMasterComputerexecutors::__cleanup()
{
	//if(currentExecutable != NULL) {
	//
	//delete currentExecutable;
	//currentExecutable = NULL;
	//}
	//if(idle != NULL) {
	//
	//delete idle;
	//idle = NULL;
	//}
	//if(likelyStuck != NULL) {
	//
	//delete likelyStuck;
	//likelyStuck = NULL;
	//}
	//if(number != NULL) {
	//
	//delete number;
	//number = NULL;
	//}
	//if(progress != NULL) {
	//
	//delete progress;
	//progress = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
HudsonMasterComputerexecutors::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *currentExecutableKey = "currentExecutable";
	node = json_object_get_member(pJsonObject, currentExecutableKey);
	if (node !=NULL) {
	

		if (isprimitive("FreeStyleBuild")) {
			jsonToValue(&currentExecutable, node, "FreeStyleBuild", "FreeStyleBuild");
		} else {
			
			FreeStyleBuild* obj = static_cast<FreeStyleBuild*> (&currentExecutable);
			obj->fromJson(json_to_string(node, false));
			
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
	const gchar *likelyStuckKey = "likelyStuck";
	node = json_object_get_member(pJsonObject, likelyStuckKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&likelyStuck, node, "bool", "");
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
	const gchar *progressKey = "progress";
	node = json_object_get_member(pJsonObject, progressKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&progress, node, "int", "");
		} else {
			
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

HudsonMasterComputerexecutors::HudsonMasterComputerexecutors(char* json)
{
	this->fromJson(json);
}

char*
HudsonMasterComputerexecutors::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("FreeStyleBuild")) {
		FreeStyleBuild obj = getCurrentExecutable();
		node = converttoJson(&obj, "FreeStyleBuild", "");
	}
	else {
		
		FreeStyleBuild obj = static_cast<FreeStyleBuild> (getCurrentExecutable());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *currentExecutableKey = "currentExecutable";
	json_object_set_member(pJsonObject, currentExecutableKey, node);
	if (isprimitive("bool")) {
		bool obj = getIdle();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *idleKey = "idle";
	json_object_set_member(pJsonObject, idleKey, node);
	if (isprimitive("bool")) {
		bool obj = getLikelyStuck();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *likelyStuckKey = "likelyStuck";
	json_object_set_member(pJsonObject, likelyStuckKey, node);
	if (isprimitive("int")) {
		int obj = getNumber();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberKey = "number";
	json_object_set_member(pJsonObject, numberKey, node);
	if (isprimitive("int")) {
		int obj = getProgress();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *progressKey = "progress";
	json_object_set_member(pJsonObject, progressKey, node);
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

FreeStyleBuild
HudsonMasterComputerexecutors::getCurrentExecutable()
{
	return currentExecutable;
}

void
HudsonMasterComputerexecutors::setCurrentExecutable(FreeStyleBuild  currentExecutable)
{
	this->currentExecutable = currentExecutable;
}

bool
HudsonMasterComputerexecutors::getIdle()
{
	return idle;
}

void
HudsonMasterComputerexecutors::setIdle(bool  idle)
{
	this->idle = idle;
}

bool
HudsonMasterComputerexecutors::getLikelyStuck()
{
	return likelyStuck;
}

void
HudsonMasterComputerexecutors::setLikelyStuck(bool  likelyStuck)
{
	this->likelyStuck = likelyStuck;
}

int
HudsonMasterComputerexecutors::getNumber()
{
	return number;
}

void
HudsonMasterComputerexecutors::setNumber(int  number)
{
	this->number = number;
}

int
HudsonMasterComputerexecutors::getProgress()
{
	return progress;
}

void
HudsonMasterComputerexecutors::setProgress(int  progress)
{
	this->progress = progress;
}

std::string
HudsonMasterComputerexecutors::getClass()
{
	return _class;
}

void
HudsonMasterComputerexecutors::setClass(std::string  _class)
{
	this->_class = _class;
}


