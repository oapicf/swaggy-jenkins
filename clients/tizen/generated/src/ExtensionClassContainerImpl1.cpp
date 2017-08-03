#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExtensionClassContainerImpl1.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExtensionClassContainerImpl1::ExtensionClassContainerImpl1()
{
	//__init();
}

ExtensionClassContainerImpl1::~ExtensionClassContainerImpl1()
{
	//__cleanup();
}

void
ExtensionClassContainerImpl1::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//_links = new ExtensionClassContainerImpl1links();
	//
	//
	//map = new ExtensionClassContainerImpl1map();
	//
}

void
ExtensionClassContainerImpl1::__cleanup()
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
	//if(map != NULL) {
	//
	//delete map;
	//map = NULL;
	//}
	//
}

void
ExtensionClassContainerImpl1::fromJson(char* jsonStr)
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
	

		if (isprimitive("ExtensionClassContainerImpl1links")) {
			jsonToValue(&_links, node, "ExtensionClassContainerImpl1links", "ExtensionClassContainerImpl1links");
		} else {
			
			ExtensionClassContainerImpl1links* obj = static_cast<ExtensionClassContainerImpl1links*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *mapKey = "map";
	node = json_object_get_member(pJsonObject, mapKey);
	if (node !=NULL) {
	

		if (isprimitive("ExtensionClassContainerImpl1map")) {
			jsonToValue(&map, node, "ExtensionClassContainerImpl1map", "ExtensionClassContainerImpl1map");
		} else {
			
			ExtensionClassContainerImpl1map* obj = static_cast<ExtensionClassContainerImpl1map*> (&map);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ExtensionClassContainerImpl1::ExtensionClassContainerImpl1(char* json)
{
	this->fromJson(json);
}

char*
ExtensionClassContainerImpl1::toJson()
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
	if (isprimitive("ExtensionClassContainerImpl1links")) {
		ExtensionClassContainerImpl1links obj = getLinks();
		node = converttoJson(&obj, "ExtensionClassContainerImpl1links", "");
	}
	else {
		
		ExtensionClassContainerImpl1links obj = static_cast<ExtensionClassContainerImpl1links> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("ExtensionClassContainerImpl1map")) {
		ExtensionClassContainerImpl1map obj = getMap();
		node = converttoJson(&obj, "ExtensionClassContainerImpl1map", "");
	}
	else {
		
		ExtensionClassContainerImpl1map obj = static_cast<ExtensionClassContainerImpl1map> (getMap());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *mapKey = "map";
	json_object_set_member(pJsonObject, mapKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExtensionClassContainerImpl1::getClass()
{
	return _class;
}

void
ExtensionClassContainerImpl1::setClass(std::string  _class)
{
	this->_class = _class;
}

ExtensionClassContainerImpl1links
ExtensionClassContainerImpl1::getLinks()
{
	return _links;
}

void
ExtensionClassContainerImpl1::setLinks(ExtensionClassContainerImpl1links  _links)
{
	this->_links = _links;
}

ExtensionClassContainerImpl1map
ExtensionClassContainerImpl1::getMap()
{
	return map;
}

void
ExtensionClassContainerImpl1::setMap(ExtensionClassContainerImpl1map  map)
{
	this->map = map;
}


