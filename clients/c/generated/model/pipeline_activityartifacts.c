#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_activityartifacts.h"



pipeline_activityartifacts_t *pipeline_activityartifacts_create(
    char *name,
    int size,
    char *url,
    char *_class
    ) {
    pipeline_activityartifacts_t *pipeline_activityartifacts_local_var = malloc(sizeof(pipeline_activityartifacts_t));
    if (!pipeline_activityartifacts_local_var) {
        return NULL;
    }
    pipeline_activityartifacts_local_var->name = name;
    pipeline_activityartifacts_local_var->size = size;
    pipeline_activityartifacts_local_var->url = url;
    pipeline_activityartifacts_local_var->_class = _class;

    return pipeline_activityartifacts_local_var;
}


void pipeline_activityartifacts_free(pipeline_activityartifacts_t *pipeline_activityartifacts) {
    if(NULL == pipeline_activityartifacts){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_activityartifacts->name) {
        free(pipeline_activityartifacts->name);
        pipeline_activityartifacts->name = NULL;
    }
    if (pipeline_activityartifacts->url) {
        free(pipeline_activityartifacts->url);
        pipeline_activityartifacts->url = NULL;
    }
    if (pipeline_activityartifacts->_class) {
        free(pipeline_activityartifacts->_class);
        pipeline_activityartifacts->_class = NULL;
    }
    free(pipeline_activityartifacts);
}

cJSON *pipeline_activityartifacts_convertToJSON(pipeline_activityartifacts_t *pipeline_activityartifacts) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_activityartifacts->name
    if(pipeline_activityartifacts->name) {
    if(cJSON_AddStringToObject(item, "name", pipeline_activityartifacts->name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activityartifacts->size
    if(pipeline_activityartifacts->size) {
    if(cJSON_AddNumberToObject(item, "size", pipeline_activityartifacts->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_activityartifacts->url
    if(pipeline_activityartifacts->url) {
    if(cJSON_AddStringToObject(item, "url", pipeline_activityartifacts->url) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activityartifacts->_class
    if(pipeline_activityartifacts->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_activityartifacts->_class) == NULL) {
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

pipeline_activityartifacts_t *pipeline_activityartifacts_parseFromJSON(cJSON *pipeline_activityartifactsJSON){

    pipeline_activityartifacts_t *pipeline_activityartifacts_local_var = NULL;

    // pipeline_activityartifacts->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline_activityartifacts->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "size");
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // pipeline_activityartifacts->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "url");
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // pipeline_activityartifacts->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    pipeline_activityartifacts_local_var = pipeline_activityartifacts_create (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        size ? size->valuedouble : 0,
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return pipeline_activityartifacts_local_var;
end:
    return NULL;

}
