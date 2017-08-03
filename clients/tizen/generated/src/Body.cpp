#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Body.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Body::Body()
{
	//__init();
}

Body::~Body()
{
	//__cleanup();
}

void
Body::__init()
{
	//
	//
	//favorite = bool(false);
	//
}

void
Body::__cleanup()
{
	//if(favorite != NULL) {
	//
	//delete favorite;
	//favorite = NULL;
	//}
	//
}

void
Body::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *favoriteKey = "favorite";
	node = json_object_get_member(pJsonObject, favoriteKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&favorite, node, "bool", "");
		} else {
			
		}
	}
}

Body::Body(char* json)
{
	this->fromJson(json);
}

char*
Body::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getFavorite();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *favoriteKey = "favorite";
	json_object_set_member(pJsonObject, favoriteKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

bool
Body::getFavorite()
{
	return favorite;
}

void
Body::setFavorite(bool  favorite)
{
	this->favorite = favorite;
}


