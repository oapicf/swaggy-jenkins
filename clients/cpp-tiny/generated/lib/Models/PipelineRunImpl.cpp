

#include "PipelineRunImpl.h"

using namespace Tiny;

PipelineRunImpl::PipelineRunImpl()
{
	_class = std::string();
	_links = PipelineRunImpllinks();
	durationInMillis = int(0);
	enQueueTime = std::string();
	endTime = std::string();
	estimatedDurationInMillis = int(0);
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

PipelineRunImpl::PipelineRunImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineRunImpl::~PipelineRunImpl()
{

}

void
PipelineRunImpl::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *_linksKey = "_links";

    if(object.has_key(_linksKey))
    {
        bourne::json value = object[_linksKey];




        PipelineRunImpllinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *durationInMillisKey = "durationInMillis";

    if(object.has_key(durationInMillisKey))
    {
        bourne::json value = object[durationInMillisKey];



        jsonToValue(&durationInMillis, value, "int");


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

    const char *estimatedDurationInMillisKey = "estimatedDurationInMillis";

    if(object.has_key(estimatedDurationInMillisKey))
    {
        bourne::json value = object[estimatedDurationInMillisKey];



        jsonToValue(&estimatedDurationInMillis, value, "int");


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
PipelineRunImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();





    object["durationInMillis"] = getDurationInMillis();






    object["enQueueTime"] = getEnQueueTime();






    object["endTime"] = getEndTime();






    object["estimatedDurationInMillis"] = getEstimatedDurationInMillis();






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



