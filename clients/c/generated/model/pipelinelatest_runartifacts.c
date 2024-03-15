#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipelinelatest_runartifacts.h"



pipelinelatest_runartifacts_t *pipelinelatest_runartifacts_create(
    char *name,
    int size,
    char *url,
    char *_class
    ) {
    pipelinelatest_runartifacts_t *pipelinelatest_runartifacts_local_var = malloc(sizeof(pipelinelatest_runartifacts_t));
    if (!pipelinelatest_runartifacts_local_var) {
        return NULL;
    }
    pipelinelatest_runartifacts_local_var->name = name;
    pipelinelatest_runartifacts_local_var->size = size;
    pipelinelatest_runartifacts_local_var->url = url;
    pipelinelatest_runartifacts_local_var->_class = _class;

    return pipelinelatest_runartifacts_local_var;
}


void pipelinelatest_runartifacts_free(pipelinelatest_runartifacts_t *pipelinelatest_runartifacts) {
    if(NULL == pipelinelatest_runartifacts){
        return ;
    }
    listEntry_t *listEntry;
    if (pipelinelatest_runartifacts->name) {
        free(pipelinelatest_runartifacts->name);
        pipelinelatest_runartifacts->name = NULL;
    }
    if (pipelinelatest_runartifacts->url) {
        free(pipelinelatest_runartifacts->url);
        pipelinelatest_runartifacts->url = NULL;
    }
    if (pipelinelatest_runartifacts->_class) {
        free(pipelinelatest_runartifacts->_class);
        pipelinelatest_runartifacts->_class = NULL;
    }
    free(pipelinelatest_runartifacts);
}

cJSON *pipelinelatest_runartifacts_convertToJSON(pipelinelatest_runartifacts_t *pipelinelatest_runartifacts) {
    cJSON *item = cJSON_CreateObject();

    // pipelinelatest_runartifacts->name
    if(pipelinelatest_runartifacts->name) {
    if(cJSON_AddStringToObject(item, "name", pipelinelatest_runartifacts->name) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_runartifacts->size
    if(pipelinelatest_runartifacts->size) {
    if(cJSON_AddNumberToObject(item, "size", pipelinelatest_runartifacts->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipelinelatest_runartifacts->url
    if(pipelinelatest_runartifacts->url) {
    if(cJSON_AddStringToObject(item, "url", pipelinelatest_runartifacts->url) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_runartifacts->_class
    if(pipelinelatest_runartifacts->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipelinelatest_runartifacts->_class) == NULL) {
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

pipelinelatest_runartifacts_t *pipelinelatest_runartifacts_parseFromJSON(cJSON *pipelinelatest_runartifactsJSON){

    pipelinelatest_runartifacts_t *pipelinelatest_runartifacts_local_var = NULL;

    // pipelinelatest_runartifacts->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runartifactsJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipelinelatest_runartifacts->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runartifactsJSON, "size");
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // pipelinelatest_runartifacts->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runartifactsJSON, "url");
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // pipelinelatest_runartifacts->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runartifactsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    pipelinelatest_runartifacts_local_var = pipelinelatest_runartifacts_create (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        size ? size->valuedouble : 0,
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return pipelinelatest_runartifacts_local_var;
end:
    return NULL;

}
