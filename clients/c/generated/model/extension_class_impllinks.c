#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "extension_class_impllinks.h"



static extension_class_impllinks_t *extension_class_impllinks_create_internal(
    link_t *self,
    char *_class
    ) {
    extension_class_impllinks_t *extension_class_impllinks_local_var = malloc(sizeof(extension_class_impllinks_t));
    if (!extension_class_impllinks_local_var) {
        return NULL;
    }
    memset(extension_class_impllinks_local_var, 0, sizeof(extension_class_impllinks_t));
    extension_class_impllinks_local_var->_library_owned = 1;
    extension_class_impllinks_local_var->self = self;
    extension_class_impllinks_local_var->_class = _class;
    return extension_class_impllinks_local_var;
}

__attribute__((deprecated)) extension_class_impllinks_t *extension_class_impllinks_create(
    link_t *self,
    char *_class
    ) {
    extension_class_impllinks_t *result = extension_class_impllinks_create_internal (
        self,
        _class
        );
    if (!result) {
    }
    return result;
}

void extension_class_impllinks_free(extension_class_impllinks_t *extension_class_impllinks) {
    if(NULL == extension_class_impllinks){
        return ;
    }
    if(extension_class_impllinks->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "extension_class_impllinks_free");
        return ;
    }
    listEntry_t *listEntry;
    if (extension_class_impllinks->self) {
        link_free(extension_class_impllinks->self);
        extension_class_impllinks->self = NULL;
    }
    if (extension_class_impllinks->_class) {
        free(extension_class_impllinks->_class);
        extension_class_impllinks->_class = NULL;
    }
    free(extension_class_impllinks);
}

cJSON *extension_class_impllinks_convertToJSON(extension_class_impllinks_t *extension_class_impllinks) {
    cJSON *item = cJSON_CreateObject();

    // extension_class_impllinks->self
    if(extension_class_impllinks->self) {
    cJSON *self_local_JSON = link_convertToJSON(extension_class_impllinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // extension_class_impllinks->_class
    if(extension_class_impllinks->_class) {
    if(cJSON_AddStringToObject(item, "_class", extension_class_impllinks->_class) == NULL) {
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

extension_class_impllinks_t *extension_class_impllinks_parseFromJSON(cJSON *extension_class_impllinksJSON){

    extension_class_impllinks_t *extension_class_impllinks_local_var = NULL;

    // define the local variable for extension_class_impllinks->self
    link_t *self_local_nonprim = NULL;

    char *_class_local_str = NULL;

    // extension_class_impllinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(extension_class_impllinksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // extension_class_impllinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(extension_class_impllinksJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    extension_class_impllinks_local_var = extension_class_impllinks_create_internal (
        self ? self_local_nonprim : NULL,
        _class_local_str
        );

    if (!extension_class_impllinks_local_var) {
        goto end;
    }

    return extension_class_impllinks_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
