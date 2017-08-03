#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "BranchImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

BranchImpl::BranchImpl()
{
	//__init();
}

BranchImpl::~BranchImpl()
{
	//__cleanup();
}

void
BranchImpl::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//displayName = std::string();
	//
	//
	//estimatedDurationInMillis = null;
	//
	//
	//fullDisplayName = std::string();
	//
	//
	//fullName = std::string();
	//
	//
	//name = std::string();
	//
	//
	//organization = std::string();
	//
	//new std::list()std::list> parameters;
	//
	//
	//
	//permissions = new BranchImplpermissions();
	//
	//
	//weatherScore = null;
	//
	//
	//pullRequest = std::string();
	//
	//
	//_links = new BranchImpllinks();
	//
	//
	//latestRun = new PipelineRunImpl();
	//
}

void
BranchImpl::__cleanup()
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
	//if(estimatedDurationInMillis != NULL) {
	//
	//delete estimatedDurationInMillis;
	//estimatedDurationInMillis = NULL;
	//}
	//if(fullDisplayName != NULL) {
	//
	//delete fullDisplayName;
	//fullDisplayName = NULL;
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
	//if(parameters != NULL) {
	//parameters.RemoveAll(true);
	//delete parameters;
	//parameters = NULL;
	//}
	//if(permissions != NULL) {
	//
	//delete permissions;
	//permissions = NULL;
	//}
	//if(weatherScore != NULL) {
	//
	//delete weatherScore;
	//weatherScore = NULL;
	//}
	//if(pullRequest != NULL) {
	//
	//delete pullRequest;
	//pullRequest = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//if(latestRun != NULL) {
	//
	//delete latestRun;
	//latestRun = NULL;
	//}
	//
}

