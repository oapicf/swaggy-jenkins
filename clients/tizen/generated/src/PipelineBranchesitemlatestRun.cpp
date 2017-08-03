#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineBranchesitemlatestRun.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineBranchesitemlatestRun::PipelineBranchesitemlatestRun()
{
	//__init();
}

PipelineBranchesitemlatestRun::~PipelineBranchesitemlatestRun()
{
	//__cleanup();
}

void
PipelineBranchesitemlatestRun::__init()
{
	//
	//
	//durationInMillis = null;
	//
	//
	//estimatedDurationInMillis = null;
	//
	//
	//enQueueTime = std::string();
	//
	//
	//endTime = std::string();
	//
	//
	//id = std::string();
	//
	//
	//organization = std::string();
	//
	//
	//pipeline = std::string();
	//
	//
	//result = std::string();
	//
	//
	//runSummary = std::string();
	//
	//
	//startTime = std::string();
	//
	//
	//state = std::string();
	//
	//
	//type = std::string();
	//
	//
	//commitId = std::string();
	//
	//
	//_class = std::string();
	//
}

void
PipelineBranchesitemlatestRun::__cleanup()
{
	//if(durationInMillis != NULL) {
	//
	//delete durationInMillis;
	//durationInMillis = NULL;
	//}
	//if(estimatedDurationInMillis != NULL) {
	//
	//delete estimatedDurationInMillis;
	//estimatedDurationInMillis = NULL;
	//}
	//if(enQueueTime != NULL) {
	//
	//delete enQueueTime;
	//enQueueTime = NULL;
	//}
	//if(endTime != NULL) {
	//
	//delete endTime;
	//endTime = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(organization != NULL) {
	//
	//delete organization;
	//organization = NULL;
	//}
	//if(pipeline != NULL) {
	//
	//delete pipeline;
	//pipeline = NULL;
	//}
	//if(result != NULL) {
	//
	//delete result;
	//result = NULL;
	//}
	//if(runSummary != NULL) {
	//
	//delete runSummary;
	//runSummary = NULL;
	//}
	//if(startTime != NULL) {
	//
	//delete startTime;
	//startTime = NULL;
	//}
	//if(state != NULL) {
	//
	//delete state;
	//state = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(commitId != NULL) {
	//
	//delete commitId;
	//commitId = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
PipelineBranchesitemlatestRun::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *durationInMillisKey = "durationInMillis";
	node = json_object_get_member(pJsonObject, durationInMillisKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&durationInMillis, node, "int", "");
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
	const gchar *enQueueTimeKey = "enQueueTime";
	node = json_object_get_member(pJsonObject, enQueueTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&enQueueTime, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *endTimeKey = "endTime";
	node = json_object_get_member(pJsonObject, endTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&endTime, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
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
	const gchar *pipelineKey = "pipeline";
	node = json_object_get_member(pJsonObject, pipelineKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pipeline, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *resultKey = "result";
	node = json_object_get_member(pJsonObject, resultKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&result, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *runSummaryKey = "runSummary";
	node = json_object_get_member(pJsonObject, runSummaryKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&runSummary, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *startTimeKey = "startTime";
	node = json_object_get_member(pJsonObject, startTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&startTime, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *stateKey = "state";
	node = json_object_get_member(pJsonObject, stateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&state, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *commitIdKey = "commitId";
	node = json_object_get_member(pJsonObject, commitIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&commitId, node, "std::string", "");
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

PipelineBranchesitemlatestRun::PipelineBranchesitemlatestRun(char* json)
{
	this->fromJson(json);
}

char*
PipelineBranchesitemlatestRun::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *durationInMillisKey = "durationInMillis";
	json_object_set_member(pJsonObject, durationInMillisKey, node);
	if (isprimitive("int")) {
		int obj = getEstimatedDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *estimatedDurationInMillisKey = "estimatedDurationInMillis";
	json_object_set_member(pJsonObject, estimatedDurationInMillisKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEnQueueTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *enQueueTimeKey = "enQueueTime";
	json_object_set_member(pJsonObject, enQueueTimeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEndTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *endTimeKey = "endTime";
	json_object_set_member(pJsonObject, endTimeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOrganization();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *organizationKey = "organization";
	json_object_set_member(pJsonObject, organizationKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPipeline();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pipelineKey = "pipeline";
	json_object_set_member(pJsonObject, pipelineKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResult();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *resultKey = "result";
	json_object_set_member(pJsonObject, resultKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRunSummary();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *runSummaryKey = "runSummary";
	json_object_set_member(pJsonObject, runSummaryKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStartTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *startTimeKey = "startTime";
	json_object_set_member(pJsonObject, startTimeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getState();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *stateKey = "state";
	json_object_set_member(pJsonObject, stateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCommitId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *commitIdKey = "commitId";
	json_object_set_member(pJsonObject, commitIdKey, node);
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

int
PipelineBranchesitemlatestRun::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelineBranchesitemlatestRun::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

int
PipelineBranchesitemlatestRun::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineBranchesitemlatestRun::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineBranchesitemlatestRun::getEnQueueTime()
{
	return enQueueTime;
}

void
PipelineBranchesitemlatestRun::setEnQueueTime(std::string  enQueueTime)
{
	this->enQueueTime = enQueueTime;
}

std::string
PipelineBranchesitemlatestRun::getEndTime()
{
	return endTime;
}

void
PipelineBranchesitemlatestRun::setEndTime(std::string  endTime)
{
	this->endTime = endTime;
}

std::string
PipelineBranchesitemlatestRun::getId()
{
	return id;
}

void
PipelineBranchesitemlatestRun::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineBranchesitemlatestRun::getOrganization()
{
	return organization;
}

void
PipelineBranchesitemlatestRun::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::string
PipelineBranchesitemlatestRun::getPipeline()
{
	return pipeline;
}

void
PipelineBranchesitemlatestRun::setPipeline(std::string  pipeline)
{
	this->pipeline = pipeline;
}

std::string
PipelineBranchesitemlatestRun::getResult()
{
	return result;
}

void
PipelineBranchesitemlatestRun::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelineBranchesitemlatestRun::getRunSummary()
{
	return runSummary;
}

void
PipelineBranchesitemlatestRun::setRunSummary(std::string  runSummary)
{
	this->runSummary = runSummary;
}

std::string
PipelineBranchesitemlatestRun::getStartTime()
{
	return startTime;
}

void
PipelineBranchesitemlatestRun::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelineBranchesitemlatestRun::getState()
{
	return state;
}

void
PipelineBranchesitemlatestRun::setState(std::string  state)
{
	this->state = state;
}

std::string
PipelineBranchesitemlatestRun::getType()
{
	return type;
}

void
PipelineBranchesitemlatestRun::setType(std::string  type)
{
	this->type = type;
}

std::string
PipelineBranchesitemlatestRun::getCommitId()
{
	return commitId;
}

void
PipelineBranchesitemlatestRun::setCommitId(std::string  commitId)
{
	this->commitId = commitId;
}

std::string
PipelineBranchesitemlatestRun::getClass()
{
	return _class;
}

void
PipelineBranchesitemlatestRun::setClass(std::string  _class)
{
	this->_class = _class;
}


