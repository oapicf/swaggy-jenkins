#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExtensionClassContainerImpl1map.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExtensionClassContainerImpl1map::ExtensionClassContainerImpl1map()
{
	//__init();
}

ExtensionClassContainerImpl1map::~ExtensionClassContainerImpl1map()
{
	//__cleanup();
}

void
ExtensionClassContainerImpl1map::__init()
{
	//iojenkinsblueoceanserviceembeddedrestPipelineImpl = new ExtensionClassImpl();
	//iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = new ExtensionClassImpl();
	//_class = std::string();
}

void
ExtensionClassContainerImpl1map::__cleanup()
{
	//if(iojenkinsblueoceanserviceembeddedrestPipelineImpl != NULL) {
	//
	//delete iojenkinsblueoceanserviceembeddedrestPipelineImpl;
	//iojenkinsblueoceanserviceembeddedrestPipelineImpl = NULL;
	//}
	//if(iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl != NULL) {
	//
	//delete iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
	//iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
ExtensionClassContainerImpl1map::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *iojenkinsblueoceanserviceembeddedrestPipelineImplKey = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl";
	node = json_object_get_member(pJsonObject, iojenkinsblueoceanserviceembeddedrestPipelineImplKey);
	if (node !=NULL) {
	

		if (isprimitive("ExtensionClassImpl")) {
			jsonToValue(&iojenkinsblueoceanserviceembeddedrestPipelineImpl, node, "ExtensionClassImpl", "ExtensionClassImpl");
		} else {
			
			ExtensionClassImpl* obj = static_cast<ExtensionClassImpl*> (&iojenkinsblueoceanserviceembeddedrestPipelineImpl);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl";
	node = json_object_get_member(pJsonObject, iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey);
	if (node !=NULL) {
	

		if (isprimitive("ExtensionClassImpl")) {
			jsonToValue(&iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl, node, "ExtensionClassImpl", "ExtensionClassImpl");
		} else {
			
			ExtensionClassImpl* obj = static_cast<ExtensionClassImpl*> (&iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *_classKey = "_class";
	node = json_object_get_member(pJsonObject, _classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_class, node, "std::string", "");
		} else {
			
		}
	}
}

ExtensionClassContainerImpl1map::ExtensionClassContainerImpl1map(char* json)
{
	this->fromJson(json);
}

char*
ExtensionClassContainerImpl1map::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExtensionClassImpl")) {
		ExtensionClassImpl obj = getIojenkinsblueoceanserviceembeddedrestPipelineImpl();
		node = converttoJson(&obj, "ExtensionClassImpl", "");
	}
	else {
		
		ExtensionClassImpl obj = static_cast<ExtensionClassImpl> (getIojenkinsblueoceanserviceembeddedrestPipelineImpl());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iojenkinsblueoceanserviceembeddedrestPipelineImplKey = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl";
	json_object_set_member(pJsonObject, iojenkinsblueoceanserviceembeddedrestPipelineImplKey, node);
	if (isprimitive("ExtensionClassImpl")) {
		ExtensionClassImpl obj = getIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl();
		node = converttoJson(&obj, "ExtensionClassImpl", "");
	}
	else {
		
		ExtensionClassImpl obj = static_cast<ExtensionClassImpl> (getIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl";
	json_object_set_member(pJsonObject, iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_classKey = "_class";
	json_object_set_member(pJsonObject, _classKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ExtensionClassImpl
ExtensionClassContainerImpl1map::getIojenkinsblueoceanserviceembeddedrestPipelineImpl()
{
	return iojenkinsblueoceanserviceembeddedrestPipelineImpl;
}

void
ExtensionClassContainerImpl1map::setIojenkinsblueoceanserviceembeddedrestPipelineImpl(ExtensionClassImpl  iojenkinsblueoceanserviceembeddedrestPipelineImpl)
{
	this->iojenkinsblueoceanserviceembeddedrestPipelineImpl = iojenkinsblueoceanserviceembeddedrestPipelineImpl;
}

ExtensionClassImpl
ExtensionClassContainerImpl1map::getIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl()
{
	return iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
}

void
ExtensionClassContainerImpl1map::setIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl(ExtensionClassImpl  iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl)
{
	this->iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
}

std::string
ExtensionClassContainerImpl1map::getClass()
{
	return _class;
}

void
ExtensionClassContainerImpl1map::setClass(std::string  _class)
{
	this->_class = _class;
}


