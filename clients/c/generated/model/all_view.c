#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "all_view.h"



static all_view_t *all_view_create_internal(
    char *_class,
    char *name,
    char *url
    ) {
    all_view_t *all_view_local_var = malloc(sizeof(all_view_t));
    if (!all_view_local_var) {
        return NULL;
    }
    all_view_local_var->_class = _class;
    all_view_local_var->name = name;
    all_view_local_var->url = url;

    all_view_local_var->_library_owned = 1;
    return all_view_local_var;
}

__attribute__((deprecated)) all_view_t *all_view_create(
    char *_class,
    char *name,
    char *url
    ) {
    return all_view_create_internal (
        _class,
        name,
        url
        );
}

void all_view_free(all_view_t *all_view) {
    if(NULL == all_view){
        return ;
    }
    if(all_view->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "all_view_free");
        return ;
    }
    listEntry_t *listEntry;
    if (all_view->_class) {
        free(all_view->_class);
        all_view->_class = NULL;
    }
    if (all_view->name) {
        free(all_view->name);
        all_view->name = NULL;
    }
    if (all_view->url) {
        free(all_view->url);
        all_view->url = NULL;
    }
    free(all_view);
}

cJSON *all_view_convertToJSON(all_view_t *all_view) {
    cJSON *item = cJSON_CreateObject();

    // all_view->_class
    if(all_view->_class) {
    if(cJSON_AddStringToObject(item, "_class", all_view->_class) == NULL) {
    goto fail; //String
    }
    }


    // all_view->name
    if(all_view->name) {
    if(cJSON_AddStringToObject(item, "name", all_view->name) == NULL) {
    goto fail; //String
    }
    }


    // all_view->url
    if(all_view->url) {
    if(cJSON_AddStringToObject(item, "url", all_view->url) == NULL) {
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

all_view_t *all_view_parseFromJSON(cJSON *all_viewJSON){

    all_view_t *all_view_local_var = NULL;

    // all_view->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(all_viewJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // all_view->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(all_viewJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // all_view->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(all_viewJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }


    all_view_local_var = all_view_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL
        );

    return all_view_local_var;
end:
    return NULL;

}
