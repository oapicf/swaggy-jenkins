

#include "PipelineStepImpl.h"

using namespace Tiny;

PipelineStepImpl::PipelineStepImpl()
{
	_class = std::string();
	_links = PipelineStepImpllinks();
	displayName = std::string();
	durationInMillis = int(0);
	id = std::string();
	input = InputStepImpl();
	result = std::string();
	startTime = std::string();
	state = std::string();
}

PipelineStepImpl::PipelineStepImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineStepImpl::~PipelineStepImpl()
{

}

void
PipelineStepImpl::fromJson(std::string jsonObj)
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




        PipelineStepImpllinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *displayNameKey = "displayName";

    if(object.has_key(displayNameKey))
    {
        bourne::json value = object[displayNameKey];



        jsonToValue(&displayName, value, "std::string");


    }

    const char *durationInMillisKey = "durationInMillis";

    if(object.has_key(durationInMillisKey))
    {
        bourne::json value = object[durationInMillisKey];



        jsonToValue(&durationInMillis, value, "int");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *inputKey = "input";

    if(object.has_key(inputKey))
    {
        bourne::json value = object[inputKey];




        InputStepImpl* obj = &input;
		obj->fromJson(value.dump());

    }

    const char *resultKey = "result";

    if(object.has_key(resultKey))
    {
        bourne::json value = object[resultKey];



        jsonToValue(&result, value, "std::string");


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


}

bourne::json
PipelineStepImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();





    object["displayName"] = getDisplayName();






    object["durationInMillis"] = getDurationInMillis();






    object["id"] = getId();







	object["input"] = getInput().toJson();





    object["result"] = getResult();






    object["startTime"] = getStartTime();






    object["state"] = getState();



    return object;

}

std::string
PipelineStepImpl::getClass()
{
	return _class;
}

void
PipelineStepImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

PipelineStepImpllinks
PipelineStepImpl::getLinks()
{
	return _links;
}

void
PipelineStepImpl::setLinks(PipelineStepImpllinks  _links)
{
	this->_links = _links;
}

std::string
PipelineStepImpl::getDisplayName()
{
	return displayName;
}

void
PipelineStepImpl::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
PipelineStepImpl::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelineStepImpl::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

std::string
PipelineStepImpl::getId()
{
	return id;
}

void
PipelineStepImpl::setId(std::string  id)
{
	this->id = id;
}

InputStepImpl
PipelineStepImpl::getInput()
{
	return input;
}

void
PipelineStepImpl::setInput(InputStepImpl  input)
{
	this->input = input;
}

std::string
PipelineStepImpl::getResult()
{
	return result;
}

void
PipelineStepImpl::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelineStepImpl::getStartTime()
{
	return startTime;
}

void
PipelineStepImpl::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelineStepImpl::getState()
{
	return state;
}

void
PipelineStepImpl::setState(std::string  state)
{
	this->state = state;
}



