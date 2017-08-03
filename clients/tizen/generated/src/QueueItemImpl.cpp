#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QueueItemImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QueueItemImpl::QueueItemImpl()
{
	//__init();
}

QueueItemImpl::~QueueItemImpl()
{
	//__cleanup();
}

void
QueueItemImpl::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//expectedBuildNumber = null;
	//
	//
	//id = std::string();
	//
	//
	//pipeline = std::string();
	//
	//
	//queuedTime = null;
	//
}

void
QueueItemImpl::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(expectedBuildNumber != NULL) {
	//
	//delete expectedBuildNumber;
	//expectedBuildNumber = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(pipeline != NULL) {
	//
	//delete pipeline;
	//pipeline = NULL;
	//}
	//if(queuedTime != NULL) {
	//
	//delete queuedTime;
	//queuedTime = NULL;
	//}
	//
}

void
QueueItemImpl::fromJson(char* jsonStr)
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
	const gchar *expectedBuildNumberKey = "expectedBuildNumber";
	node = json_object_get_member(pJsonObject, expectedBuildNumberKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&expectedBuildNumber, node, "int", "");
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
	const gchar *pipelineKey = "pipeline";
	node = json_object_get_member(pJsonObject, pipelineKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pipeline, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *queuedTimeKey = "queuedTime";
	node = json_object_get_member(pJsonObject, queuedTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&queuedTime, node, "int", "");
		} else {
			
		}
	}
}

QueueItemImpl::QueueItemImpl(char* json)
{
	this->fromJson(json);
}

char*
QueueItemImpl::toJson()
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
	if (isprimitive("int")) {
		int obj = getExpectedBuildNumber();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *expectedBuildNumberKey = "expectedBuildNumber";
	json_object_set_member(pJsonObject, expectedBuildNumberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPipeline();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pipelineKey = "pipeline";
	json_object_set_member(pJsonObject, pipelineKey, node);
	if (isprimitive("int")) {
		int obj = getQueuedTime();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *queuedTimeKey = "queuedTime";
	json_object_set_member(pJsonObject, queuedTimeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


