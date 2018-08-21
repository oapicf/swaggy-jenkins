#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubOrganization.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubOrganization::GithubOrganization()
{
	//__init();
}

GithubOrganization::~GithubOrganization()
{
	//__cleanup();
}

void
GithubOrganization::__init()
{
	//_class = std::string();
	//_links = new GithubOrganizationlinks();
	//jenkinsOrganizationPipeline = bool(false);
	//name = std::string();
}

void
GithubOrganization::__cleanup()
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
	//if(jenkinsOrganizationPipeline != NULL) {
	//
	//delete jenkinsOrganizationPipeline;
	//jenkinsOrganizationPipeline = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//
}

void
GithubOrganization::fromJson(char* jsonStr)
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
	

		if (isprimitive("GithubOrganizationlinks")) {
			jsonToValue(&_links, node, "GithubOrganizationlinks", "GithubOrganizationlinks");
		} else {
			
			GithubOrganizationlinks* obj = static_cast<GithubOrganizationlinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *jenkinsOrganizationPipelineKey = "jenkinsOrganizationPipeline";
	node = json_object_get_member(pJsonObject, jenkinsOrganizationPipelineKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&jenkinsOrganizationPipeline, node, "bool", "");
		} else {
			
		}
	}
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
}

GithubOrganization::GithubOrganization(char* json)
{
	this->fromJson(json);
}

char*
GithubOrganization::toJson()
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
	if (isprimitive("GithubOrganizationlinks")) {
		GithubOrganizationlinks obj = getLinks();
		node = converttoJson(&obj, "GithubOrganizationlinks", "");
	}
	else {
		
		GithubOrganizationlinks obj = static_cast<GithubOrganizationlinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("bool")) {
		bool obj = getJenkinsOrganizationPipeline();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *jenkinsOrganizationPipelineKey = "jenkinsOrganizationPipeline";
	json_object_set_member(pJsonObject, jenkinsOrganizationPipelineKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GithubOrganization::getClass()
{
	return _class;
}

void
GithubOrganization::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubOrganizationlinks
GithubOrganization::getLinks()
{
	return _links;
}

void
GithubOrganization::setLinks(GithubOrganizationlinks  _links)
{
	this->_links = _links;
}

bool
GithubOrganization::getJenkinsOrganizationPipeline()
{
	return jenkinsOrganizationPipeline;
}

void
GithubOrganization::setJenkinsOrganizationPipeline(bool  jenkinsOrganizationPipeline)
{
	this->jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
}

std::string
GithubOrganization::getName()
{
	return name;
}

void
GithubOrganization::setName(std::string  name)
{
	this->name = name;
}


