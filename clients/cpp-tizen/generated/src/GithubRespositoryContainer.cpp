#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubRespositoryContainer.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubRespositoryContainer::GithubRespositoryContainer()
{
	//__init();
}

GithubRespositoryContainer::~GithubRespositoryContainer()
{
	//__cleanup();
}

void
GithubRespositoryContainer::__init()
{
	//_class = std::string();
	//_links = new GithubRespositoryContainerlinks();
	//repositories = new GithubRepositories();
}

void
GithubRespositoryContainer::__cleanup()
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
	//if(repositories != NULL) {
	//
	//delete repositories;
	//repositories = NULL;
	//}
	//
}

void
GithubRespositoryContainer::fromJson(char* jsonStr)
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
	

		if (isprimitive("GithubRespositoryContainerlinks")) {
			jsonToValue(&_links, node, "GithubRespositoryContainerlinks", "GithubRespositoryContainerlinks");
		} else {
			
			GithubRespositoryContainerlinks* obj = static_cast<GithubRespositoryContainerlinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *repositoriesKey = "repositories";
	node = json_object_get_member(pJsonObject, repositoriesKey);
	if (node !=NULL) {
	

		if (isprimitive("GithubRepositories")) {
			jsonToValue(&repositories, node, "GithubRepositories", "GithubRepositories");
		} else {
			
			GithubRepositories* obj = static_cast<GithubRepositories*> (&repositories);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

GithubRespositoryContainer::GithubRespositoryContainer(char* json)
{
	this->fromJson(json);
}

char*
GithubRespositoryContainer::toJson()
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
	if (isprimitive("GithubRespositoryContainerlinks")) {
		GithubRespositoryContainerlinks obj = getLinks();
		node = converttoJson(&obj, "GithubRespositoryContainerlinks", "");
	}
	else {
		
		GithubRespositoryContainerlinks obj = static_cast<GithubRespositoryContainerlinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("GithubRepositories")) {
		GithubRepositories obj = getRepositories();
		node = converttoJson(&obj, "GithubRepositories", "");
	}
	else {
		
		GithubRepositories obj = static_cast<GithubRepositories> (getRepositories());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *repositoriesKey = "repositories";
	json_object_set_member(pJsonObject, repositoriesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GithubRespositoryContainer::getClass()
{
	return _class;
}

void
GithubRespositoryContainer::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubRespositoryContainerlinks
GithubRespositoryContainer::getLinks()
{
	return _links;
}

void
GithubRespositoryContainer::setLinks(GithubRespositoryContainerlinks  _links)
{
	this->_links = _links;
}

GithubRepositories
GithubRespositoryContainer::getRepositories()
{
	return repositories;
}

void
GithubRespositoryContainer::setRepositories(GithubRepositories  repositories)
{
	this->repositories = repositories;
}


