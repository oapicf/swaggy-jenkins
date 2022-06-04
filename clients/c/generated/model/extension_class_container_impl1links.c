#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "extension_class_container_impl1links.h"



extension_class_container_impl1links_t *extension_class_container_impl1links_create(
    link_t *self,
    char *_class
    ) {
    extension_class_container_impl1links_t *extension_class_container_impl1links_local_var = malloc(sizeof(extension_class_container_impl1links_t));
    if (!extension_class_container_impl1links_local_var) {
        return NULL;
    }
    extension_class_container_impl1links_local_var->self = self;
    extension_class_container_impl1links_local_var->_class = _class;

    return extension_class_container_impl1links_local_var;
}


void extension_class_container_impl1links_free(extension_class_container_impl1links_t *extension_class_container_impl1links) {
    if(NULL == extension_class_container_impl1links){
        return ;
    }
    listEntry_t *listEntry;
    if (extension_class_container_impl1links->self) {
        link_free(extension_class_container_impl1links->self);
        extension_class_container_impl1links->self = NULL;
    }
    if (extension_class_container_impl1links->_class) {
        free(extension_class_container_impl1links->_class);
        extension_class_container_impl1links->_class = NULL;
    }
    free(extension_class_container_impl1links);
}

cJSON *extension_class_container_impl1links_convertToJSON(extension_class_container_impl1links_t *extension_class_container_impl1links) {
    cJSON *item = cJSON_CreateObject();

    // extension_class_container_impl1links->self
    if(extension_class_container_impl1links->self) {
    cJSON *self_local_JSON = link_convertToJSON(extension_class_container_impl1links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // extension_class_container_impl1links->_class
    if(extension_class_container_impl1links->_class) {
    if(cJSON_AddStringToObject(item, "_class", extension_class_container_impl1links->_class) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

extension_class_container_impl1links_t *extension_class_container_impl1links_parseFromJSON(cJSON *extension_class_container_impl1linksJSON){

    extension_class_container_impl1links_t *extension_class_container_impl1links_local_var = NULL;

    // define the local variable for extension_class_container_impl1links->self
    link_t *self_local_nonprim = NULL;

    // extension_class_container_impl1links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1linksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // extension_class_container_impl1links->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1linksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    extension_class_container_impl1links_local_var = extension_class_container_impl1links_create (
        self ? self_local_nonprim : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return extension_class_container_impl1links_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
