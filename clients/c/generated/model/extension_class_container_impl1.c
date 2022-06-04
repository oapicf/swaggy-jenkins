#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "extension_class_container_impl1.h"



extension_class_container_impl1_t *extension_class_container_impl1_create(
    char *_class,
    extension_class_container_impl1links_t *_links,
    extension_class_container_impl1map_t *map
    ) {
    extension_class_container_impl1_t *extension_class_container_impl1_local_var = malloc(sizeof(extension_class_container_impl1_t));
    if (!extension_class_container_impl1_local_var) {
        return NULL;
    }
    extension_class_container_impl1_local_var->_class = _class;
    extension_class_container_impl1_local_var->_links = _links;
    extension_class_container_impl1_local_var->map = map;

    return extension_class_container_impl1_local_var;
}


void extension_class_container_impl1_free(extension_class_container_impl1_t *extension_class_container_impl1) {
    if(NULL == extension_class_container_impl1){
        return ;
    }
    listEntry_t *listEntry;
    if (extension_class_container_impl1->_class) {
        free(extension_class_container_impl1->_class);
        extension_class_container_impl1->_class = NULL;
    }
    if (extension_class_container_impl1->_links) {
        extension_class_container_impl1links_free(extension_class_container_impl1->_links);
        extension_class_container_impl1->_links = NULL;
    }
    if (extension_class_container_impl1->map) {
        extension_class_container_impl1map_free(extension_class_container_impl1->map);
        extension_class_container_impl1->map = NULL;
    }
    free(extension_class_container_impl1);
}

cJSON *extension_class_container_impl1_convertToJSON(extension_class_container_impl1_t *extension_class_container_impl1) {
    cJSON *item = cJSON_CreateObject();

    // extension_class_container_impl1->_class
    if(extension_class_container_impl1->_class) {
    if(cJSON_AddStringToObject(item, "_class", extension_class_container_impl1->_class) == NULL) {
    goto fail; //String
    }
    }


    // extension_class_container_impl1->_links
    if(extension_class_container_impl1->_links) {
    cJSON *_links_local_JSON = extension_class_container_impl1links_convertToJSON(extension_class_container_impl1->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // extension_class_container_impl1->map
    if(extension_class_container_impl1->map) {
    cJSON *map_local_JSON = extension_class_container_impl1map_convertToJSON(extension_class_container_impl1->map);
    if(map_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "map", map_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

extension_class_container_impl1_t *extension_class_container_impl1_parseFromJSON(cJSON *extension_class_container_impl1JSON){

    extension_class_container_impl1_t *extension_class_container_impl1_local_var = NULL;

    // define the local variable for extension_class_container_impl1->_links
    extension_class_container_impl1links_t *_links_local_nonprim = NULL;

    // define the local variable for extension_class_container_impl1->map
    extension_class_container_impl1map_t *map_local_nonprim = NULL;

    // extension_class_container_impl1->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1JSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // extension_class_container_impl1->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1JSON, "_links");
    if (_links) { 
    _links_local_nonprim = extension_class_container_impl1links_parseFromJSON(_links); //nonprimitive
    }

    // extension_class_container_impl1->map
    cJSON *map = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1JSON, "map");
    if (map) { 
    map_local_nonprim = extension_class_container_impl1map_parseFromJSON(map); //nonprimitive
    }


    extension_class_container_impl1_local_var = extension_class_container_impl1_create (
        _class ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        map ? map_local_nonprim : NULL
        );

    return extension_class_container_impl1_local_var;
end:
    if (_links_local_nonprim) {
        extension_class_container_impl1links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (map_local_nonprim) {
        extension_class_container_impl1map_free(map_local_nonprim);
        map_local_nonprim = NULL;
    }
    return NULL;

}
