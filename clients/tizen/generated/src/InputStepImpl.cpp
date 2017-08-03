#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "InputStepImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

InputStepImpl::InputStepImpl()
{
	//__init();
}

InputStepImpl::~InputStepImpl()
{
	//__cleanup();
}

void
InputStepImpl::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//_links = new InputStepImpllinks();
	//
	//
	//id = std::string();
	//
	//
	//message = std::string();
	//
	//
	//ok = std::string();
	//
	//new std::list()std::list> parameters;
	//
	//
	//
	//submitter = std::string();
	//
}

void
InputStepImpl::__cleanup()
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
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(message != NULL) {
	//
	//delete message;
	//message = NULL;
	//}
	//if(ok != NULL) {
	//
	//delete ok;
	//ok = NULL;
	//}
	//if(parameters != NULL) {
	//parameters.RemoveAll(true);
	//delete parameters;
	//parameters = NULL;
	//}
	//if(submitter != NULL) {
	//
	//delete submitter;
	//submitter = NULL;
	//}
	//
}

void
InputStepImpl::fromJson(char* jsonStr)
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
	

		if (isprimitive("InputStepImpllinks")) {
			jsonToValue(&_links, node, "InputStepImpllinks", "InputStepImpllinks");
		} else {
			
			InputStepImpllinks* obj = static_cast<InputStepImpllinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
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
	const gchar *messageKey = "message";
	node = json_object_get_member(pJsonObject, messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&message, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *okKey = "ok";
	node = json_object_get_member(pJsonObject, okKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&ok, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *parametersKey = "parameters";
	node = json_object_get_member(pJsonObject, parametersKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<StringParameterDefinition> new_list;
			StringParameterDefinition inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("StringParameterDefinition")) {
					jsonToValue(&inst, temp_json, "StringParameterDefinition", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			parameters = new_list;
		}
		
	}
	const gchar *submitterKey = "submitter";
	node = json_object_get_member(pJsonObject, submitterKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&submitter, node, "std::string", "");
		} else {
			
		}
	}
}

InputStepImpl::InputStepImpl(char* json)
{
	this->fromJson(json);
}

char*
InputStepImpl::toJson()
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
	if (isprimitive("InputStepImpllinks")) {
		InputStepImpllinks obj = getLinks();
		node = converttoJson(&obj, "InputStepImpllinks", "");
	}
	else {
		
		InputStepImpllinks obj = static_cast<InputStepImpllinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *messageKey = "message";
	json_object_set_member(pJsonObject, messageKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOk();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *okKey = "ok";
	json_object_set_member(pJsonObject, okKey, node);
	if (isprimitive("StringParameterDefinition")) {
		list<StringParameterDefinition> new_list = static_cast<list <StringParameterDefinition> > (getParameters());
		node = converttoJson(&new_list, "StringParameterDefinition", "array");
	} else {
		node = json_node_alloc();
		list<StringParameterDefinition> new_list = static_cast<list <StringParameterDefinition> > (getParameters());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<StringParameterDefinition>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			StringParameterDefinition obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *parametersKey = "parameters";
	json_object_set_member(pJsonObject, parametersKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubmitter();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *submitterKey = "submitter";
	json_object_set_member(pJsonObject, submitterKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
InputStepImpl::getClass()
{
	return _class;
}

void
InputStepImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

InputStepImpllinks
InputStepImpl::getLinks()
{
	return _links;
}

void
InputStepImpl::setLinks(InputStepImpllinks  _links)
{
	this->_links = _links;
}

std::string
InputStepImpl::getId()
{
	return id;
}

void
InputStepImpl::setId(std::string  id)
{
	this->id = id;
}

std::string
InputStepImpl::getMessage()
{
	return message;
}

void
InputStepImpl::setMessage(std::string  message)
{
	this->message = message;
}

std::string
InputStepImpl::getOk()
{
	return ok;
}

void
InputStepImpl::setOk(std::string  ok)
{
	this->ok = ok;
}

std::list<StringParameterDefinition>
InputStepImpl::getParameters()
{
	return parameters;
}

void
InputStepImpl::setParameters(std::list <StringParameterDefinition> parameters)
{
	this->parameters = parameters;
}

std::string
InputStepImpl::getSubmitter()
{
	return submitter;
}

void
InputStepImpl::setSubmitter(std::string  submitter)
{
	this->submitter = submitter;
}


