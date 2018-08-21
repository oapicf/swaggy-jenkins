#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubOrganizationlinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubOrganizationlinks::GithubOrganizationlinks()
{
	//__init();
}

GithubOrganizationlinks::~GithubOrganizationlinks()
{
	//__cleanup();
}

void
GithubOrganizationlinks::__init()
{
	//repositories = new Link();
	//self = new Link();
	//_class = std::string();
}

void
GithubOrganizationlinks::__cleanup()
{
	//if(repositories != NULL) {
	//
	//delete repositories;
	//repositories = NULL;
	//}
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
GithubOrganizationlinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *repositoriesKey = "repositories";
	node = json_object_get_member(pJsonObject, repositoriesKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&repositories, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&repositories);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("Link")) {
			jsonToValue(&self, node, "Link", "Link");
		} else {
			
			Link* obj = static_cast<Link*> (&self);
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

GithubOrganizationlinks::GithubOrganizationlinks(char* json)
{
	this->fromJson(json);
}

char*
GithubOrganizationlinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Link")) {
		Link obj = getRepositories();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getRepositories());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *repositoriesKey = "repositories";
	json_object_set_member(pJsonObject, repositoriesKey, node);
	if (isprimitive("Link")) {
		Link obj = getSelf();
		node = converttoJson(&obj, "Link", "");
	}
	else {
		
		Link obj = static_cast<Link> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
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

Link
GithubOrganizationlinks::getRepositories()
{
	return repositories;
}

void
GithubOrganizationlinks::setRepositories(Link  repositories)
{
	this->repositories = repositories;
}

Link
GithubOrganizationlinks::getSelf()
{
	return self;
}

void
GithubOrganizationlinks::setSelf(Link  self)
{
	this->self = self;
}

std::string
GithubOrganizationlinks::getClass()
{
	return _class;
}

void
GithubOrganizationlinks::setClass(std::string  _class)
{
	this->_class = _class;
}


