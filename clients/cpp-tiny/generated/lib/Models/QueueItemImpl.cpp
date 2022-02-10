

#include "QueueItemImpl.h"

using namespace Tiny;

QueueItemImpl::QueueItemImpl()
{
	_class = std::string();
	expectedBuildNumber = int(0);
	id = std::string();
	pipeline = std::string();
	queuedTime = int(0);
}

QueueItemImpl::QueueItemImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

QueueItemImpl::~QueueItemImpl()
{

}

void
QueueItemImpl::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *expectedBuildNumberKey = "expectedBuildNumber";

    if(object.has_key(expectedBuildNumberKey))
    {
        bourne::json value = object[expectedBuildNumberKey];



        jsonToValue(&expectedBuildNumber, value, "int");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *pipelineKey = "pipeline";

    if(object.has_key(pipelineKey))
    {
        bourne::json value = object[pipelineKey];



        jsonToValue(&pipeline, value, "std::string");


    }

    const char *queuedTimeKey = "queuedTime";

    if(object.has_key(queuedTimeKey))
    {
        bourne::json value = object[queuedTimeKey];



        jsonToValue(&queuedTime, value, "int");


    }


}

bourne::json
QueueItemImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["expectedBuildNumber"] = getExpectedBuildNumber();






    object["id"] = getId();






    object["pipeline"] = getPipeline();






    object["queuedTime"] = getQueuedTime();



    return object;

}

std::string
QueueItemImpl::getClass()
{
	return _class;
}

void
QueueItemImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

int
QueueItemImpl::getExpectedBuildNumber()
{
	return expectedBuildNumber;
}

void
QueueItemImpl::setExpectedBuildNumber(int  expectedBuildNumber)
{
	this->expectedBuildNumber = expectedBuildNumber;
}

std::string
QueueItemImpl::getId()
{
	return id;
}

void
QueueItemImpl::setId(std::string  id)
{
	this->id = id;
}

std::string
QueueItemImpl::getPipeline()
{
	return pipeline;
}

void
QueueItemImpl::setPipeline(std::string  pipeline)
{
	this->pipeline = pipeline;
}

int
QueueItemImpl::getQueuedTime()
{
	return queuedTime;
}

void
QueueItemImpl::setQueuedTime(int  queuedTime)
{
	this->queuedTime = queuedTime;
}



