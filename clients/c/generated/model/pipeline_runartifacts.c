#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_runartifacts.h"



pipeline_runartifacts_t *pipeline_runartifacts_create(
    char *name,
    int size,
    char *url,
    char *_class
    ) {
    pipeline_runartifacts_t *pipeline_runartifacts_local_var = malloc(sizeof(pipeline_runartifacts_t));
    if (!pipeline_runartifacts_local_var) {
        return NULL;
    }
    pipeline_runartifacts_local_var->name = name;
    pipeline_runartifacts_local_var->size = size;
    pipeline_runartifacts_local_var->url = url;
    pipeline_runartifacts_local_var->_class = _class;

    return pipeline_runartifacts_local_var;
}


void pipeline_runartifacts_free(pipeline_runartifacts_t *pipeline_runartifacts) {
    if(NULL == pipeline_runartifacts){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_runartifacts->name) {
        free(pipeline_runartifacts->name);
        pipeline_runartifacts->name = NULL;
    }
    if (pipeline_runartifacts->url) {
        free(pipeline_runartifacts->url);
        pipeline_runartifacts->url = NULL;
    }
    if (pipeline_runartifacts->_class) {
        free(pipeline_runartifacts->_class);
        pipeline_runartifacts->_class = NULL;
    }
    free(pipeline_runartifacts);
}

cJSON *pipeline_runartifacts_convertToJSON(pipeline_runartifacts_t *pipeline_runartifacts) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_runartifacts->name
    if(pipeline_runartifacts->name) {
    if(cJSON_AddStringToObject(item, "name", pipeline_runartifacts->name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_runartifacts->size
    if(pipeline_runartifacts->size) {
    if(cJSON_AddNumberToObject(item, "size", pipeline_runartifacts->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_runartifacts->url
    if(pipeline_runartifacts->url) {
    if(cJSON_AddStringToObject(item, "url", pipeline_runartifacts->url) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_runartifacts->_class
    if(pipeline_runartifacts->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_runartifacts->_class) == NULL) {
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

pipeline_runartifacts_t *pipeline_runartifacts_parseFromJSON(cJSON *pipeline_runartifactsJSON){

    pipeline_runartifacts_t *pipeline_runartifacts_local_var = NULL;

    // pipeline_runartifacts->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // pipeline_runartifacts->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "size");
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // pipeline_runartifacts->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "url");
    if (url) { 
    if(!cJSON_IsString(url))
    {
    goto end; //String
    }
    }

    // pipeline_runartifacts->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    pipeline_runartifacts_local_var = pipeline_runartifacts_create (
        name ? strdup(name->valuestring) : NULL,
        size ? size->valuedouble : 0,
        url ? strdup(url->valuestring) : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return pipeline_runartifacts_local_var;
end:
    return NULL;

}
