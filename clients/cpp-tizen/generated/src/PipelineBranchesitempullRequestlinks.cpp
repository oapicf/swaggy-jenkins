#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineBranchesitempullRequestlinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineBranchesitempullRequestlinks::PipelineBranchesitempullRequestlinks()
{
	//__init();
}

PipelineBranchesitempullRequestlinks::~PipelineBranchesitempullRequestlinks()
{
	//__cleanup();
}

void
PipelineBranchesitempullRequestlinks::__init()
{
	//self = std::string();
	//_class = std::string();
}

void
PipelineBranchesitempullRequestlinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
PipelineBranchesitempullRequestlinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&self, node, "std::string", "");
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

PipelineBranchesitempullRequestlinks::PipelineBranchesitempullRequestlinks(char* json)
{
	this->fromJson(json);
}

char*
PipelineBranchesitempullRequestlinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSelf();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
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
PipelineBranchesitempullRequestlinks::getSelf()
{
	return self;
}

void
PipelineBranchesitempullRequestlinks::setSelf(std::string  self)
{
	this->self = self;
}

std::string
PipelineBranchesitempullRequestlinks::getClass()
{
	return _class;
}

void
PipelineBranchesitempullRequestlinks::setClass(std::string  _class)
{
	this->_class = _class;
}


