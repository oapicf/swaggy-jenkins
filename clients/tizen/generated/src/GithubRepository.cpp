#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubRepository.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubRepository::GithubRepository()
{
	//__init();
}

GithubRepository::~GithubRepository()
{
	//__cleanup();
}

void
GithubRepository::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//_links = new GithubRepositorylinks();
	//
	//
	//defaultBranch = std::string();
	//
	//
	//description = std::string();
	//
	//
	//name = std::string();
	//
	//
	//permissions = new GithubRepositorypermissions();
	//
	//
	//_private = bool(false);
	//
	//
	//fullName = std::string();
	//
}

void
GithubRepository::__cleanup()
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
	//if(defaultBranch != NULL) {
	//
	//delete defaultBranch;
	//defaultBranch = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(permissions != NULL) {
	//
	//delete permissions;
	//permissions = NULL;
	//}
	//if(_private != NULL) {
	//
	//delete _private;
	//_private = NULL;
	//}
	//if(fullName != NULL) {
	//
	//delete fullName;
	//fullName = NULL;
	//}
	//
}

void
GithubRepository::fromJson(char* jsonStr)
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
	

		if (isprimitive("GithubRepositorylinks")) {
			jsonToValue(&_links, node, "GithubRepositorylinks", "GithubRepositorylinks");
		} else {
			
			GithubRepositorylinks* obj = static_cast<GithubRepositorylinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *defaultBranchKey = "defaultBranch";
	node = json_object_get_member(pJsonObject, defaultBranchKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&defaultBranch, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
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
	const gchar *permissionsKey = "permissions";
	node = json_object_get_member(pJsonObject, permissionsKey);
	if (node !=NULL) {
	

		if (isprimitive("GithubRepositorypermissions")) {
			jsonToValue(&permissions, node, "GithubRepositorypermissions", "GithubRepositorypermissions");
		} else {
			
			GithubRepositorypermissions* obj = static_cast<GithubRepositorypermissions*> (&permissions);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *_privateKey = "private";
	node = json_object_get_member(pJsonObject, _privateKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&_private, node, "bool", "");
		} else {
			
		}
	}
	const gchar *fullNameKey = "fullName";
	node = json_object_get_member(pJsonObject, fullNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fullName, node, "std::string", "");
		} else {
			
		}
	}
}

GithubRepository::GithubRepository(char* json)
{
	this->fromJson(json);
}

char*
GithubRepository::toJson()
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
	if (isprimitive("GithubRepositorylinks")) {
		GithubRepositorylinks obj = getLinks();
		node = converttoJson(&obj, "GithubRepositorylinks", "");
	}
	else {
		
		GithubRepositorylinks obj = static_cast<GithubRepositorylinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDefaultBranch();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *defaultBranchKey = "defaultBranch";
	json_object_set_member(pJsonObject, defaultBranchKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("GithubRepositorypermissions")) {
		GithubRepositorypermissions obj = getPermissions();
		node = converttoJson(&obj, "GithubRepositorypermissions", "");
	}
	else {
		
		GithubRepositorypermissions obj = static_cast<GithubRepositorypermissions> (getPermissions());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *permissionsKey = "permissions";
	json_object_set_member(pJsonObject, permissionsKey, node);
	if (isprimitive("bool")) {
		bool obj = getPrivate();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *_privateKey = "private";
	json_object_set_member(pJsonObject, _privateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFullName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullNameKey = "fullName";
	json_object_set_member(pJsonObject, fullNameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GithubRepository::getClass()
{
	return _class;
}

void
GithubRepository::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubRepositorylinks
GithubRepository::getLinks()
{
	return _links;
}

void
GithubRepository::setLinks(GithubRepositorylinks  _links)
{
	this->_links = _links;
}

std::string
GithubRepository::getDefaultBranch()
{
	return defaultBranch;
}

void
GithubRepository::setDefaultBranch(std::string  defaultBranch)
{
	this->defaultBranch = defaultBranch;
}

std::string
GithubRepository::getDescription()
{
	return description;
}

void
GithubRepository::setDescription(std::string  description)
{
	this->description = description;
}

std::string
GithubRepository::getName()
{
	return name;
}

void
GithubRepository::setName(std::string  name)
{
	this->name = name;
}

GithubRepositorypermissions
GithubRepository::getPermissions()
{
	return permissions;
}

void
GithubRepository::setPermissions(GithubRepositorypermissions  permissions)
{
	this->permissions = permissions;
}

bool
GithubRepository::getPrivate()
{
	return _private;
}

void
GithubRepository::setPrivate(bool  _private)
{
	this->_private = _private;
}

std::string
GithubRepository::getFullName()
{
	return fullName;
}

void
GithubRepository::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}


