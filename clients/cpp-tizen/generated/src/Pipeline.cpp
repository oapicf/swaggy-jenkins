#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Pipeline.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Pipeline::Pipeline()
{
	//__init();
}

Pipeline::~Pipeline()
{
	//__cleanup();
}

void
Pipeline::__init()
{
	//_class = std::string();
	//organization = std::string();
	//name = std::string();
	//displayName = std::string();
	//fullName = std::string();
	//weatherScore = int(0);
	//estimatedDurationInMillis = int(0);
	//latestRun = new PipelinelatestRun();
}

void
Pipeline::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(organization != NULL) {
	//
	//delete organization;
	//organization = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
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
	//if(weatherScore != NULL) {
	//
	//delete weatherScore;
	//weatherScore = NULL;
	//}
	//if(estimatedDurationInMillis != NULL) {
	//
	//delete estimatedDurationInMillis;
	//estimatedDurationInMillis = NULL;
	//}
	//if(latestRun != NULL) {
	//
	//delete latestRun;
	//latestRun = NULL;
	//}
	//
}

void
Pipeline::fromJson(char* jsonStr)
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
	const gchar *organizationKey = "organization";
	node = json_object_get_member(pJsonObject, organizationKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&organization, node, "std::string", "");
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
	const gchar *weatherScoreKey = "weatherScore";
	node = json_object_get_member(pJsonObject, weatherScoreKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&weatherScore, node, "int", "");
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
	const gchar *latestRunKey = "latestRun";
	node = json_object_get_member(pJsonObject, latestRunKey);
	if (node !=NULL) {
	

		if (isprimitive("PipelinelatestRun")) {
			jsonToValue(&latestRun, node, "PipelinelatestRun", "PipelinelatestRun");
		} else {
			
			PipelinelatestRun* obj = static_cast<PipelinelatestRun*> (&latestRun);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Pipeline::Pipeline(char* json)
{
	this->fromJson(json);
}

char*
Pipeline::toJson()
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
		std::string obj = getOrganization();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *organizationKey = "organization";
	json_object_set_member(pJsonObject, organizationKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
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
	if (isprimitive("int")) {
		int obj = getWeatherScore();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *weatherScoreKey = "weatherScore";
	json_object_set_member(pJsonObject, weatherScoreKey, node);
	if (isprimitive("int")) {
		int obj = getEstimatedDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *estimatedDurationInMillisKey = "estimatedDurationInMillis";
	json_object_set_member(pJsonObject, estimatedDurationInMillisKey, node);
	if (isprimitive("PipelinelatestRun")) {
		PipelinelatestRun obj = getLatestRun();
		node = converttoJson(&obj, "PipelinelatestRun", "");
	}
	else {
		
		PipelinelatestRun obj = static_cast<PipelinelatestRun> (getLatestRun());
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
Pipeline::getClass()
{
	return _class;
}

void
Pipeline::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
Pipeline::getOrganization()
{
	return organization;
}

void
Pipeline::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::string
Pipeline::getName()
{
	return name;
}

void
Pipeline::setName(std::string  name)
{
	this->name = name;
}

std::string
Pipeline::getDisplayName()
{
	return displayName;
}

void
Pipeline::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::string
Pipeline::getFullName()
{
	return fullName;
}

void
Pipeline::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

int
Pipeline::getWeatherScore()
{
	return weatherScore;
}

void
Pipeline::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

int
Pipeline::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
Pipeline::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

PipelinelatestRun
Pipeline::getLatestRun()
{
	return latestRun;
}

void
Pipeline::setLatestRun(PipelinelatestRun  latestRun)
{
	this->latestRun = latestRun;
}


