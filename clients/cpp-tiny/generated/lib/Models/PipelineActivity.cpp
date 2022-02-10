

#include "PipelineActivity.h"

using namespace Tiny;

PipelineActivity::PipelineActivity()
{
	_class = std::string();
	artifacts = std::list<PipelineActivityartifacts>();
	durationInMillis = int(0);
	estimatedDurationInMillis = int(0);
	enQueueTime = std::string();
	endTime = std::string();
	id = std::string();
	organization = std::string();
	pipeline = std::string();
	result = std::string();
	runSummary = std::string();
	startTime = std::string();
	state = std::string();
	type = std::string();
	commitId = std::string();
}

PipelineActivity::PipelineActivity(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineActivity::~PipelineActivity()
{

}

void
PipelineActivity::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *artifactsKey = "artifacts";

    if(object.has_key(artifactsKey))
    {
        bourne::json value = object[artifactsKey];


        std::list<PipelineActivityartifacts> artifacts_list;
        PipelineActivityartifacts element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            artifacts_list.push_back(element);
        }
        artifacts = artifacts_list;


    }

    const char *durationInMillisKey = "durationInMillis";

    if(object.has_key(durationInMillisKey))
    {
        bourne::json value = object[durationInMillisKey];



        jsonToValue(&durationInMillis, value, "int");


    }

    const char *estimatedDurationInMillisKey = "estimatedDurationInMillis";

    if(object.has_key(estimatedDurationInMillisKey))
    {
        bourne::json value = object[estimatedDurationInMillisKey];



        jsonToValue(&estimatedDurationInMillis, value, "int");


    }

    const char *enQueueTimeKey = "enQueueTime";

    if(object.has_key(enQueueTimeKey))
    {
        bourne::json value = object[enQueueTimeKey];



        jsonToValue(&enQueueTime, value, "std::string");


    }

    const char *endTimeKey = "endTime";

    if(object.has_key(endTimeKey))
    {
        bourne::json value = object[endTimeKey];



        jsonToValue(&endTime, value, "std::string");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *organizationKey = "organization";

    if(object.has_key(organizationKey))
    {
        bourne::json value = object[organizationKey];



        jsonToValue(&organization, value, "std::string");


    }

    const char *pipelineKey = "pipeline";

    if(object.has_key(pipelineKey))
    {
        bourne::json value = object[pipelineKey];



        jsonToValue(&pipeline, value, "std::string");


    }

    const char *resultKey = "result";

    if(object.has_key(resultKey))
    {
        bourne::json value = object[resultKey];



        jsonToValue(&result, value, "std::string");


    }

    const char *runSummaryKey = "runSummary";

    if(object.has_key(runSummaryKey))
    {
        bourne::json value = object[runSummaryKey];



        jsonToValue(&runSummary, value, "std::string");


    }

    const char *startTimeKey = "startTime";

    if(object.has_key(startTimeKey))
    {
        bourne::json value = object[startTimeKey];



        jsonToValue(&startTime, value, "std::string");


    }

    const char *stateKey = "state";

    if(object.has_key(stateKey))
    {
        bourne::json value = object[stateKey];



        jsonToValue(&state, value, "std::string");


    }

    const char *typeKey = "type";

    if(object.has_key(typeKey))
    {
        bourne::json value = object[typeKey];



        jsonToValue(&type, value, "std::string");


    }

    const char *commitIdKey = "commitId";

    if(object.has_key(commitIdKey))
    {
        bourne::json value = object[commitIdKey];



        jsonToValue(&commitId, value, "std::string");


    }


}

bourne::json
PipelineActivity::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();





    std::list<PipelineActivityartifacts> artifacts_list = getArtifacts();
    bourne::json artifacts_arr = bourne::json::array();

    for(auto& var : artifacts_list)
    {
        PipelineActivityartifacts obj = var;
        artifacts_arr.append(obj.toJson());
    }
    object["artifacts"] = artifacts_arr;







    object["durationInMillis"] = getDurationInMillis();






    object["estimatedDurationInMillis"] = getEstimatedDurationInMillis();






    object["enQueueTime"] = getEnQueueTime();






    object["endTime"] = getEndTime();






    object["id"] = getId();






    object["organization"] = getOrganization();






    object["pipeline"] = getPipeline();






    object["result"] = getResult();






    object["runSummary"] = getRunSummary();






    object["startTime"] = getStartTime();






    object["state"] = getState();






    object["type"] = getType();






    object["commitId"] = getCommitId();



    return object;

}

std::string
PipelineActivity::getClass()
{
	return _class;
}

void
PipelineActivity::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<PipelineActivityartifacts>
PipelineActivity::getArtifacts()
{
	return artifacts;
}

void
PipelineActivity::setArtifacts(std::list <PipelineActivityartifacts> artifacts)
{
	this->artifacts = artifacts;
}

int
PipelineActivity::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelineActivity::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

int
PipelineActivity::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelineActivity::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelineActivity::getEnQueueTime()
{
	return enQueueTime;
}

void
PipelineActivity::setEnQueueTime(std::string  enQueueTime)
{
	this->enQueueTime = enQueueTime;
}

std::string
PipelineActivity::getEndTime()
{
	return endTime;
}

void
PipelineActivity::setEndTime(std::string  endTime)
{
	this->endTime = endTime;
}

std::string
PipelineActivity::getId()
{
	return id;
}

void
PipelineActivity::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineActivity::getOrganization()
{
	return organization;
}

void
PipelineActivity::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::string
PipelineActivity::getPipeline()
{
	return pipeline;
}

void
PipelineActivity::setPipeline(std::string  pipeline)
{
	this->pipeline = pipeline;
}

std::string
PipelineActivity::getResult()
{
	return result;
}

void
PipelineActivity::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelineActivity::getRunSummary()
{
	return runSummary;
}

void
PipelineActivity::setRunSummary(std::string  runSummary)
{
	this->runSummary = runSummary;
}

std::string
PipelineActivity::getStartTime()
{
	return startTime;
}

void
PipelineActivity::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelineActivity::getState()
{
	return state;
}

void
PipelineActivity::setState(std::string  state)
{
	this->state = state;
}

std::string
PipelineActivity::getType()
{
	return type;
}

void
PipelineActivity::setType(std::string  type)
{
	this->type = type;
}

std::string
PipelineActivity::getCommitId()
{
	return commitId;
}

void
PipelineActivity::setCommitId(std::string  commitId)
{
	this->commitId = commitId;
}



