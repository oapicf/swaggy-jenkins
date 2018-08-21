#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineStepImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineStepImpl::PipelineStepImpl()
{
	//__init();
}

PipelineStepImpl::~PipelineStepImpl()
{
	//__cleanup();
}

void
PipelineStepImpl::__init()
{
	//_class = std::string();
	//_links = new PipelineStepImpllinks();
	//displayName = std::string();
	//durationInMillis = int(0);
	//id = std::string();
	//input = new InputStepImpl();
	//result = std::string();
	//startTime = std::string();
	//state = std::string();
}

void
PipelineStepImpl::__cleanup()
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
	//if(displayName != NULL) {
	//
	//delete displayName;
	//displayName = NULL;
	//}
	//if(durationInMillis != NULL) {
	//
	//delete durationInMillis;
	//durationInMillis = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(input != NULL) {
	//
	//delete input;
	//input = NULL;
	//}
	//if(result != NULL) {
	//
	//delete result;
	//result = NULL;
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
	//
}

void
PipelineStepImpl::fromJson(char* jsonStr)
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
	

		if (isprimitive("PipelineStepImpllinks")) {
			jsonToValue(&_links, node, "PipelineStepImpllinks", "PipelineStepImpllinks");
		} else {
			
			PipelineStepImpllinks* obj = static_cast<PipelineStepImpllinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *displayNameKey = "displayName";
	node = json_object_get_member(pJsonObject, displayNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&displayName, node, "std::string", "");
		} else {
			
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
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *inputKey = "input";
	node = json_object_get_member(pJsonObject, inputKey);
	if (node !=NULL) {
	

		if (isprimitive("InputStepImpl")) {
			jsonToValue(&input, node, "InputStepImpl", "InputStepImpl");
		} else {
			
			InputStepImpl* obj = static_cast<InputStepImpl*> (&input);
			obj->fromJson(json_to_string(node, false));
			
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
}

PipelineStepImpl::PipelineStepImpl(char* json)
{
	this->fromJson(json);
}

char*
PipelineStepImpl::toJson()
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
	if (isprimitive("PipelineStepImpllinks")) {
		PipelineStepImpllinks obj = getLinks();
		node = converttoJson(&obj, "PipelineStepImpllinks", "");
	}
	else {
		
		PipelineStepImpllinks obj = static_cast<PipelineStepImpllinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *displayNameKey = "displayName";
	json_object_set_member(pJsonObject, displayNameKey, node);
	if (isprimitive("int")) {
		int obj = getDurationInMillis();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *durationInMillisKey = "durationInMillis";
	json_object_set_member(pJsonObject, durationInMillisKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("InputStepImpl")) {
		InputStepImpl obj = getInput();
		node = converttoJson(&obj, "InputStepImpl", "");
	}
	else {
		
		InputStepImpl obj = static_cast<InputStepImpl> (getInput());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *inputKey = "input";
	json_object_set_member(pJsonObject, inputKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResult();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *resultKey = "result";
	json_object_set_member(pJsonObject, resultKey, node);
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


