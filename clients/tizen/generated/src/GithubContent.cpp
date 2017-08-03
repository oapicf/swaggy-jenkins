#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubContent.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubContent::GithubContent()
{
	//__init();
}

GithubContent::~GithubContent()
{
	//__cleanup();
}

void
GithubContent::__init()
{
	//
	//
	//name = std::string();
	//
	//
	//sha = std::string();
	//
	//
	//_class = std::string();
	//
	//
	//repo = std::string();
	//
	//
	//size = null;
	//
	//
	//owner = std::string();
	//
	//
	//path = std::string();
	//
	//
	//base64Data = std::string();
	//
}

void
GithubContent::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(sha != NULL) {
	//
	//delete sha;
	//sha = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(repo != NULL) {
	//
	//delete repo;
	//repo = NULL;
	//}
	//if(size != NULL) {
	//
	//delete size;
	//size = NULL;
	//}
	//if(owner != NULL) {
	//
	//delete owner;
	//owner = NULL;
	//}
	//if(path != NULL) {
	//
	//delete path;
	//path = NULL;
	//}
	//if(base64Data != NULL) {
	//
	//delete base64Data;
	//base64Data = NULL;
	//}
	//
}

void
GithubContent::fromJson(char* jsonStr)
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
	const gchar *shaKey = "sha";
	node = json_object_get_member(pJsonObject, shaKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sha, node, "std::string", "");
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
	const gchar *repoKey = "repo";
	node = json_object_get_member(pJsonObject, repoKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&repo, node, "std::string", "");
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
	const gchar *ownerKey = "owner";
	node = json_object_get_member(pJsonObject, ownerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&owner, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *pathKey = "path";
	node = json_object_get_member(pJsonObject, pathKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&path, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *base64DataKey = "base64Data";
	node = json_object_get_member(pJsonObject, base64DataKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&base64Data, node, "std::string", "");
		} else {
			
		}
	}
}

GithubContent::GithubContent(char* json)
{
	this->fromJson(json);
}

char*
GithubContent::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getSha();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *shaKey = "sha";
	json_object_set_member(pJsonObject, shaKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_classKey = "_class";
	json_object_set_member(pJsonObject, _classKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRepo();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *repoKey = "repo";
	json_object_set_member(pJsonObject, repoKey, node);
	if (isprimitive("int")) {
		int obj = getSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sizeKey = "size";
	json_object_set_member(pJsonObject, sizeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOwner();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *ownerKey = "owner";
	json_object_set_member(pJsonObject, ownerKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPath();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pathKey = "path";
	json_object_set_member(pJsonObject, pathKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBase64Data();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *base64DataKey = "base64Data";
	json_object_set_member(pJsonObject, base64DataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GithubContent::getName()
{
	return name;
}

void
GithubContent::setName(std::string  name)
{
	this->name = name;
}

std::string
GithubContent::getSha()
{
	return sha;
}

void
GithubContent::setSha(std::string  sha)
{
	this->sha = sha;
}

std::string
GithubContent::getClass()
{
	return _class;
}

void
GithubContent::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
GithubContent::getRepo()
{
	return repo;
}

void
GithubContent::setRepo(std::string  repo)
{
	this->repo = repo;
}

int
GithubContent::getSize()
{
	return size;
}

void
GithubContent::setSize(int  size)
{
	this->size = size;
}

std::string
GithubContent::getOwner()
{
	return owner;
}

void
GithubContent::setOwner(std::string  owner)
{
	this->owner = owner;
}

std::string
GithubContent::getPath()
{
	return path;
}

void
GithubContent::setPath(std::string  path)
{
	this->path = path;
}

std::string
GithubContent::getBase64Data()
{
	return base64Data;
}

void
GithubContent::setBase64Data(std::string  base64Data)
{
	this->base64Data = base64Data;
}


