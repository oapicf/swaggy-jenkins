#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExtensionClassImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExtensionClassImpl::ExtensionClassImpl()
{
	//__init();
}

ExtensionClassImpl::~ExtensionClassImpl()
{
	//__cleanup();
}

void
ExtensionClassImpl::__init()
{
	//_class = std::string();
	//_links = new ExtensionClassImpllinks();
	//new std::list()std::list> classes;
}

void
ExtensionClassImpl::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//if(classes != NULL) {
	//classes.RemoveAll(true);
	//delete classes;
	//classes = NULL;
	//}
	//
}

void
ExtensionClassImpl::fromJson(char* jsonStr)
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
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("ExtensionClassImpllinks")) {
			jsonToValue(&_links, node, "ExtensionClassImpllinks", "ExtensionClassImpllinks");
		} else {
			
			ExtensionClassImpllinks* obj = static_cast<ExtensionClassImpllinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
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
}

ExtensionClassImpl::ExtensionClassImpl(char* json)
{
	this->fromJson(json);
}

char*
ExtensionClassImpl::toJson()
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
	if (isprimitive("ExtensionClassImpllinks")) {
		ExtensionClassImpllinks obj = getLinks();
		node = converttoJson(&obj, "ExtensionClassImpllinks", "");
	}
	else {
		
		ExtensionClassImpllinks obj = static_cast<ExtensionClassImpllinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExtensionClassImpl::getClass()
{
	return _class;
}

void
ExtensionClassImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

ExtensionClassImpllinks
ExtensionClassImpl::getLinks()
{
	return _links;
}

void
ExtensionClassImpl::setLinks(ExtensionClassImpllinks  _links)
{
	this->_links = _links;
}

std::list<std::string>
ExtensionClassImpl::getClasses()
{
	return classes;
}

void
ExtensionClassImpl::setClasses(std::list <std::string> classes)
{
	this->classes = classes;
}


