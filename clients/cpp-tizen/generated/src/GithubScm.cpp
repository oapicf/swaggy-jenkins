#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubScm.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubScm::GithubScm()
{
	//__init();
}

GithubScm::~GithubScm()
{
	//__cleanup();
}

void
GithubScm::__init()
{
	//_class = std::string();
	//_links = new GithubScmlinks();
	//credentialId = std::string();
	//id = std::string();
	//uri = std::string();
}

void
GithubScm::__cleanup()
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
	//if(credentialId != NULL) {
	//
	//delete credentialId;
	//credentialId = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(uri != NULL) {
	//
	//delete uri;
	//uri = NULL;
	//}
	//
}

void
GithubScm::fromJson(char* jsonStr)
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
	

		if (isprimitive("GithubScmlinks")) {
			jsonToValue(&_links, node, "GithubScmlinks", "GithubScmlinks");
		} else {
			
			GithubScmlinks* obj = static_cast<GithubScmlinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *credentialIdKey = "credentialId";
	node = json_object_get_member(pJsonObject, credentialIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&credentialId, node, "std::string", "");
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
	const gchar *uriKey = "uri";
	node = json_object_get_member(pJsonObject, uriKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uri, node, "std::string", "");
		} else {
			
		}
	}
}

GithubScm::GithubScm(char* json)
{
	this->fromJson(json);
}

char*
GithubScm::toJson()
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
	if (isprimitive("GithubScmlinks")) {
		GithubScmlinks obj = getLinks();
		node = converttoJson(&obj, "GithubScmlinks", "");
	}
	else {
		
		GithubScmlinks obj = static_cast<GithubScmlinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCredentialId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *credentialIdKey = "credentialId";
	json_object_set_member(pJsonObject, credentialIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUri();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *uriKey = "uri";
	json_object_set_member(pJsonObject, uriKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GithubScm::getClass()
{
	return _class;
}

void
GithubScm::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubScmlinks
GithubScm::getLinks()
{
	return _links;
}

void
GithubScm::setLinks(GithubScmlinks  _links)
{
	this->_links = _links;
}

std::string
GithubScm::getCredentialId()
{
	return credentialId;
}

void
GithubScm::setCredentialId(std::string  credentialId)
{
	this->credentialId = credentialId;
}

std::string
GithubScm::getId()
{
	return id;
}

void
GithubScm::setId(std::string  id)
{
	this->id = id;
}

std::string
GithubScm::getUri()
{
	return uri;
}

void
GithubScm::setUri(std::string  uri)
{
	this->uri = uri;
}


