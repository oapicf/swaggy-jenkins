#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "favorite_impllinks.h"



favorite_impllinks_t *favorite_impllinks_create(
    link_t *self,
    char *_class
    ) {
    favorite_impllinks_t *favorite_impllinks_local_var = malloc(sizeof(favorite_impllinks_t));
    if (!favorite_impllinks_local_var) {
        return NULL;
    }
    favorite_impllinks_local_var->self = self;
    favorite_impllinks_local_var->_class = _class;

    return favorite_impllinks_local_var;
}


void favorite_impllinks_free(favorite_impllinks_t *favorite_impllinks) {
    if(NULL == favorite_impllinks){
        return ;
    }
    listEntry_t *listEntry;
    if (favorite_impllinks->self) {
        link_free(favorite_impllinks->self);
        favorite_impllinks->self = NULL;
    }
    if (favorite_impllinks->_class) {
        free(favorite_impllinks->_class);
        favorite_impllinks->_class = NULL;
    }
    free(favorite_impllinks);
}

cJSON *favorite_impllinks_convertToJSON(favorite_impllinks_t *favorite_impllinks) {
    cJSON *item = cJSON_CreateObject();

    // favorite_impllinks->self
    if(favorite_impllinks->self) { 
    cJSON *self_local_JSON = link_convertToJSON(favorite_impllinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // favorite_impllinks->_class
    if(favorite_impllinks->_class) { 
    if(cJSON_AddStringToObject(item, "_class", favorite_impllinks->_class) == NULL) {
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

favorite_impllinks_t *favorite_impllinks_parseFromJSON(cJSON *favorite_impllinksJSON){

    favorite_impllinks_t *favorite_impllinks_local_var = NULL;

    // define the local variable for favorite_impllinks->self
    link_t *self_local_nonprim = NULL;

    // favorite_impllinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(favorite_impllinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // favorite_impllinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(favorite_impllinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    favorite_impllinks_local_var = favorite_impllinks_create (
        self ? self_local_nonprim : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return favorite_impllinks_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
