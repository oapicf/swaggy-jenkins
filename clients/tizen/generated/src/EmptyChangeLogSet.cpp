#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "EmptyChangeLogSet.h"

using namespace std;
using namespace Tizen::ArtikCloud;

EmptyChangeLogSet::EmptyChangeLogSet()
{
	//__init();
}

EmptyChangeLogSet::~EmptyChangeLogSet()
{
	//__cleanup();
}

void
EmptyChangeLogSet::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//kind = std::string();
	//
}

void
EmptyChangeLogSet::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(kind != NULL) {
	//
	//delete kind;
	//kind = NULL;
	//}
	//
}

void
EmptyChangeLogSet::fromJson(char* jsonStr)
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
	const gchar *kindKey = "kind";
	node = json_object_get_member(pJsonObject, kindKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&kind, node, "std::string", "");
		} else {
			
		}
	}
}

EmptyChangeLogSet::EmptyChangeLogSet(char* json)
{
	this->fromJson(json);
}

char*
EmptyChangeLogSet::toJson()
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
		std::string obj = getKind();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *kindKey = "kind";
	json_object_set_member(pJsonObject, kindKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
EmptyChangeLogSet::getClass()
{
	return _class;
}

void
EmptyChangeLogSet::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
EmptyChangeLogSet::getKind()
{
	return kind;
}

void
EmptyChangeLogSet::setKind(std::string  kind)
{
	this->kind = kind;
}


