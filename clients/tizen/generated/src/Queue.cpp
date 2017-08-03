#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Queue.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Queue::Queue()
{
	//__init();
}

Queue::~Queue()
{
	//__cleanup();
}

void
Queue::__init()
{
	//
	//
	//_class = std::string();
	//
	//new std::list()std::list> items;
	//
	//
}

void
Queue::__cleanup()
{
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//if(items != NULL) {
	//items.RemoveAll(true);
	//delete items;
	//items = NULL;
	//}
	//
}

void
Queue::fromJson(char* jsonStr)
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
	const gchar *itemsKey = "items";
	node = json_object_get_member(pJsonObject, itemsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<QueueBlockedItem> new_list;
			QueueBlockedItem inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("QueueBlockedItem")) {
					jsonToValue(&inst, temp_json, "QueueBlockedItem", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			items = new_list;
		}
		
	}
}

Queue::Queue(char* json)
{
	this->fromJson(json);
}

char*
Queue::toJson()
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
	if (isprimitive("QueueBlockedItem")) {
		list<QueueBlockedItem> new_list = static_cast<list <QueueBlockedItem> > (getItems());
		node = converttoJson(&new_list, "QueueBlockedItem", "array");
	} else {
		node = json_node_alloc();
		list<QueueBlockedItem> new_list = static_cast<list <QueueBlockedItem> > (getItems());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<QueueBlockedItem>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			QueueBlockedItem obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *itemsKey = "items";
	json_object_set_member(pJsonObject, itemsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Queue::getClass()
{
	return _class;
}

void
Queue::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<QueueBlockedItem>
Queue::getItems()
{
	return items;
}

void
Queue::setItems(std::list <QueueBlockedItem> items)
{
	this->items = items;
}


