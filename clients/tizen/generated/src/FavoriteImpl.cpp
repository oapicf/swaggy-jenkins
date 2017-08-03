#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "FavoriteImpl.h"

using namespace std;
using namespace Tizen::ArtikCloud;

FavoriteImpl::FavoriteImpl()
{
	//__init();
}

FavoriteImpl::~FavoriteImpl()
{
	//__cleanup();
}

void
FavoriteImpl::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//_links = new FavoriteImpllinks();
	//
	//
	//item = new PipelineImpl();
	//
}

void
FavoriteImpl::__cleanup()
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
	//if(item != NULL) {
	//
	//delete item;
	//item = NULL;
	//}
	//
}

void
FavoriteImpl::fromJson(char* jsonStr)
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
	

		if (isprimitive("FavoriteImpllinks")) {
			jsonToValue(&_links, node, "FavoriteImpllinks", "FavoriteImpllinks");
		} else {
			
			FavoriteImpllinks* obj = static_cast<FavoriteImpllinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *itemKey = "item";
	node = json_object_get_member(pJsonObject, itemKey);
	if (node !=NULL) {
	

		if (isprimitive("PipelineImpl")) {
			jsonToValue(&item, node, "PipelineImpl", "PipelineImpl");
		} else {
			
			PipelineImpl* obj = static_cast<PipelineImpl*> (&item);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

FavoriteImpl::FavoriteImpl(char* json)
{
	this->fromJson(json);
}

char*
FavoriteImpl::toJson()
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
	if (isprimitive("FavoriteImpllinks")) {
		FavoriteImpllinks obj = getLinks();
		node = converttoJson(&obj, "FavoriteImpllinks", "");
	}
	else {
		
		FavoriteImpllinks obj = static_cast<FavoriteImpllinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("PipelineImpl")) {
		PipelineImpl obj = getItem();
		node = converttoJson(&obj, "PipelineImpl", "");
	}
	else {
		
		PipelineImpl obj = static_cast<PipelineImpl> (getItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *itemKey = "item";
	json_object_set_member(pJsonObject, itemKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
FavoriteImpl::getClass()
{
	return _class;
}

void
FavoriteImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

FavoriteImpllinks
FavoriteImpl::getLinks()
{
	return _links;
}

void
FavoriteImpl::setLinks(FavoriteImpllinks  _links)
{
	this->_links = _links;
}

PipelineImpl
FavoriteImpl::getItem()
{
	return item;
}

void
FavoriteImpl::setItem(PipelineImpl  item)
{
	this->item = item;
}


