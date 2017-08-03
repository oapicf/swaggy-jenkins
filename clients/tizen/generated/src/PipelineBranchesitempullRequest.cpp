#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PipelineBranchesitempullRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PipelineBranchesitempullRequest::PipelineBranchesitempullRequest()
{
	//__init();
}

PipelineBranchesitempullRequest::~PipelineBranchesitempullRequest()
{
	//__cleanup();
}

void
PipelineBranchesitempullRequest::__init()
{
	//
	//
	//_links = new PipelineBranchesitempullRequestlinks();
	//
	//
	//author = std::string();
	//
	//
	//id = std::string();
	//
	//
	//title = std::string();
	//
	//
	//url = std::string();
	//
	//
	//_class = std::string();
	//
}

void
PipelineBranchesitempullRequest::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//if(author != NULL) {
	//
	//delete author;
	//author = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(title != NULL) {
	//
	//delete title;
	//title = NULL;
	//}
	//if(url != NULL) {
	//
	//delete url;
	//url = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
PipelineBranchesitempullRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("PipelineBranchesitempullRequestlinks")) {
			jsonToValue(&_links, node, "PipelineBranchesitempullRequestlinks", "PipelineBranchesitempullRequestlinks");
		} else {
			
			PipelineBranchesitempullRequestlinks* obj = static_cast<PipelineBranchesitempullRequestlinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *authorKey = "author";
	node = json_object_get_member(pJsonObject, authorKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&author, node, "std::string", "");
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
	const gchar *titleKey = "title";
	node = json_object_get_member(pJsonObject, titleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&title, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *urlKey = "url";
	node = json_object_get_member(pJsonObject, urlKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&url, node, "std::string", "");
		} else {
			
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

PipelineBranchesitempullRequest::PipelineBranchesitempullRequest(char* json)
{
	this->fromJson(json);
}

char*
PipelineBranchesitempullRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("PipelineBranchesitempullRequestlinks")) {
		PipelineBranchesitempullRequestlinks obj = getLinks();
		node = converttoJson(&obj, "PipelineBranchesitempullRequestlinks", "");
	}
	else {
		
		PipelineBranchesitempullRequestlinks obj = static_cast<PipelineBranchesitempullRequestlinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAuthor();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *authorKey = "author";
	json_object_set_member(pJsonObject, authorKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTitle();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *titleKey = "title";
	json_object_set_member(pJsonObject, titleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *urlKey = "url";
	json_object_set_member(pJsonObject, urlKey, node);
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

PipelineBranchesitempullRequestlinks
PipelineBranchesitempullRequest::getLinks()
{
	return _links;
}

void
PipelineBranchesitempullRequest::setLinks(PipelineBranchesitempullRequestlinks  _links)
{
	this->_links = _links;
}

std::string
PipelineBranchesitempullRequest::getAuthor()
{
	return author;
}

void
PipelineBranchesitempullRequest::setAuthor(std::string  author)
{
	this->author = author;
}

std::string
PipelineBranchesitempullRequest::getId()
{
	return id;
}

void
PipelineBranchesitempullRequest::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineBranchesitempullRequest::getTitle()
{
	return title;
}

void
PipelineBranchesitempullRequest::setTitle(std::string  title)
{
	this->title = title;
}

std::string
PipelineBranchesitempullRequest::getUrl()
{
	return url;
}

void
PipelineBranchesitempullRequest::setUrl(std::string  url)
{
	this->url = url;
}

std::string
PipelineBranchesitempullRequest::getClass()
{
	return _class;
}

void
PipelineBranchesitempullRequest::setClass(std::string  _class)
{
	this->_class = _class;
}


