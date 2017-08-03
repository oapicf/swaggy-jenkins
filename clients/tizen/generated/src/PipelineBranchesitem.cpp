#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineBranchesitem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineBranchesitem::PipelineBranchesitem()
{
	//__init();
}

PipelineBranchesitem::~PipelineBranchesitem()
{
	//__cleanup();
}

void
PipelineBranchesitem::__init()
{
	//
	//
	//displayName = std::string();
	//
	//
	//estimatedDurationInMillis = null;
	//
	//
	//name = std::string();
	//
	//
	//weatherScore = null;
	//
	//
	//latestRun = new PipelineBranchesitemlatestRun();
	//
	//
	//organization = std::string();
	//
	//
	//pullRequest = new PipelineBranchesitempullRequest();
	//
	//
	//totalNumberOfPullRequests = null;
	//
	//
	//_class = std::string();
	//
}

void
PipelineBranchesitem::__cleanup()
{
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
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(weatherScore != NULL) {
	//
	//delete weatherScore;
	//weatherScore = NULL;
	//}
	//if(latestRun != NULL) {
	//
	//delete latestRun;
	//latestRun = NULL;
	//}
	//if(organization != NULL) {
	//
	//delete organization;
	//organization = NULL;
	//}
	//if(pullRequest != NULL) {
	//
	//delete pullRequest;
	//pullRequest = NULL;
	//}
	//if(totalNumberOfPullRequests != NULL) {
	//
	//delete totalNumberOfPullRequests;
	//totalNumberOfPullRequests = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
PipelineBranchesitem::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
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
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
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
	const gchar *latestRunKey = "latestRun";
	node = json_object_get_member(pJsonObject, latestRunKey);
	if (node !=NULL) {
	

		if (isprimitive("PipelineBranchesitemlatestRun")) {
			jsonToValue(&latestRun, node, "PipelineBranchesitemlatestRun", "PipelineBranchesitemlatestRun");
		} else {
			
			PipelineBranchesitemlatestRun* obj = static_cast<PipelineBranchesitemlatestRun*> (&latestRun);
			obj->fromJson(json_to_string(node, false));
			
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
	const gchar *pullRequestKey = "pullRequest";
	node = json_object_get_member(pJsonObject, pullRequestKey);
	if (node !=NULL) {
	

		if (isprimitive("PipelineBranchesitempullRequest")) {
			jsonToValue(&pullRequest, node, "PipelineBranchesitempullRequest", "PipelineBranchesitempullRequest");
		} else {
			
			PipelineBranchesitempullRequest* obj = static_cast<PipelineBranchesitempullRequest*> (&pullRequest);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *totalNumberOfPullRequestsKey = "totalNumberOfPullRequests";
	node = json_object_get_member(pJsonObject, totalNumberOfPullRequestsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&totalNumberOfPullRequests, node, "int", "");
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
}

PipelineBranchesitem::PipelineBranchesitem(char* json)
{
	this->fromJson(json);
}

char*
PipelineBranchesitem::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
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
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("int")) {
		int obj = getWeatherScore();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *weatherScoreKey = "weatherScore";
	json_object_set_member(pJsonObject, weatherScoreKey, node);
	if (isprimitive("PipelineBranchesitemlatestRun")) {
		PipelineBranchesitemlatestRun obj = getLatestRun();
		node = converttoJson(&obj, "PipelineBranchesitemlatestRun", "");
	}
	else {
		
		PipelineBranchesitemlatestRun obj = static_cast<PipelineBranchesitemlatestRun> (getLatestRun());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *latestRunKey = "latestRun";
	json_object_set_member(pJsonObject, latestRunKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOrganization();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *organizationKey = "organization";
	json_object_set_member(pJsonObject, organizationKey, node);
	if (isprimitive("PipelineBranchesitempullRequest")) {
		PipelineBranchesitempullRequest obj = getPullRequest();
		node = converttoJson(&obj, "PipelineBranchesitempullRequest", "");
	}
	else {
		
		PipelineBranchesitempullRequest obj = static_cast<PipelineBranchesitempullRequest> (getPullRequest());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *pullRequestKey = "pullRequest";
	json_object_set_member(pJsonObject, pullRequestKey, node);
	if (isprimitive("int")) {
		int obj = getTotalNumberOfPullRequests();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *totalNumberOfPullRequestsKey = "totalNumberOfPullRequests";
	json_object_set_member(pJsonObject, totalNumberOfPullRequestsKey, node);
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

std::string
PipelineBranchesitem::getDisplayName()
{
	return displayName;
}

void
PipelineBranchesitem::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
PipelineBranchesitem::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineBranchesitem::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineBranchesitem::getName()
{
	return name;
}

void
PipelineBranchesitem::setName(std::string  name)
{
	this->name = name;
}

int
PipelineBranchesitem::getWeatherScore()
{
	return weatherScore;
}

void
PipelineBranchesitem::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

PipelineBranchesitemlatestRun
PipelineBranchesitem::getLatestRun()
{
	return latestRun;
}

void
PipelineBranchesitem::setLatestRun(PipelineBranchesitemlatestRun  latestRun)
{
	this->latestRun = latestRun;
}

std::string
PipelineBranchesitem::getOrganization()
{
	return organization;
}

void
PipelineBranchesitem::setOrganization(std::string  organization)
{
	this->organization = organization;
}

PipelineBranchesitempullRequest
PipelineBranchesitem::getPullRequest()
{
	return pullRequest;
}

void
PipelineBranchesitem::setPullRequest(PipelineBranchesitempullRequest  pullRequest)
{
	this->pullRequest = pullRequest;
}

int
PipelineBranchesitem::getTotalNumberOfPullRequests()
{
	return totalNumberOfPullRequests;
}

void
PipelineBranchesitem::setTotalNumberOfPullRequests(int  totalNumberOfPullRequests)
{
	this->totalNumberOfPullRequests = totalNumberOfPullRequests;
}

std::string
PipelineBranchesitem::getClass()
{
	return _class;
}

void
PipelineBranchesitem::setClass(std::string  _class)
{
	this->_class = _class;
}


