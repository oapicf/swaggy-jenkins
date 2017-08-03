#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ListView.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ListView::ListView()
{
	//__init();
}

ListView::~ListView()
{
	//__cleanup();
}

void
ListView::__init()
{
	//
	//
	//_class = std::string();
	//
	//
	//description = std::string();
	//
	//new std::list()std::list> jobs;
	//
	//
	//
	//name = std::string();
	//
	//
	//url = std::string();
	//
}

void
ListView::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(jobs != NULL) {
	//jobs.RemoveAll(true);
	//delete jobs;
	//jobs = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(url != NULL) {
	//
	//delete url;
	//url = NULL;
	//}
	//
}

void
ListView::fromJson(char* jsonStr)
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
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *jobsKey = "jobs";
	node = json_object_get_member(pJsonObject, jobsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<FreeStyleProject> new_list;
			FreeStyleProject inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("FreeStyleProject")) {
					jsonToValue(&inst, temp_json, "FreeStyleProject", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			jobs = new_list;
		}
		
	}
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
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
}

ListView::ListView(char* json)
{
	this->fromJson(json);
}

char*
ListView::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("FreeStyleProject")) {
		list<FreeStyleProject> new_list = static_cast<list <FreeStyleProject> > (getJobs());
		node = converttoJson(&new_list, "FreeStyleProject", "array");
	} else {
		node = json_node_alloc();
		list<FreeStyleProject> new_list = static_cast<list <FreeStyleProject> > (getJobs());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<FreeStyleProject>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			FreeStyleProject obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *jobsKey = "jobs";
	json_object_set_member(pJsonObject, jobsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *urlKey = "url";
	json_object_set_member(pJsonObject, urlKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ListView::getClass()
{
	return _class;
}

void
ListView::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
ListView::getDescription()
{
	return description;
}

void
ListView::setDescription(std::string  description)
{
	this->description = description;
}

std::list<FreeStyleProject>
ListView::getJobs()
{
	return jobs;
}

void
ListView::setJobs(std::list <FreeStyleProject> jobs)
{
	this->jobs = jobs;
}

std::string
ListView::getName()
{
	return name;
}

void
ListView::setName(std::string  name)
{
	this->name = name;
}

std::string
ListView::getUrl()
{
	return url;
}

void
ListView::setUrl(std::string  url)
{
	this->url = url;
}


