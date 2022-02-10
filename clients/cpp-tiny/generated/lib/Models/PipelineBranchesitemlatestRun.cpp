

#include "PipelineBranchesitemlatestRun.h"

using namespace Tiny;

PipelineBranchesitemlatestRun::PipelineBranchesitemlatestRun()
{
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

PipelineBranchesitemlatestRun::PipelineBranchesitemlatestRun(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineBranchesitemlatestRun::~PipelineBranchesitemlatestRun()
{

}

void
PipelineBranchesitemlatestRun::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

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
PipelineBranchesitemlatestRun::toJson()
{
    bourne::json object = bourne::json::object();





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