void
BranchImpl::fromJson(char* jsonStr)
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
	const gchar *estimatedDurationInMillisKey = "estimatedDurationInMillis";
	node = json_object_get_member(pJsonObject, estimatedDurationInMillisKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&estimatedDurationInMillis, node, "int", "");
		} else {
			
		}
	}
	const gchar *fullDisplayNameKey = "fullDisplayName";
	node = json_object_get_member(pJsonObject, fullDisplayNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fullDisplayName, node, "std::string", "");
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
	const gchar *parametersKey = "parameters";
	node = json_object_get_member(pJsonObject, parametersKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<StringParameterDefinition> new_list;
			StringParameterDefinition inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("StringParameterDefinition")) {
					jsonToValue(&inst, temp_json, "StringParameterDefinition", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			parameters = new_list;
		}
		
	}
	const gchar *permissionsKey = "permissions";
	node = json_object_get_member(pJsonObject, permissionsKey);
	if (node !=NULL) {
	

		if (isprimitive("BranchImplpermissions")) {
			jsonToValue(&permissions, node, "BranchImplpermissions", "BranchImplpermissions");
		} else {
			
			BranchImplpermissions* obj = static_cast<BranchImplpermissions*> (&permissions);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *weatherScoreKey = "weatherScore";
	node = json_object_get_member(pJsonObject, weatherScoreKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&weatherScore, node, "int", "");
		} else {
			
		}
	}
	const gchar *pullRequestKey = "pullRequest";
	node = json_object_get_member(pJsonObject, pullRequestKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pullRequest, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("BranchImpllinks")) {
			jsonToValue(&_links, node, "BranchImpllinks", "BranchImpllinks");
		} else {
			
			BranchImpllinks* obj = static_cast<BranchImpllinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *latestRunKey = "latestRun";
	node = json_object_get_member(pJsonObject, latestRunKey);
	if (node !=NULL) {
	

		if (isprimitive("PipelineRunImpl")) {
			jsonToValue(&latestRun, node, "PipelineRunImpl", "PipelineRunImpl");
		} else {
			
			PipelineRunImpl* obj = static_cast<PipelineRunImpl*> (&latestRun);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

BranchImpl::BranchImpl(char* json)
{
	this->fromJson(json);
}

char*
BranchImpl::toJson()
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
	if (isprimitive("int")) {
		int obj = getEstimatedDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *estimatedDurationInMillisKey = "estimatedDurationInMillis";
	json_object_set_member(pJsonObject, estimatedDurationInMillisKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFullDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullDisplayNameKey = "fullDisplayName";
	json_object_set_member(pJsonObject, fullDisplayNameKey, node);
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
	if (isprimitive("StringParameterDefinition")) {
		list<StringParameterDefinition> new_list = static_cast<list <StringParameterDefinition> > (getParameters());
		node = converttoJson(&new_list, "StringParameterDefinition", "array");
	} else {
		node = json_node_alloc();
		list<StringParameterDefinition> new_list = static_cast<list <StringParameterDefinition> > (getParameters());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<StringParameterDefinition>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			StringParameterDefinition obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *parametersKey = "parameters";
	json_object_set_member(pJsonObject, parametersKey, node);
	if (isprimitive("BranchImplpermissions")) {
		BranchImplpermissions obj = getPermissions();
		node = converttoJson(&obj, "BranchImplpermissions", "");
	}
	else {
		
		BranchImplpermissions obj = static_cast<BranchImplpermissions> (getPermissions());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *permissionsKey = "permissions";
	json_object_set_member(pJsonObject, permissionsKey, node);
	if (isprimitive("int")) {
		int obj = getWeatherScore();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *weatherScoreKey = "weatherScore";
	json_object_set_member(pJsonObject, weatherScoreKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPullRequest();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pullRequestKey = "pullRequest";
	json_object_set_member(pJsonObject, pullRequestKey, node);
	if (isprimitive("BranchImpllinks")) {
		BranchImpllinks obj = getLinks();
		node = converttoJson(&obj, "BranchImpllinks", "");
	}
	else {
		
		BranchImpllinks obj = static_cast<BranchImpllinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("PipelineRunImpl")) {
		PipelineRunImpl obj = getLatestRun();
		node = converttoJson(&obj, "PipelineRunImpl", "");
	}
	else {
		
		PipelineRunImpl obj = static_cast<PipelineRunImpl> (getLatestRun());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *latestRunKey = "latestRun";
	json_object_set_member(pJsonObject, latestRunKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
BranchImpl::getClass()
{
	return _class;
}

void
BranchImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
BranchImpl::getDisplayName()
{
	return displayName;
}

void
BranchImpl::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
BranchImpl::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
BranchImpl::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
BranchImpl::getFullDisplayName()
{
	return fullDisplayName;
}

void
BranchImpl::setFullDisplayName(std::string  fullDisplayName)
{
	this->fullDisplayName = fullDisplayName;
}

std::string
BranchImpl::getFullName()
{
	return fullName;
}

void
BranchImpl::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
BranchImpl::getName()
{
	return name;
}

void
BranchImpl::setName(std::string  name)
{
	this->name = name;
}

std::string
BranchImpl::getOrganization()
{
	return organization;
}

void
BranchImpl::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::list<StringParameterDefinition>
BranchImpl::getParameters()
{
	return parameters;
}

void
BranchImpl::setParameters(std::list <StringParameterDefinition> parameters)
{
	this->parameters = parameters;
}

BranchImplpermissions
BranchImpl::getPermissions()
{
	return permissions;
}

void
BranchImpl::setPermissions(BranchImplpermissions  permissions)
{
	this->permissions = permissions;
}

int
BranchImpl::getWeatherScore()
{
	return weatherScore;
}

void
BranchImpl::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

std::string
BranchImpl::getPullRequest()
{
	return pullRequest;
}

void
BranchImpl::setPullRequest(std::string  pullRequest)
{
	this->pullRequest = pullRequest;
}

BranchImpllinks
BranchImpl::getLinks()
{
	return _links;
}

void
BranchImpl::setLinks(BranchImpllinks  _links)
{
	this->_links = _links;
}

PipelineRunImpl
BranchImpl::getLatestRun()
{
	return latestRun;
}

void
BranchImpl::setLatestRun(PipelineRunImpl  latestRun)
{
	this->latestRun = latestRun;
}


