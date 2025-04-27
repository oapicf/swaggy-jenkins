#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_step_impl.h"



static pipeline_step_impl_t *pipeline_step_impl_create_internal(
    char *_class,
    pipeline_step_impllinks_t *_links,
    char *display_name,
    int duration_in_millis,
    char *id,
    input_step_impl_t *input,
    char *result,
    char *start_time,
    char *state
    ) {
    pipeline_step_impl_t *pipeline_step_impl_local_var = malloc(sizeof(pipeline_step_impl_t));
    if (!pipeline_step_impl_local_var) {
        return NULL;
    }
    pipeline_step_impl_local_var->_class = _class;
    pipeline_step_impl_local_var->_links = _links;
    pipeline_step_impl_local_var->display_name = display_name;
    pipeline_step_impl_local_var->duration_in_millis = duration_in_millis;
    pipeline_step_impl_local_var->id = id;
    pipeline_step_impl_local_var->input = input;
    pipeline_step_impl_local_var->result = result;
    pipeline_step_impl_local_var->start_time = start_time;
    pipeline_step_impl_local_var->state = state;

    pipeline_step_impl_local_var->_library_owned = 1;
    return pipeline_step_impl_local_var;
}

__attribute__((deprecated)) pipeline_step_impl_t *pipeline_step_impl_create(
    char *_class,
    pipeline_step_impllinks_t *_links,
    char *display_name,
    int duration_in_millis,
    char *id,
    input_step_impl_t *input,
    char *result,
    char *start_time,
    char *state
    ) {
    return pipeline_step_impl_create_internal (
        _class,
        _links,
        display_name,
        duration_in_millis,
        id,
        input,
        result,
        start_time,
        state
        );
}

void pipeline_step_impl_free(pipeline_step_impl_t *pipeline_step_impl) {
    if(NULL == pipeline_step_impl){
        return ;
    }
    if(pipeline_step_impl->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_step_impl_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_step_impl->_class) {
        free(pipeline_step_impl->_class);
        pipeline_step_impl->_class = NULL;
    }
    if (pipeline_step_impl->_links) {
        pipeline_step_impllinks_free(pipeline_step_impl->_links);
        pipeline_step_impl->_links = NULL;
    }
    if (pipeline_step_impl->display_name) {
        free(pipeline_step_impl->display_name);
        pipeline_step_impl->display_name = NULL;
    }
    if (pipeline_step_impl->id) {
        free(pipeline_step_impl->id);
        pipeline_step_impl->id = NULL;
    }
    if (pipeline_step_impl->input) {
        input_step_impl_free(pipeline_step_impl->input);
        pipeline_step_impl->input = NULL;
    }
    if (pipeline_step_impl->result) {
        free(pipeline_step_impl->result);
        pipeline_step_impl->result = NULL;
    }
    if (pipeline_step_impl->start_time) {
        free(pipeline_step_impl->start_time);
        pipeline_step_impl->start_time = NULL;
    }
    if (pipeline_step_impl->state) {
        free(pipeline_step_impl->state);
        pipeline_step_impl->state = NULL;
    }
    free(pipeline_step_impl);
}

cJSON *pipeline_step_impl_convertToJSON(pipeline_step_impl_t *pipeline_step_impl) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_step_impl->_class
    if(pipeline_step_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_step_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_step_impl->_links
    if(pipeline_step_impl->_links) {
    cJSON *_links_local_JSON = pipeline_step_impllinks_convertToJSON(pipeline_step_impl->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_step_impl->display_name
    if(pipeline_step_impl->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", pipeline_step_impl->display_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_step_impl->duration_in_millis
    if(pipeline_step_impl->duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "durationInMillis", pipeline_step_impl->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_step_impl->id
    if(pipeline_step_impl->id) {
    if(cJSON_AddStringToObject(item, "id", pipeline_step_impl->id) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_step_impl->input
    if(pipeline_step_impl->input) {
    cJSON *input_local_JSON = input_step_impl_convertToJSON(pipeline_step_impl->input);
    if(input_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "input", input_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_step_impl->result
    if(pipeline_step_impl->result) {
    if(cJSON_AddStringToObject(item, "result", pipeline_step_impl->result) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_step_impl->start_time
    if(pipeline_step_impl->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", pipeline_step_impl->start_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_step_impl->state
    if(pipeline_step_impl->state) {
    if(cJSON_AddStringToObject(item, "state", pipeline_step_impl->state) == NULL) {
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

pipeline_step_impl_t *pipeline_step_impl_parseFromJSON(cJSON *pipeline_step_implJSON){

    pipeline_step_impl_t *pipeline_step_impl_local_var = NULL;

    // define the local variable for pipeline_step_impl->_links
    pipeline_step_impllinks_t *_links_local_nonprim = NULL;

    // define the local variable for pipeline_step_impl->input
    input_step_impl_t *input_local_nonprim = NULL;

    // pipeline_step_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // pipeline_step_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = pipeline_step_impllinks_parseFromJSON(_links); //nonprimitive
    }

    // pipeline_step_impl->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_step_impl->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "durationInMillis");
    if (cJSON_IsNull(duration_in_millis)) {
        duration_in_millis = NULL;
    }
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_step_impl->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // pipeline_step_impl->input
    cJSON *input = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "input");
    if (cJSON_IsNull(input)) {
        input = NULL;
    }
    if (input) { 
    input_local_nonprim = input_step_impl_parseFromJSON(input); //nonprimitive
    }

    // pipeline_step_impl->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "result");
    if (cJSON_IsNull(result)) {
        result = NULL;
    }
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // pipeline_step_impl->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //String
    }
    }

    // pipeline_step_impl->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipeline_step_implJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }


    pipeline_step_impl_local_var = pipeline_step_impl_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        duration_in_millis ? duration_in_millis->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        input ? input_local_nonprim : NULL,
        result && !cJSON_IsNull(result) ? strdup(result->valuestring) : NULL,
        start_time && !cJSON_IsNull(start_time) ? strdup(start_time->valuestring) : NULL,
        state && !cJSON_IsNull(state) ? strdup(state->valuestring) : NULL
        );

    return pipeline_step_impl_local_var;
end:
    if (_links_local_nonprim) {
        pipeline_step_impllinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (input_local_nonprim) {
        input_step_impl_free(input_local_nonprim);
        input_local_nonprim = NULL;
    }
    return NULL;

}
