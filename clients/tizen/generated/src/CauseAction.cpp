#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CauseAction.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CauseAction::CauseAction()
{
	//__init();
}

CauseAction::~CauseAction()
{
	//__cleanup();
}

void
CauseAction::__init()
{
	//
	//
	//_class = std::string();
	//
	//new std::list()std::list> causes;
	//
	//
}

void
CauseAction::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(causes != NULL) {
	//causes.RemoveAll(true);
	//delete causes;
	//causes = NULL;
	//}
	//
}

void
CauseAction::fromJson(char* jsonStr)
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
	const gchar *causesKey = "causes";
	node = json_object_get_member(pJsonObject, causesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CauseUserIdCause> new_list;
			CauseUserIdCause inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CauseUserIdCause")) {
					jsonToValue(&inst, temp_json, "CauseUserIdCause", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			causes = new_list;
		}
		
	}
}

CauseAction::CauseAction(char* json)
{
	this->fromJson(json);
}

char*
CauseAction::toJson()
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
	if (isprimitive("CauseUserIdCause")) {
		list<CauseUserIdCause> new_list = static_cast<list <CauseUserIdCause> > (getCauses());
		node = converttoJson(&new_list, "CauseUserIdCause", "array");
	} else {
		node = json_node_alloc();
		list<CauseUserIdCause> new_list = static_cast<list <CauseUserIdCause> > (getCauses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CauseUserIdCause>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CauseUserIdCause obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *causesKey = "causes";
	json_object_set_member(pJsonObject, causesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CauseAction::getClass()
{
	return _class;
}

void
CauseAction::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<CauseUserIdCause>
CauseAction::getCauses()
{
	return causes;
}

void
CauseAction::setCauses(std::list <CauseUserIdCause> causes)
{
	this->causes = causes;
}


