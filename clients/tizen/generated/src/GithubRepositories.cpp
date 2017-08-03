#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GithubRepositories.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GithubRepositories::GithubRepositories()
{
	//__init();
}

GithubRepositories::~GithubRepositories()
{
	//__cleanup();
}

void
GithubRepositories::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//_links = new GithubRepositorieslinks();
	//
	//new std::list()std::list> items;
	//
	//
	//
	//lastPage = null;
	//
	//
	//nextPage = null;
	//
	//
	//pageSize = null;
	//
}

void
GithubRepositories::__cleanup()
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
	//if(items != NULL) {
	//items.RemoveAll(true);
	//delete items;
	//items = NULL;
	//}
	//if(lastPage != NULL) {
	//
	//delete lastPage;
	//lastPage = NULL;
	//}
	//if(nextPage != NULL) {
	//
	//delete nextPage;
	//nextPage = NULL;
	//}
	//if(pageSize != NULL) {
	//
	//delete pageSize;
	//pageSize = NULL;
	//}
	//
}

void
GithubRepositories::fromJson(char* jsonStr)
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
	

		if (isprimitive("GithubRepositorieslinks")) {
			jsonToValue(&_links, node, "GithubRepositorieslinks", "GithubRepositorieslinks");
		} else {
			
			GithubRepositorieslinks* obj = static_cast<GithubRepositorieslinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *itemsKey = "items";
	node = json_object_get_member(pJsonObject, itemsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<GithubRepository> new_list;
			GithubRepository inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("GithubRepository")) {
					jsonToValue(&inst, temp_json, "GithubRepository", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			items = new_list;
		}
		
	}
	const gchar *lastPageKey = "lastPage";
	node = json_object_get_member(pJsonObject, lastPageKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lastPage, node, "int", "");
		} else {
			
		}
	}
	const gchar *nextPageKey = "nextPage";
	node = json_object_get_member(pJsonObject, nextPageKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&nextPage, node, "int", "");
		} else {
			
		}
	}
	const gchar *pageSizeKey = "pageSize";
	node = json_object_get_member(pJsonObject, pageSizeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&pageSize, node, "int", "");
		} else {
			
		}
	}
}

GithubRepositories::GithubRepositories(char* json)
{
	this->fromJson(json);
}

char*
GithubRepositories::toJson()
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
	if (isprimitive("GithubRepositorieslinks")) {
		GithubRepositorieslinks obj = getLinks();
		node = converttoJson(&obj, "GithubRepositorieslinks", "");
	}
	else {
		
		GithubRepositorieslinks obj = static_cast<GithubRepositorieslinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("GithubRepository")) {
		list<GithubRepository> new_list = static_cast<list <GithubRepository> > (getItems());
		node = converttoJson(&new_list, "GithubRepository", "array");
	} else {
		node = json_node_alloc();
		list<GithubRepository> new_list = static_cast<list <GithubRepository> > (getItems());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<GithubRepository>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			GithubRepository obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *itemsKey = "items";
	json_object_set_member(pJsonObject, itemsKey, node);
	if (isprimitive("int")) {
		int obj = getLastPage();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lastPageKey = "lastPage";
	json_object_set_member(pJsonObject, lastPageKey, node);
	if (isprimitive("int")) {
		int obj = getNextPage();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *nextPageKey = "nextPage";
	json_object_set_member(pJsonObject, nextPageKey, node);
	if (isprimitive("int")) {
		int obj = getPageSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *pageSizeKey = "pageSize";
	json_object_set_member(pJsonObject, pageSizeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GithubRepositories::getClass()
{
	return _class;
}

void
GithubRepositories::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubRepositorieslinks
GithubRepositories::getLinks()
{
	return _links;
}

void
GithubRepositories::setLinks(GithubRepositorieslinks  _links)
{
	this->_links = _links;
}

std::list<GithubRepository>
GithubRepositories::getItems()
{
	return items;
}

void
GithubRepositories::setItems(std::list <GithubRepository> items)
{
	this->items = items;
}

int
GithubRepositories::getLastPage()
{
	return lastPage;
}

void
GithubRepositories::setLastPage(int  lastPage)
{
	this->lastPage = lastPage;
}

int
GithubRepositories::getNextPage()
{
	return nextPage;
}

void
GithubRepositories::setNextPage(int  nextPage)
{
	this->nextPage = nextPage;
}

int
GithubRepositories::getPageSize()
{
	return pageSize;
}

void
GithubRepositories::setPageSize(int  pageSize)
{
	this->pageSize = pageSize;
}


