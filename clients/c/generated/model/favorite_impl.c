#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "favorite_impl.h"



favorite_impl_t *favorite_impl_create(
    char *_class,
    favorite_impllinks_t *_links,
    pipeline_impl_t *item
    ) {
    favorite_impl_t *favorite_impl_local_var = malloc(sizeof(favorite_impl_t));
    if (!favorite_impl_local_var) {
        return NULL;
    }
    favorite_impl_local_var->_class = _class;
    favorite_impl_local_var->_links = _links;
    favorite_impl_local_var->item = item;

    return favorite_impl_local_var;
}


void favorite_impl_free(favorite_impl_t *favorite_impl) {
    if(NULL == favorite_impl){
        return ;
    }
    listEntry_t *listEntry;
    if (favorite_impl->_class) {
        free(favorite_impl->_class);
        favorite_impl->_class = NULL;
    }
    if (favorite_impl->_links) {
        favorite_impllinks_free(favorite_impl->_links);
        favorite_impl->_links = NULL;
    }
    if (favorite_impl->item) {
        pipeline_impl_free(favorite_impl->item);
        favorite_impl->item = NULL;
    }
    free(favorite_impl);
}

cJSON *favorite_impl_convertToJSON(favorite_impl_t *favorite_impl) {
    cJSON *item = cJSON_CreateObject();

    // favorite_impl->_class
    if(favorite_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", favorite_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // favorite_impl->_links
    if(favorite_impl->_links) {
    cJSON *_links_local_JSON = favorite_impllinks_convertToJSON(favorite_impl->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // favorite_impl->item
    if(favorite_impl->item) {
    cJSON *item_local_JSON = pipeline_impl_convertToJSON(favorite_impl->item);
    if(item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "item", item_local_JSON);
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

favorite_impl_t *favorite_impl_parseFromJSON(cJSON *favorite_implJSON){

    favorite_impl_t *favorite_impl_local_var = NULL;

    // define the local variable for favorite_impl->_links
    favorite_impllinks_t *_links_local_nonprim = NULL;

    // define the local variable for favorite_impl->item
    pipeline_impl_t *item_local_nonprim = NULL;

    // favorite_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(favorite_implJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // favorite_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(favorite_implJSON, "_links");
    if (_links) { 
    _links_local_nonprim = favorite_impllinks_parseFromJSON(_links); //nonprimitive
    }

    // favorite_impl->item
    cJSON *item = cJSON_GetObjectItemCaseSensitive(favorite_implJSON, "item");
    if (item) { 
    item_local_nonprim = pipeline_impl_parseFromJSON(item); //nonprimitive
    }


    favorite_impl_local_var = favorite_impl_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        item ? item_local_nonprim : NULL
        );

    return favorite_impl_local_var;
end:
    if (_links_local_nonprim) {
        favorite_impllinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (item_local_nonprim) {
        pipeline_impl_free(item_local_nonprim);
        item_local_nonprim = NULL;
    }
    return NULL;

}
