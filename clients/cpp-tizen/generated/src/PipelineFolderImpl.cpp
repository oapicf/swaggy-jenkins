#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineFolderImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineFolderImpl::PipelineFolderImpl()
{
	//__init();
}

PipelineFolderImpl::~PipelineFolderImpl()
{
	//__cleanup();
}

void
PipelineFolderImpl::__init()
{
	//_class = std::string();
	//displayName = std::string();
	//fullName = std::string();
	//name = std::string();
	//organization = std::string();
	//numberOfFolders = int(0);
	//numberOfPipelines = int(0);
}

void
PipelineFolderImpl::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(displayName != NULL) {
	//
	//delete displayName;
	//displayName = NULL;
	//}
	//if(fullName != NULL) {
	//
	//delete fullName;
	//fullName = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(organization != NULL) {
	//
	//delete organization;
	//organization = NULL;
	//}
	//if(numberOfFolders != NULL) {
	//
	//delete numberOfFolders;
	//numberOfFolders = NULL;
	//}
	//if(numberOfPipelines != NULL) {
	//
	//delete numberOfPipelines;
	//numberOfPipelines = NULL;
	//}
	//
}

void
PipelineFolderImpl::fromJson(char* jsonStr)
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
	const gchar *displayNameKey = "displayName";
	node = json_object_get_member(pJsonObject, displayNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&displayName, node, "std::string", "");
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
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *organizationKey = "organization";
	node = json_object_get_member(pJsonObject, organizationKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&organization, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *numberOfFoldersKey = "numberOfFolders";
	node = json_object_get_member(pJsonObject, numberOfFoldersKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&numberOfFolders, node, "int", "");
		} else {
			
		}
	}
	const gchar *numberOfPipelinesKey = "numberOfPipelines";
	node = json_object_get_member(pJsonObject, numberOfPipelinesKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&numberOfPipelines, node, "int", "");
		} else {
			
		}
	}
}

PipelineFolderImpl::PipelineFolderImpl(char* json)
{
	this->fromJson(json);
}

char*
PipelineFolderImpl::toJson()
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
		std::string obj = getDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *displayNameKey = "displayName";
	json_object_set_member(pJsonObject, displayNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFullName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullNameKey = "fullName";
	json_object_set_member(pJsonObject, fullNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOrganization();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *organizationKey = "organization";
	json_object_set_member(pJsonObject, organizationKey, node);
	if (isprimitive("int")) {
		int obj = getNumberOfFolders();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberOfFoldersKey = "numberOfFolders";
	json_object_set_member(pJsonObject, numberOfFoldersKey, node);
	if (isprimitive("int")) {
		int obj = getNumberOfPipelines();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberOfPipelinesKey = "numberOfPipelines";
	json_object_set_member(pJsonObject, numberOfPipelinesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PipelineFolderImpl::getClass()
{
	return _class;
}

void
PipelineFolderImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
PipelineFolderImpl::getDisplayName()
{
	return displayName;
}

void
PipelineFolderImpl::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::string
PipelineFolderImpl::getFullName()
{
	return fullName;
}

void
PipelineFolderImpl::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
PipelineFolderImpl::getName()
{
	return name;
}

void
PipelineFolderImpl::setName(std::string  name)
{
	this->name = name;
}

std::string
PipelineFolderImpl::getOrganization()
{
	return organization;
}

void
PipelineFolderImpl::setOrganization(std::string  organization)
{
	this->organization = organization;
}

int
PipelineFolderImpl::getNumberOfFolders()
{
	return numberOfFolders;
}

void
PipelineFolderImpl::setNumberOfFolders(int  numberOfFolders)
{
	this->numberOfFolders = numberOfFolders;
}

int
PipelineFolderImpl::getNumberOfPipelines()
{
	return numberOfPipelines;
}

void
PipelineFolderImpl::setNumberOfPipelines(int  numberOfPipelines)
{
	this->numberOfPipelines = numberOfPipelines;
}


