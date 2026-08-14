#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_runartifacts.h"



static pipeline_runartifacts_t *pipeline_runartifacts_create_internal(
    char *name,
    int *size,
    char *url,
    char *_class
    ) {
    pipeline_runartifacts_t *pipeline_runartifacts_local_var = malloc(sizeof(pipeline_runartifacts_t));
    if (!pipeline_runartifacts_local_var) {
        return NULL;
    }
    memset(pipeline_runartifacts_local_var, 0, sizeof(pipeline_runartifacts_t));
    pipeline_runartifacts_local_var->_library_owned = 1;
    pipeline_runartifacts_local_var->name = name;
    pipeline_runartifacts_local_var->size = size;
    pipeline_runartifacts_local_var->url = url;
    pipeline_runartifacts_local_var->_class = _class;
    return pipeline_runartifacts_local_var;
}

__attribute__((deprecated)) pipeline_runartifacts_t *pipeline_runartifacts_create(
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
    pipeline_runartifacts_t *result = pipeline_runartifacts_create_internal (
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

void pipeline_runartifacts_free(pipeline_runartifacts_t *pipeline_runartifacts) {
    if(NULL == pipeline_runartifacts){
        return ;
    }
    if(pipeline_runartifacts->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_runartifacts_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_runartifacts->name) {
        free(pipeline_runartifacts->name);
        pipeline_runartifacts->name = NULL;
    }
    if (pipeline_runartifacts->size) {
        free(pipeline_runartifacts->size);
        pipeline_runartifacts->size = NULL;
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
    if(cJSON_AddNumberToObject(item, "size", *pipeline_runartifacts->size) == NULL) {
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

    char *name_local_str = NULL;

    // define the local variable for pipeline_runartifacts->size
    int *size_local_var = NULL;

    char *url_local_str = NULL;

    char *_class_local_str = NULL;

    // pipeline_runartifacts->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline_runartifacts->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "size");
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

    // pipeline_runartifacts->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // pipeline_runartifacts->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_runartifactsJSON, "_class");
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

    pipeline_runartifacts_local_var = pipeline_runartifacts_create_internal (
        name_local_str,
        size_local_var,
        url_local_str,
        _class_local_str
        );

    if (!pipeline_runartifacts_local_var) {
        goto end;
    }

    return pipeline_runartifacts_local_var;
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
