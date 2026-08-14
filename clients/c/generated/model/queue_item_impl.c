#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "queue_item_impl.h"



static queue_item_impl_t *queue_item_impl_create_internal(
    char *_class,
    int *expected_build_number,
    char *id,
    char *pipeline,
    int *queued_time
    ) {
    queue_item_impl_t *queue_item_impl_local_var = malloc(sizeof(queue_item_impl_t));
    if (!queue_item_impl_local_var) {
        return NULL;
    }
    memset(queue_item_impl_local_var, 0, sizeof(queue_item_impl_t));
    queue_item_impl_local_var->_library_owned = 1;
    queue_item_impl_local_var->_class = _class;
    queue_item_impl_local_var->expected_build_number = expected_build_number;
    queue_item_impl_local_var->id = id;
    queue_item_impl_local_var->pipeline = pipeline;
    queue_item_impl_local_var->queued_time = queued_time;
    return queue_item_impl_local_var;
}

__attribute__((deprecated)) queue_item_impl_t *queue_item_impl_create(
    char *_class,
    int *expected_build_number,
    char *id,
    char *pipeline,
    int *queued_time
    ) {
    int *expected_build_number_copy = NULL;
    if (expected_build_number) {
        expected_build_number_copy = malloc(sizeof(int));
        if (expected_build_number_copy) *expected_build_number_copy = *expected_build_number;
    }
    int *queued_time_copy = NULL;
    if (queued_time) {
        queued_time_copy = malloc(sizeof(int));
        if (queued_time_copy) *queued_time_copy = *queued_time;
    }
    queue_item_impl_t *result = queue_item_impl_create_internal (
        _class,
        expected_build_number_copy,
        id,
        pipeline,
        queued_time_copy
        );
    if (!result) {
        free(expected_build_number_copy);
        free(queued_time_copy);
    }
    return result;
}

void queue_item_impl_free(queue_item_impl_t *queue_item_impl) {
    if(NULL == queue_item_impl){
        return ;
    }
    if(queue_item_impl->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "queue_item_impl_free");
        return ;
    }
    listEntry_t *listEntry;
    if (queue_item_impl->_class) {
        free(queue_item_impl->_class);
        queue_item_impl->_class = NULL;
    }
    if (queue_item_impl->expected_build_number) {
        free(queue_item_impl->expected_build_number);
        queue_item_impl->expected_build_number = NULL;
    }
    if (queue_item_impl->id) {
        free(queue_item_impl->id);
        queue_item_impl->id = NULL;
    }
    if (queue_item_impl->pipeline) {
        free(queue_item_impl->pipeline);
        queue_item_impl->pipeline = NULL;
    }
    if (queue_item_impl->queued_time) {
        free(queue_item_impl->queued_time);
        queue_item_impl->queued_time = NULL;
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
    if(cJSON_AddNumberToObject(item, "expectedBuildNumber", *queue_item_impl->expected_build_number) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "queuedTime", *queue_item_impl->queued_time) == NULL) {
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

    char *_class_local_str = NULL;

    // define the local variable for queue_item_impl->expected_build_number
    int *expected_build_number_local_var = NULL;

    char *id_local_str = NULL;

    char *pipeline_local_str = NULL;

    // define the local variable for queue_item_impl->queued_time
    int *queued_time_local_var = NULL;

    // queue_item_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // queue_item_impl->expected_build_number
    cJSON *expected_build_number = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "expectedBuildNumber");
    if (cJSON_IsNull(expected_build_number)) {
        expected_build_number = NULL;
    }
    if (expected_build_number) { 
    if(!cJSON_IsNumber(expected_build_number))
    {
    goto end; //Numeric
    }
    expected_build_number_local_var = malloc(sizeof(int));
    if(!expected_build_number_local_var)
    {
        goto end;
    }
    *expected_build_number_local_var = expected_build_number->valuedouble;
    }

    // queue_item_impl->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // queue_item_impl->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "pipeline");
    if (cJSON_IsNull(pipeline)) {
        pipeline = NULL;
    }
    if (pipeline) { 
    if(!cJSON_IsString(pipeline) && !cJSON_IsNull(pipeline))
    {
    goto end; //String
    }
    }

    // queue_item_impl->queued_time
    cJSON *queued_time = cJSON_GetObjectItemCaseSensitive(queue_item_implJSON, "queuedTime");
    if (cJSON_IsNull(queued_time)) {
        queued_time = NULL;
    }
    if (queued_time) { 
    if(!cJSON_IsNumber(queued_time))
    {
    goto end; //Numeric
    }
    queued_time_local_var = malloc(sizeof(int));
    if(!queued_time_local_var)
    {
        goto end;
    }
    *queued_time_local_var = queued_time->valuedouble;
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (id && !cJSON_IsNull(id)) id_local_str = strdup(id->valuestring);
    if (pipeline && !cJSON_IsNull(pipeline)) pipeline_local_str = strdup(pipeline->valuestring);

    queue_item_impl_local_var = queue_item_impl_create_internal (
        _class_local_str,
        expected_build_number_local_var,
        id_local_str,
        pipeline_local_str,
        queued_time_local_var
        );

    if (!queue_item_impl_local_var) {
        goto end;
    }

    return queue_item_impl_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (expected_build_number_local_var) {
        free(expected_build_number_local_var);
        expected_build_number_local_var = NULL;
    }
    if (id_local_str) {
        free(id_local_str);
        id_local_str = NULL;
    }
    if (pipeline_local_str) {
        free(pipeline_local_str);
        pipeline_local_str = NULL;
    }
    if (queued_time_local_var) {
        free(queued_time_local_var);
        queued_time_local_var = NULL;
    }
    return NULL;

}
