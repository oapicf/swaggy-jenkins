#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_monitor_data.h"



static response_time_monitor_data_t *response_time_monitor_data_create_internal(
    char *_class,
    int *timestamp,
    int *average
    ) {
    response_time_monitor_data_t *response_time_monitor_data_local_var = malloc(sizeof(response_time_monitor_data_t));
    if (!response_time_monitor_data_local_var) {
        return NULL;
    }
    memset(response_time_monitor_data_local_var, 0, sizeof(response_time_monitor_data_t));
    response_time_monitor_data_local_var->_library_owned = 1;
    response_time_monitor_data_local_var->_class = _class;
    response_time_monitor_data_local_var->timestamp = timestamp;
    response_time_monitor_data_local_var->average = average;
    return response_time_monitor_data_local_var;
}

__attribute__((deprecated)) response_time_monitor_data_t *response_time_monitor_data_create(
    char *_class,
    int *timestamp,
    int *average
    ) {
    int *timestamp_copy = NULL;
    if (timestamp) {
        timestamp_copy = malloc(sizeof(int));
        if (timestamp_copy) *timestamp_copy = *timestamp;
    }
    int *average_copy = NULL;
    if (average) {
        average_copy = malloc(sizeof(int));
        if (average_copy) *average_copy = *average;
    }
    response_time_monitor_data_t *result = response_time_monitor_data_create_internal (
        _class,
        timestamp_copy,
        average_copy
        );
    if (!result) {
        free(timestamp_copy);
        free(average_copy);
    }
    return result;
}

void response_time_monitor_data_free(response_time_monitor_data_t *response_time_monitor_data) {
    if(NULL == response_time_monitor_data){
        return ;
    }
    if(response_time_monitor_data->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "response_time_monitor_data_free");
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_monitor_data->_class) {
        free(response_time_monitor_data->_class);
        response_time_monitor_data->_class = NULL;
    }
    if (response_time_monitor_data->timestamp) {
        free(response_time_monitor_data->timestamp);
        response_time_monitor_data->timestamp = NULL;
    }
    if (response_time_monitor_data->average) {
        free(response_time_monitor_data->average);
        response_time_monitor_data->average = NULL;
    }
    free(response_time_monitor_data);
}

cJSON *response_time_monitor_data_convertToJSON(response_time_monitor_data_t *response_time_monitor_data) {
    cJSON *item = cJSON_CreateObject();

    // response_time_monitor_data->_class
    if(response_time_monitor_data->_class) {
    if(cJSON_AddStringToObject(item, "_class", response_time_monitor_data->_class) == NULL) {
    goto fail; //String
    }
    }


    // response_time_monitor_data->timestamp
    if(response_time_monitor_data->timestamp) {
    if(cJSON_AddNumberToObject(item, "timestamp", *response_time_monitor_data->timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // response_time_monitor_data->average
    if(response_time_monitor_data->average) {
    if(cJSON_AddNumberToObject(item, "average", *response_time_monitor_data->average) == NULL) {
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

response_time_monitor_data_t *response_time_monitor_data_parseFromJSON(cJSON *response_time_monitor_dataJSON){

    response_time_monitor_data_t *response_time_monitor_data_local_var = NULL;

    char *_class_local_str = NULL;

    // define the local variable for response_time_monitor_data->timestamp
    int *timestamp_local_var = NULL;

    // define the local variable for response_time_monitor_data->average
    int *average_local_var = NULL;

    // response_time_monitor_data->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(response_time_monitor_dataJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // response_time_monitor_data->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(response_time_monitor_dataJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsNumber(timestamp))
    {
    goto end; //Numeric
    }
    timestamp_local_var = malloc(sizeof(int));
    if(!timestamp_local_var)
    {
        goto end;
    }
    *timestamp_local_var = timestamp->valuedouble;
    }

    // response_time_monitor_data->average
    cJSON *average = cJSON_GetObjectItemCaseSensitive(response_time_monitor_dataJSON, "average");
    if (cJSON_IsNull(average)) {
        average = NULL;
    }
    if (average) { 
    if(!cJSON_IsNumber(average))
    {
    goto end; //Numeric
    }
    average_local_var = malloc(sizeof(int));
    if(!average_local_var)
    {
        goto end;
    }
    *average_local_var = average->valuedouble;
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    response_time_monitor_data_local_var = response_time_monitor_data_create_internal (
        _class_local_str,
        timestamp_local_var,
        average_local_var
        );

    if (!response_time_monitor_data_local_var) {
        goto end;
    }

    return response_time_monitor_data_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (timestamp_local_var) {
        free(timestamp_local_var);
        timestamp_local_var = NULL;
    }
    if (average_local_var) {
        free(average_local_var);
        average_local_var = NULL;
    }
    return NULL;

}
