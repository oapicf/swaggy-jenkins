#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubFile.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubFile::GithubFile()
{
	//__init();
}

GithubFile::~GithubFile()
{
	//__cleanup();
}

void
GithubFile::__init()
{
	//content = new GithubContent();
	//_class = std::string();
}

void
GithubFile::__cleanup()
{
	//if(content != NULL) {
	//
	//delete content;
	//content = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
GithubFile::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *contentKey = "content";
	node = json_object_get_member(pJsonObject, contentKey);
	if (node !=NULL) {
	

		if (isprimitive("GithubContent")) {
			jsonToValue(&content, node, "GithubContent", "GithubContent");
		} else {
			
			GithubContent* obj = static_cast<GithubContent*> (&content);
			obj->fromJson(json_to_string(node, false));
			
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

GithubFile::GithubFile(char* json)
{
	this->fromJson(json);
}

char*
GithubFile::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("GithubContent")) {
		GithubContent obj = getContent();
		node = converttoJson(&obj, "GithubContent", "");
	}
	else {
		
		GithubContent obj = static_cast<GithubContent> (getContent());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *contentKey = "content";
	json_object_set_member(pJsonObject, contentKey, node);
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

GithubContent
GithubFile::getContent()
{
	return content;
}

void
GithubFile::setContent(GithubContent  content)
{
	this->content = content;
}

std::string
GithubFile::getClass()
{
	return _class;
}

void
GithubFile::setClass(std::string  _class)
{
	this->_class = _class;
}


