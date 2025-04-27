#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "generic_resource.h"



static generic_resource_t *generic_resource_create_internal(
    char *_class,
    char *display_name,
    int duration_in_millis,
    char *id,
    char *result,
    char *start_time
    ) {
    generic_resource_t *generic_resource_local_var = malloc(sizeof(generic_resource_t));
    if (!generic_resource_local_var) {
        return NULL;
    }
    generic_resource_local_var->_class = _class;
    generic_resource_local_var->display_name = display_name;
    generic_resource_local_var->duration_in_millis = duration_in_millis;
    generic_resource_local_var->id = id;
    generic_resource_local_var->result = result;
    generic_resource_local_var->start_time = start_time;

    generic_resource_local_var->_library_owned = 1;
    return generic_resource_local_var;
}

__attribute__((deprecated)) generic_resource_t *generic_resource_create(
    char *_class,
    char *display_name,
    int duration_in_millis,
    char *id,
    char *result,
    char *start_time
    ) {
    return generic_resource_create_internal (
        _class,
        display_name,
        duration_in_millis,
        id,
        result,
        start_time
        );
}

void generic_resource_free(generic_resource_t *generic_resource) {
    if(NULL == generic_resource){
        return ;
    }
    if(generic_resource->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "generic_resource_free");
        return ;
    }
    listEntry_t *listEntry;
    if (generic_resource->_class) {
        free(generic_resource->_class);
        generic_resource->_class = NULL;
    }
    if (generic_resource->display_name) {
        free(generic_resource->display_name);
        generic_resource->display_name = NULL;
    }
    if (generic_resource->id) {
        free(generic_resource->id);
        generic_resource->id = NULL;
    }
    if (generic_resource->result) {
        free(generic_resource->result);
        generic_resource->result = NULL;
    }
    if (generic_resource->start_time) {
        free(generic_resource->start_time);
        generic_resource->start_time = NULL;
    }
    free(generic_resource);
}

cJSON *generic_resource_convertToJSON(generic_resource_t *generic_resource) {
    cJSON *item = cJSON_CreateObject();

    // generic_resource->_class
    if(generic_resource->_class) {
    if(cJSON_AddStringToObject(item, "_class", generic_resource->_class) == NULL) {
    goto fail; //String
    }
    }


    // generic_resource->display_name
    if(generic_resource->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", generic_resource->display_name) == NULL) {
    goto fail; //String
    }
    }


    // generic_resource->duration_in_millis
    if(generic_resource->duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "durationInMillis", generic_resource->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // generic_resource->id
    if(generic_resource->id) {
    if(cJSON_AddStringToObject(item, "id", generic_resource->id) == NULL) {
    goto fail; //String
    }
    }


    // generic_resource->result
    if(generic_resource->result) {
    if(cJSON_AddStringToObject(item, "result", generic_resource->result) == NULL) {
    goto fail; //String
    }
    }


    // generic_resource->start_time
    if(generic_resource->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", generic_resource->start_time) == NULL) {
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

generic_resource_t *generic_resource_parseFromJSON(cJSON *generic_resourceJSON){

    generic_resource_t *generic_resource_local_var = NULL;

    // generic_resource->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(generic_resourceJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // generic_resource->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(generic_resourceJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // generic_resource->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(generic_resourceJSON, "durationInMillis");
    if (cJSON_IsNull(duration_in_millis)) {
        duration_in_millis = NULL;
    }
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // generic_resource->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(generic_resourceJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // generic_resource->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(generic_resourceJSON, "result");
    if (cJSON_IsNull(result)) {
        result = NULL;
    }
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // generic_resource->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(generic_resourceJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //String
    }
    }


    generic_resource_local_var = generic_resource_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        duration_in_millis ? duration_in_millis->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        result && !cJSON_IsNull(result) ? strdup(result->valuestring) : NULL,
        start_time && !cJSON_IsNull(start_time) ? strdup(start_time->valuestring) : NULL
        );

    return generic_resource_local_var;
end:
    return NULL;

}
