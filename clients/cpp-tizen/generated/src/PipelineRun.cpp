#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineRun.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineRun::PipelineRun()
{
	//__init();
}

PipelineRun::~PipelineRun()
{
	//__cleanup();
}

void
PipelineRun::__init()
{
	//_class = std::string();
	//new std::list()std::list> artifacts;
	//durationInMillis = int(0);
	//estimatedDurationInMillis = int(0);
	//enQueueTime = std::string();
	//endTime = std::string();
	//id = std::string();
	//organization = std::string();
	//pipeline = std::string();
	//result = std::string();
	//runSummary = std::string();
	//startTime = std::string();
	//state = std::string();
	//type = std::string();
	//commitId = std::string();
}

void
PipelineRun::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(artifacts != NULL) {
	//artifacts.RemoveAll(true);
	//delete artifacts;
	//artifacts = NULL;
	//}
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
	//
}

void
PipelineRun::fromJson(char* jsonStr)
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
	const gchar *artifactsKey = "artifacts";
	node = json_object_get_member(pJsonObject, artifactsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<PipelineRunartifacts> new_list;
			PipelineRunartifacts inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("PipelineRunartifacts")) {
					jsonToValue(&inst, temp_json, "PipelineRunartifacts", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			artifacts = new_list;
		}
		
	}
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
}

PipelineRun::PipelineRun(char* json)
{
	this->fromJson(json);
}

char*
PipelineRun::toJson()
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
	if (isprimitive("PipelineRunartifacts")) {
		list<PipelineRunartifacts> new_list = static_cast<list <PipelineRunartifacts> > (getArtifacts());
		node = converttoJson(&new_list, "PipelineRunartifacts", "array");
	} else {
		node = json_node_alloc();
		list<PipelineRunartifacts> new_list = static_cast<list <PipelineRunartifacts> > (getArtifacts());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<PipelineRunartifacts>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			PipelineRunartifacts obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *artifactsKey = "artifacts";
	json_object_set_member(pJsonObject, artifactsKey, node);
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PipelineRun::getClass()
{
	return _class;
}

void
PipelineRun::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<PipelineRunartifacts>
PipelineRun::getArtifacts()
{
	return artifacts;
}

void
PipelineRun::setArtifacts(std::list <PipelineRunartifacts> artifacts)
{
	this->artifacts = artifacts;
}

int
PipelineRun::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelineRun::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

int
PipelineRun::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineRun::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineRun::getEnQueueTime()
{
	return enQueueTime;
}

void
PipelineRun::setEnQueueTime(std::string  enQueueTime)
{
	this->enQueueTime = enQueueTime;
}

std::string
PipelineRun::getEndTime()
{
	return endTime;
}

void
PipelineRun::setEndTime(std::string  endTime)
{
	this->endTime = endTime;
}

std::string
PipelineRun::getId()
{
	return id;
}

void
PipelineRun::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineRun::getOrganization()
{
	return organization;
}

void
PipelineRun::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::string
PipelineRun::getPipeline()
{
	return pipeline;
}

void
PipelineRun::setPipeline(std::string  pipeline)
{
	this->pipeline = pipeline;
}

std::string
PipelineRun::getResult()
{
	return result;
}

void
PipelineRun::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelineRun::getRunSummary()
{
	return runSummary;
}

void
PipelineRun::setRunSummary(std::string  runSummary)
{
	this->runSummary = runSummary;
}

std::string
PipelineRun::getStartTime()
{
	return startTime;
}

void
PipelineRun::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelineRun::getState()
{
	return state;
}

void
PipelineRun::setState(std::string  state)
{
	this->state = state;
}

std::string
PipelineRun::getType()
{
	return type;
}

void
PipelineRun::setType(std::string  type)
{
	this->type = type;
}

std::string
PipelineRun::getCommitId()
{
	return commitId;
}

void
PipelineRun::setCommitId(std::string  commitId)
{
	this->commitId = commitId;
}


