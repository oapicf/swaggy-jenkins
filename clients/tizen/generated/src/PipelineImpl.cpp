#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineImpl::PipelineImpl()
{
	//__init();
}

PipelineImpl::~PipelineImpl()
{
	//__cleanup();
}

void
PipelineImpl::__init()
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
	//fullName = std::string();
	//
	//
	//latestRun = std::string();
	//
	//
	//name = std::string();
	//
	//
	//organization = std::string();
	//
	//
	//weatherScore = null;
	//
	//
	//_links = new PipelineImpllinks();
	//
}

void
PipelineImpl::__cleanup()
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
	//if(fullName != NULL) {
	//
	//delete fullName;
	//fullName = NULL;
	//}
	//if(latestRun != NULL) {
	//
	//delete latestRun;
	//latestRun = NULL;
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
	//if(weatherScore != NULL) {
	//
	//delete weatherScore;
	//weatherScore = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
PipelineImpl::fromJson(char* jsonStr)
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
	const gchar *fullNameKey = "fullName";
	node = json_object_get_member(pJsonObject, fullNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fullName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *latestRunKey = "latestRun";
	node = json_object_get_member(pJsonObject, latestRunKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&latestRun, node, "std::string", "");
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
	const gchar *weatherScoreKey = "weatherScore";
	node = json_object_get_member(pJsonObject, weatherScoreKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&weatherScore, node, "int", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("PipelineImpllinks")) {
			jsonToValue(&_links, node, "PipelineImpllinks", "PipelineImpllinks");
		} else {
			
			PipelineImpllinks* obj = static_cast<PipelineImpllinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

PipelineImpl::PipelineImpl(char* json)
{
	this->fromJson(json);
}

char*
PipelineImpl::toJson()
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
		std::string obj = getFullName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fullNameKey = "fullName";
	json_object_set_member(pJsonObject, fullNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLatestRun();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *latestRunKey = "latestRun";
	json_object_set_member(pJsonObject, latestRunKey, node);
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
		int obj = getWeatherScore();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *weatherScoreKey = "weatherScore";
	json_object_set_member(pJsonObject, weatherScoreKey, node);
	if (isprimitive("PipelineImpllinks")) {
		PipelineImpllinks obj = getLinks();
		node = converttoJson(&obj, "PipelineImpllinks", "");
	}
	else {
		
		PipelineImpllinks obj = static_cast<PipelineImpllinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PipelineImpl::getClass()
{
	return _class;
}

void
PipelineImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
PipelineImpl::getDisplayName()
{
	return displayName;
}

void
PipelineImpl::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
PipelineImpl::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineImpl::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineImpl::getFullName()
{
	return fullName;
}

void
PipelineImpl::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

std::string
PipelineImpl::getLatestRun()
{
	return latestRun;
}

void
PipelineImpl::setLatestRun(std::string  latestRun)
{
	this->latestRun = latestRun;
}

std::string
PipelineImpl::getName()
{
	return name;
}

void
PipelineImpl::setName(std::string  name)
{
	this->name = name;
}

std::string
PipelineImpl::getOrganization()
{
	return organization;
}

void
PipelineImpl::setOrganization(std::string  organization)
{
	this->organization = organization;
}

int
PipelineImpl::getWeatherScore()
{
	return weatherScore;
}

void
PipelineImpl::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

PipelineImpllinks
PipelineImpl::getLinks()
{
	return _links;
}

void
PipelineImpl::setLinks(PipelineImpllinks  _links)
{
	this->_links = _links;
}


