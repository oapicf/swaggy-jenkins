

#include "PipelineRun.h"

using namespace Tiny;

PipelineRun::PipelineRun()
{
	_class = std::string();
	artifacts = std::list<PipelineRunartifacts>();
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

PipelineRun::PipelineRun(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineRun::~PipelineRun()
{

}

void
PipelineRun::fromJson(std::string jsonObj)
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


        std::list<PipelineRunartifacts> artifacts_list;
        PipelineRunartifacts element;
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
PipelineRun::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();





    std::list<PipelineRunartifacts> artifacts_list = getArtifacts();
    bourne::json artifacts_arr = bourne::json::array();

    for(auto& var : artifacts_list)
    {
        PipelineRunartifacts obj = var;
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



