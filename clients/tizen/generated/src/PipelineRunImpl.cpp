#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineRunImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineRunImpl::PipelineRunImpl()
{
	//__init();
}

PipelineRunImpl::~PipelineRunImpl()
{
	//__cleanup();
}

void
PipelineRunImpl::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//_links = new PipelineRunImpllinks();
	//
	//
	//durationInMillis = null;
	//
	//
	//enQueueTime = std::string();
	//
	//
	//endTime = std::string();
	//
	//
	//estimatedDurationInMillis = null;
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
}

void
PipelineRunImpl::__cleanup()
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
	//if(durationInMillis != NULL) {
	//
	//delete durationInMillis;
	//durationInMillis = NULL;
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
	//if(estimatedDurationInMillis != NULL) {
	//
	//delete estimatedDurationInMillis;
	//estimatedDurationInMillis = NULL;
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
PipelineRunImpl::fromJson(char* jsonStr)
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
	

		if (isprimitive("PipelineRunImpllinks")) {
			jsonToValue(&_links, node, "PipelineRunImpllinks", "PipelineRunImpllinks");
		} else {
			
			PipelineRunImpllinks* obj = static_cast<PipelineRunImpllinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
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
	const gchar *estimatedDurationInMillisKey = "estimatedDurationInMillis";
	node = json_object_get_member(pJsonObject, estimatedDurationInMillisKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&estimatedDurationInMillis, node, "int", "");
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

PipelineRunImpl::PipelineRunImpl(char* json)
{
	this->fromJson(json);
}

char*
PipelineRunImpl::toJson()
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
	if (isprimitive("PipelineRunImpllinks")) {
		PipelineRunImpllinks obj = getLinks();
		node = converttoJson(&obj, "PipelineRunImpllinks", "");
	}
	else {
		
		PipelineRunImpllinks obj = static_cast<PipelineRunImpllinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("int")) {
		int obj = getDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *durationInMillisKey = "durationInMillis";
	json_object_set_member(pJsonObject, durationInMillisKey, node);
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
	if (isprimitive("int")) {
		int obj = getEstimatedDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *estimatedDurationInMillisKey = "estimatedDurationInMillis";
	json_object_set_member(pJsonObject, estimatedDurationInMillisKey, node);
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
PipelineRunImpl::getClass()
{
	return _class;
}

void
PipelineRunImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

PipelineRunImpllinks
PipelineRunImpl::getLinks()
{
	return _links;
}

void
PipelineRunImpl::setLinks(PipelineRunImpllinks  _links)
{
	this->_links = _links;
}

int
PipelineRunImpl::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelineRunImpl::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

std::string
PipelineRunImpl::getEnQueueTime()
{
	return enQueueTime;
}

void
PipelineRunImpl::setEnQueueTime(std::string  enQueueTime)
{
	this->enQueueTime = enQueueTime;
}

std::string
PipelineRunImpl::getEndTime()
{
	return endTime;
}

void
PipelineRunImpl::setEndTime(std::string  endTime)
{
	this->endTime = endTime;
}

int
PipelineRunImpl::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineRunImpl::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineRunImpl::getId()
{
	return id;
}

void
PipelineRunImpl::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineRunImpl::getOrganization()
{
	return organization;
}

void
PipelineRunImpl::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::string
PipelineRunImpl::getPipeline()
{
	return pipeline;
}

void
PipelineRunImpl::setPipeline(std::string  pipeline)
{
	this->pipeline = pipeline;
}

std::string
PipelineRunImpl::getResult()
{
	return result;
}

void
PipelineRunImpl::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelineRunImpl::getRunSummary()
{
	return runSummary;
}

void
PipelineRunImpl::setRunSummary(std::string  runSummary)
{
	this->runSummary = runSummary;
}

std::string
PipelineRunImpl::getStartTime()
{
	return startTime;
}

void
PipelineRunImpl::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelineRunImpl::getState()
{
	return state;
}

void
PipelineRunImpl::setState(std::string  state)
{
	this->state = state;
}

std::string
PipelineRunImpl::getType()
{
	return type;
}

void
PipelineRunImpl::setType(std::string  type)
{
	this->type = type;
}

std::string
PipelineRunImpl::getCommitId()
{
	return commitId;
}

void
PipelineRunImpl::setCommitId(std::string  commitId)
{
	this->commitId = commitId;
}


