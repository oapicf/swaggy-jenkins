#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_run_nodeedges.h"



pipeline_run_nodeedges_t *pipeline_run_nodeedges_create(
    char *id,
    char *_class
    ) {
    pipeline_run_nodeedges_t *pipeline_run_nodeedges_local_var = malloc(sizeof(pipeline_run_nodeedges_t));
    if (!pipeline_run_nodeedges_local_var) {
        return NULL;
    }
    pipeline_run_nodeedges_local_var->id = id;
    pipeline_run_nodeedges_local_var->_class = _class;

    return pipeline_run_nodeedges_local_var;
}


void pipeline_run_nodeedges_free(pipeline_run_nodeedges_t *pipeline_run_nodeedges) {
    if(NULL == pipeline_run_nodeedges){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_run_nodeedges->id) {
        free(pipeline_run_nodeedges->id);
        pipeline_run_nodeedges->id = NULL;
    }
    if (pipeline_run_nodeedges->_class) {
        free(pipeline_run_nodeedges->_class);
        pipeline_run_nodeedges->_class = NULL;
    }
    free(pipeline_run_nodeedges);
}

cJSON *pipeline_run_nodeedges_convertToJSON(pipeline_run_nodeedges_t *pipeline_run_nodeedges) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_run_nodeedges->id
    if(pipeline_run_nodeedges->id) {
    if(cJSON_AddStringToObject(item, "id", pipeline_run_nodeedges->id) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run_nodeedges->_class
    if(pipeline_run_nodeedges->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_run_nodeedges->_class) == NULL) {
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

pipeline_run_nodeedges_t *pipeline_run_nodeedges_parseFromJSON(cJSON *pipeline_run_nodeedgesJSON){

    pipeline_run_nodeedges_t *pipeline_run_nodeedges_local_var = NULL;

    // pipeline_run_nodeedges->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeedgesJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // pipeline_run_nodeedges->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeedgesJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    pipeline_run_nodeedges_local_var = pipeline_run_nodeedges_create (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return pipeline_run_nodeedges_local_var;
end:
    return NULL;

}
