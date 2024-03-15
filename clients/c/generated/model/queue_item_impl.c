#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "queue_item_impl.h"



queue_item_impl_t *queue_item_impl_create(
    char *_class,
    int expected_build_number,
    char *id,
    char *pipeline,
    int queued_time
    ) {
    queue_item_impl_t *queue_item_impl_local_var = malloc(sizeof(queue_item_impl_t));
    if (!queue_item_impl_local_var) {
        return NULL;
    }
    queue_item_impl_local_var->_class = _class;
    queue_item_impl_local_var->expected_build_number = expected_build_number;
    queue_item_impl_local_var->id = id;
    queue_item_impl_local_var->pipeline = pipeline;
    queue_item_impl_local_var->queued_time = queued_time;

    return queue_item_impl_local_var;
}


void queue_item_impl_free(queue_item_impl_t *queue_item_impl) {
    if(NULL == queue_item_impl){
        return ;
    }
    listEntry_t *listEntry;
    if (queue_item_impl->_class) {
        free(queue_item_impl->_class);
        queue_item_impl->_class = NULL;
    }
    if (queue_item_impl->id) {
        free(queue_item_impl->id);
        queue_item_impl->id = NULL;
    }
    if (queue_item_impl->pipeline) {
        free(queue_item_impl->pipeline);
        queue_item_impl->pipeline = NULL;
    }
    free(queue_item_impl);
}

cJSON *queue_item_impl_convertToJSON(queue_item_impl_t *queue_item_impl) {
    cJSON *item = cJSON_CreateObject();

    // queue_item_impl->_class
    if(queue_item_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", queue_item_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // queue_item_impl->expected_build_number
    if(queue_item_impl->expected_build_number) {
    if(cJSON_AddNumberToObject(item, "expectedBuildNumber", queue_item_impl->expected_build_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_item_impl->id
    if(queue_item_impl->id) {
    if(cJSON_AddStringToObject(item, "id", queue_item_impl->id) == NULL) {
    goto fail; //String
    }
    }


    // queue_item_impl->pipeline
    if(queue_item_impl->pipeline) {
    if(cJSON_AddStringToObject(item, "pipeline", queue_item_impl->pipeline) == NULL) {
    goto fail; //String
    }
    }


    // queue_item_impl->queued_time
    if(queue_item_impl->queued_time) {
    if(cJSON_AddNumberToObject(item, "queuedTime", queue_item_impl->queued_time) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

queue_item_impl_t *queue_item_impl_parseFromJSON(cJSON *queue_item_implJSON){

    queue_item_impl_t *queue_item_impl_local_var = NULL;

    // queue_item_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // queue_item_impl->expected_build_number
    cJSON *expected_build_number = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "expectedBuildNumber");
    if (expected_build_number) { 
    if(!cJSON_IsNumber(expected_build_number))
    {
    goto end; //Numeric
    }
    }

    // queue_item_impl->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // queue_item_impl->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "pipeline");
    if (pipeline) { 
    if(!cJSON_IsString(pipeline) && !cJSON_IsNull(pipeline))
    {
    goto end; //String
    }
    }

    // queue_item_impl->queued_time
    cJSON *queued_time = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "queuedTime");
    if (queued_time) { 
    if(!cJSON_IsNumber(queued_time))
    {
    goto end; //Numeric
    }
    }


    queue_item_impl_local_var = queue_item_impl_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        expected_build_number ? expected_build_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        pipeline && !cJSON_IsNull(pipeline) ? strdup(pipeline->valuestring) : NULL,
        queued_time ? queued_time->valuedouble : 0
        );

    return queue_item_impl_local_var;
end:
    return NULL;

}
