

#include "PipelinelatestRun.h"

using namespace Tiny;

PipelinelatestRun::PipelinelatestRun()
{
	artifacts = std::list<PipelinelatestRunartifacts>();
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
	_class = std::string();
}

PipelinelatestRun::PipelinelatestRun(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelinelatestRun::~PipelinelatestRun()
{

}

void
PipelinelatestRun::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *artifactsKey = "artifacts";

    if(object.has_key(artifactsKey))
    {
        bourne::json value = object[artifactsKey];


        std::list<PipelinelatestRunartifacts> artifacts_list;
        PipelinelatestRunartifacts element;
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

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelinelatestRun::toJson()
{
    bourne::json object = bourne::json::object();




    std::list<PipelinelatestRunartifacts> artifacts_list = getArtifacts();
    bourne::json artifacts_arr = bourne::json::array();

    for(auto& var : artifacts_list)
    {
        PipelinelatestRunartifacts obj = var;
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






    object["_class"] = getClass();



    return object;

}

std::list<PipelinelatestRunartifacts>
PipelinelatestRun::getArtifacts()
{
	return artifacts;
}

void
PipelinelatestRun::setArtifacts(std::list <PipelinelatestRunartifacts> artifacts)
{
	this->artifacts = artifacts;
}

int
PipelinelatestRun::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelinelatestRun::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

int
PipelinelatestRun::getEstimatedDurationInMillis()
{
	return estimatedDurationInMillis;
}

void
PipelinelatestRun::setEstimatedDurationInMillis(int  estimatedDurationInMillis)
{
	this->estimatedDurationInMillis = estimatedDurationInMillis;
}

std::string
PipelinelatestRun::getEnQueueTime()
{
	return enQueueTime;
}

void
PipelinelatestRun::setEnQueueTime(std::string  enQueueTime)
{
	this->enQueueTime = enQueueTime;
}

std::string
PipelinelatestRun::getEndTime()
{
	return endTime;
}

void
PipelinelatestRun::setEndTime(std::string  endTime)
{
	this->endTime = endTime;
}

std::string
PipelinelatestRun::getId()
{
	return id;
}

void
PipelinelatestRun::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelinelatestRun::getOrganization()
{
	return organization;
}

void
PipelinelatestRun::setOrganization(std::string  organization)
{
	this->organization = organization;
}

std::string
PipelinelatestRun::getPipeline()
{
	return pipeline;
}

void
PipelinelatestRun::setPipeline(std::string  pipeline)
{
	this->pipeline = pipeline;
}

std::string
PipelinelatestRun::getResult()
{
	return result;
}

void
PipelinelatestRun::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelinelatestRun::getRunSummary()
{
	return runSummary;
}

void
PipelinelatestRun::setRunSummary(std::string  runSummary)
{
	this->runSummary = runSummary;
}

std::string
PipelinelatestRun::getStartTime()
{
	return startTime;
}

void
PipelinelatestRun::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelinelatestRun::getState()
{
	return state;
}

void
PipelinelatestRun::setState(std::string  state)
{
	this->state = state;
}

std::string
PipelinelatestRun::getType()
{
	return type;
}

void
PipelinelatestRun::setType(std::string  type)
{
	this->type = type;
}

std::string
PipelinelatestRun::getCommitId()
{
	return commitId;
}

void
PipelinelatestRun::setCommitId(std::string  commitId)
{
	this->commitId = commitId;
}

std::string
PipelinelatestRun::getClass()
{
	return _class;
}

void
PipelinelatestRun::setClass(std::string  _class)
{
	this->_class = _class;
}



