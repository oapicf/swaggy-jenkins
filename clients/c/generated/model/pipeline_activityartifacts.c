#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_activityartifacts.h"



static pipeline_activityartifacts_t *pipeline_activityartifacts_create_internal(
    char *name,
    int *size,
    char *url,
    char *_class
    ) {
    pipeline_activityartifacts_t *pipeline_activityartifacts_local_var = malloc(sizeof(pipeline_activityartifacts_t));
    if (!pipeline_activityartifacts_local_var) {
        return NULL;
    }
    memset(pipeline_activityartifacts_local_var, 0, sizeof(pipeline_activityartifacts_t));
    pipeline_activityartifacts_local_var->_library_owned = 1;
    pipeline_activityartifacts_local_var->name = name;
    pipeline_activityartifacts_local_var->size = size;
    pipeline_activityartifacts_local_var->url = url;
    pipeline_activityartifacts_local_var->_class = _class;
    return pipeline_activityartifacts_local_var;
}

__attribute__((deprecated)) pipeline_activityartifacts_t *pipeline_activityartifacts_create(
    char *name,
    int *size,
    char *url,
    char *_class
    ) {
    int *size_copy = NULL;
    if (size) {
        size_copy = malloc(sizeof(int));
        if (size_copy) *size_copy = *size;
    }
    pipeline_activityartifacts_t *result = pipeline_activityartifacts_create_internal (
        name,
        size_copy,
        url,
        _class
        );
    if (!result) {
        free(size_copy);
    }
    return result;
}

void pipeline_activityartifacts_free(pipeline_activityartifacts_t *pipeline_activityartifacts) {
    if(NULL == pipeline_activityartifacts){
        return ;
    }
    if(pipeline_activityartifacts->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_activityartifacts_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_activityartifacts->name) {
        free(pipeline_activityartifacts->name);
        pipeline_activityartifacts->name = NULL;
    }
    if (pipeline_activityartifacts->size) {
        free(pipeline_activityartifacts->size);
        pipeline_activityartifacts->size = NULL;
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
    if(cJSON_AddNumberToObject(item, "size", *pipeline_activityartifacts->size) == NULL) {
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

    char *name_local_str = NULL;

    // define the local variable for pipeline_activityartifacts->size
    int *size_local_var = NULL;

    char *url_local_str = NULL;

    char *_class_local_str = NULL;

    // pipeline_activityartifacts->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline_activityartifacts->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    size_local_var = malloc(sizeof(int));
    if(!size_local_var)
    {
        goto end;
    }
    *size_local_var = size->valuedouble;
    }

    // pipeline_activityartifacts->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // pipeline_activityartifacts->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_activityartifactsJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (url && !cJSON_IsNull(url)) url_local_str = strdup(url->valuestring);
    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    pipeline_activityartifacts_local_var = pipeline_activityartifacts_create_internal (
        name_local_str,
        size_local_var,
        url_local_str,
        _class_local_str
        );

    if (!pipeline_activityartifacts_local_var) {
        goto end;
    }

    return pipeline_activityartifacts_local_var;
end:
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (size_local_var) {
        free(size_local_var);
        size_local_var = NULL;
    }
    if (url_local_str) {
        free(url_local_str);
        url_local_str = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
