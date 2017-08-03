#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelinelatestRunartifacts.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelinelatestRunartifacts::PipelinelatestRunartifacts()
{
	//__init();
}

PipelinelatestRunartifacts::~PipelinelatestRunartifacts()
{
	//__cleanup();
}

void
PipelinelatestRunartifacts::__init()
{
	//
	//
	//name = std::string();
	//
	//
	//size = null;
	//
	//
	//url = std::string();
	//
	//
	//_class = std::string();
	//
}

void
PipelinelatestRunartifacts::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(size != NULL) {
	//
	//delete size;
	//size = NULL;
	//}
	//if(url != NULL) {
	//
	//delete url;
	//url = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
PipelinelatestRunartifacts::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sizeKey = "size";
	node = json_object_get_member(pJsonObject, sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&size, node, "int", "");
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
	const gchar *_classKey = "_class";
	node = json_object_get_member(pJsonObject, _classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_class, node, "std::string", "");
		} else {
			
		}
	}
}

PipelinelatestRunartifacts::PipelinelatestRunartifacts(char* json)
{
	this->fromJson(json);
}

char*
PipelinelatestRunartifacts::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("int")) {
		int obj = getSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sizeKey = "size";
	json_object_set_member(pJsonObject, sizeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *urlKey = "url";
	json_object_set_member(pJsonObject, urlKey, node);
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

std::string
PipelinelatestRunartifacts::getName()
{
	return name;
}

void
PipelinelatestRunartifacts::setName(std::string  name)
{
	this->name = name;
}

int
PipelinelatestRunartifacts::getSize()
{
	return size;
}

void
PipelinelatestRunartifacts::setSize(int  size)
{
	this->size = size;
}

std::string
PipelinelatestRunartifacts::getUrl()
{
	return url;
}

void
PipelinelatestRunartifacts::setUrl(std::string  url)
{
	this->url = url;
}

std::string
PipelinelatestRunartifacts::getClass()
{
	return _class;
}

void
PipelinelatestRunartifacts::setClass(std::string  _class)
{
	this->_class = _class;
}


