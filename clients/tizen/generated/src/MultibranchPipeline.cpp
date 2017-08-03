#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "MultibranchPipeline.h"

using namespace std;
using namespace Tizen::ArtikCloud;

MultibranchPipeline::MultibranchPipeline()
{
	//__init();
}

MultibranchPipeline::~MultibranchPipeline()
{
	//__cleanup();
}

void
MultibranchPipeline::__init()
{
	//
	//
	//displayName = std::string();
	//
	//
	//estimatedDurationInMillis = null;
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
	//new std::list()std::list> branchNames;
	//
	//
	//
	//numberOfFailingBranches = null;
	//
	//
	//numberOfFailingPullRequests = null;
	//
	//
	//numberOfSuccessfulBranches = null;
	//
	//
	//numberOfSuccessfulPullRequests = null;
	//
	//
	//totalNumberOfBranches = null;
	//
	//
	//totalNumberOfPullRequests = null;
	//
	//
	//_class = std::string();
	//
}

void
MultibranchPipeline::__cleanup()
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
	//if(branchNames != NULL) {
	//branchNames.RemoveAll(true);
	//delete branchNames;
	//branchNames = NULL;
	//}
	//if(numberOfFailingBranches != NULL) {
	//
	//delete numberOfFailingBranches;
	//numberOfFailingBranches = NULL;
	//}
	//if(numberOfFailingPullRequests != NULL) {
	//
	//delete numberOfFailingPullRequests;
	//numberOfFailingPullRequests = NULL;
	//}
	//if(numberOfSuccessfulBranches != NULL) {
	//
	//delete numberOfSuccessfulBranches;
	//numberOfSuccessfulBranches = NULL;
	//}
	//if(numberOfSuccessfulPullRequests != NULL) {
	//
	//delete numberOfSuccessfulPullRequests;
	//numberOfSuccessfulPullRequests = NULL;
	//}
	//if(totalNumberOfBranches != NULL) {
	//
	//delete totalNumberOfBranches;
	//totalNumberOfBranches = NULL;
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
MultibranchPipeline::fromJson(char* jsonStr)
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
	const gchar *branchNamesKey = "branchNames";
	node = json_object_get_member(pJsonObject, branchNamesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			branchNames = new_list;
		}
		
	}
	const gchar *numberOfFailingBranchesKey = "numberOfFailingBranches";
	node = json_object_get_member(pJsonObject, numberOfFailingBranchesKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&numberOfFailingBranches, node, "int", "");
		} else {
			
		}
	}
	const gchar *numberOfFailingPullRequestsKey = "numberOfFailingPullRequests";
	node = json_object_get_member(pJsonObject, numberOfFailingPullRequestsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&numberOfFailingPullRequests, node, "int", "");
		} else {
			
		}
	}
	const gchar *numberOfSuccessfulBranchesKey = "numberOfSuccessfulBranches";
	node = json_object_get_member(pJsonObject, numberOfSuccessfulBranchesKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&numberOfSuccessfulBranches, node, "int", "");
		} else {
			
		}
	}
	const gchar *numberOfSuccessfulPullRequestsKey = "numberOfSuccessfulPullRequests";
	node = json_object_get_member(pJsonObject, numberOfSuccessfulPullRequestsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&numberOfSuccessfulPullRequests, node, "int", "");
		} else {
			
		}
	}
	const gchar *totalNumberOfBranchesKey = "totalNumberOfBranches";
	node = json_object_get_member(pJsonObject, totalNumberOfBranchesKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&totalNumberOfBranches, node, "int", "");
		} else {
			
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

MultibranchPipeline::MultibranchPipeline(char* json)
{
	this->fromJson(json);
}

char*
MultibranchPipeline::toJson()
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
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getBranchNames());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getBranchNames());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *branchNamesKey = "branchNames";
	json_object_set_member(pJsonObject, branchNamesKey, node);
	if (isprimitive("int")) {
		int obj = getNumberOfFailingBranches();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberOfFailingBranchesKey = "numberOfFailingBranches";
	json_object_set_member(pJsonObject, numberOfFailingBranchesKey, node);
	if (isprimitive("int")) {
		int obj = getNumberOfFailingPullRequests();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberOfFailingPullRequestsKey = "numberOfFailingPullRequests";
	json_object_set_member(pJsonObject, numberOfFailingPullRequestsKey, node);
	if (isprimitive("int")) {
		int obj = getNumberOfSuccessfulBranches();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberOfSuccessfulBranchesKey = "numberOfSuccessfulBranches";
	json_object_set_member(pJsonObject, numberOfSuccessfulBranchesKey, node);
	if (isprimitive("int")) {
		int obj = getNumberOfSuccessfulPullRequests();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *numberOfSuccessfulPullRequestsKey = "numberOfSuccessfulPullRequests";
	json_object_set_member(pJsonObject, numberOfSuccessfulPullRequestsKey, node);
	if (isprimitive("int")) {
		int obj = getTotalNumberOfBranches();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *totalNumberOfBranchesKey = "totalNumberOfBranches";
	json_object_set_member(pJsonObject, totalNumberOfBranchesKey, node);
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
MultibranchPipeline::getDisplayName()
{
	return displayName;
}

void
MultibranchPipeline::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
MultibranchPipeline::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
MultibranchPipeline::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
MultibranchPipeline::getLatestRun()
{
	return latestRun;
}

void
MultibranchPipeline::setLatestRun(std::string  latestRun)
{
	this->latestRun = latestRun;
}

std::string
MultibranchPipeline::getName()
{
	return name;
}

void
MultibranchPipeline::setName(std::string  name)
{
	this->name = name;
}

std::string
MultibranchPipeline::getOrganization()
{
	return organization;
}

void
MultibranchPipeline::setOrganization(std::string  organization)
{
	this->organization = organization;
}

int
MultibranchPipeline::getWeatherScore()
{
	return weatherScore;
}

void
MultibranchPipeline::setWeatherScore(int  weatherScore)
{
	this->weatherScore = weatherScore;
}

std::list<std::string>
MultibranchPipeline::getBranchNames()
{
	return branchNames;
}

void
MultibranchPipeline::setBranchNames(std::list <std::string> branchNames)
{
	this->branchNames = branchNames;
}

int
MultibranchPipeline::getNumberOfFailingBranches()
{
	return numberOfFailingBranches;
}

void
MultibranchPipeline::setNumberOfFailingBranches(int  numberOfFailingBranches)
{
	this->numberOfFailingBranches = numberOfFailingBranches;
}

int
MultibranchPipeline::getNumberOfFailingPullRequests()
{
	return numberOfFailingPullRequests;
}

void
MultibranchPipeline::setNumberOfFailingPullRequests(int  numberOfFailingPullRequests)
{
	this->numberOfFailingPullRequests = numberOfFailingPullRequests;
}

int
MultibranchPipeline::getNumberOfSuccessfulBranches()
{
	return numberOfSuccessfulBranches;
}

void
MultibranchPipeline::setNumberOfSuccessfulBranches(int  numberOfSuccessfulBranches)
{
	this->numberOfSuccessfulBranches = numberOfSuccessfulBranches;
}

int
MultibranchPipeline::getNumberOfSuccessfulPullRequests()
{
	return numberOfSuccessfulPullRequests;
}

void
MultibranchPipeline::setNumberOfSuccessfulPullRequests(int  numberOfSuccessfulPullRequests)
{
	this->numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
}

int
MultibranchPipeline::getTotalNumberOfBranches()
{
	return totalNumberOfBranches;
}

void
MultibranchPipeline::setTotalNumberOfBranches(int  totalNumberOfBranches)
{
	this->totalNumberOfBranches = totalNumberOfBranches;
}

int
MultibranchPipeline::getTotalNumberOfPullRequests()
{
	return totalNumberOfPullRequests;
}

void
MultibranchPipeline::setTotalNumberOfPullRequests(int  totalNumberOfPullRequests)
{
	this->totalNumberOfPullRequests = totalNumberOfPullRequests;
}

std::string
MultibranchPipeline::getClass()
{
	return _class;
}

void
MultibranchPipeline::setClass(std::string  _class)
{
	this->_class = _class;
}


