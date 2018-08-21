#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ClassesByClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ClassesByClass::ClassesByClass()
{
	//__init();
}

ClassesByClass::~ClassesByClass()
{
	//__cleanup();
}

void
ClassesByClass::__init()
{
	//new std::list()std::list> classes;
	//_class = std::string();
}

void
ClassesByClass::__cleanup()
{
	//if(classes != NULL) {
	//classes.RemoveAll(true);
	//delete classes;
	//classes = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
ClassesByClass::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
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

ClassesByClass::ClassesByClass(char* json)
{
	this->fromJson(json);
}

char*
ClassesByClass::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getClasses());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *classesKey = "classes";
	json_object_set_member(pJsonObject, classesKey, node);
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

std::list<std::string>
ClassesByClass::getClasses()
{
	return classes;
}

void
ClassesByClass::setClasses(std::list <std::string> classes)
{
	this->classes = classes;
}

std::string
ClassesByClass::getClass()
{
	return _class;
}

void
ClassesByClass::setClass(std::string  _class)
{
	this->_class = _class;
}


