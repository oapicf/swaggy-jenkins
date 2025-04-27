#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "hudson_master_computermonitor_data.h"



static hudson_master_computermonitor_data_t *hudson_master_computermonitor_data_create_internal(
    swap_space_monitor_memory_usage2_t *hudson_node_monitors_swap_space_monitor,
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_temporary_space_monitor,
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_disk_space_monitor,
    char *hudson_node_monitors_architecture_monitor,
    response_time_monitor_data_t *hudson_node_monitors_response_time_monitor,
    clock_difference_t *hudson_node_monitors_clock_monitor,
    char *_class
    ) {
    hudson_master_computermonitor_data_t *hudson_master_computermonitor_data_local_var = malloc(sizeof(hudson_master_computermonitor_data_t));
    if (!hudson_master_computermonitor_data_local_var) {
        return NULL;
    }
    hudson_master_computermonitor_data_local_var->hudson_node_monitors_swap_space_monitor = hudson_node_monitors_swap_space_monitor;
    hudson_master_computermonitor_data_local_var->hudson_node_monitors_temporary_space_monitor = hudson_node_monitors_temporary_space_monitor;
    hudson_master_computermonitor_data_local_var->hudson_node_monitors_disk_space_monitor = hudson_node_monitors_disk_space_monitor;
    hudson_master_computermonitor_data_local_var->hudson_node_monitors_architecture_monitor = hudson_node_monitors_architecture_monitor;
    hudson_master_computermonitor_data_local_var->hudson_node_monitors_response_time_monitor = hudson_node_monitors_response_time_monitor;
    hudson_master_computermonitor_data_local_var->hudson_node_monitors_clock_monitor = hudson_node_monitors_clock_monitor;
    hudson_master_computermonitor_data_local_var->_class = _class;

    hudson_master_computermonitor_data_local_var->_library_owned = 1;
    return hudson_master_computermonitor_data_local_var;
}

__attribute__((deprecated)) hudson_master_computermonitor_data_t *hudson_master_computermonitor_data_create(
    swap_space_monitor_memory_usage2_t *hudson_node_monitors_swap_space_monitor,
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_temporary_space_monitor,
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_disk_space_monitor,
    char *hudson_node_monitors_architecture_monitor,
    response_time_monitor_data_t *hudson_node_monitors_response_time_monitor,
    clock_difference_t *hudson_node_monitors_clock_monitor,
    char *_class
    ) {
    return hudson_master_computermonitor_data_create_internal (
        hudson_node_monitors_swap_space_monitor,
        hudson_node_monitors_temporary_space_monitor,
        hudson_node_monitors_disk_space_monitor,
        hudson_node_monitors_architecture_monitor,
        hudson_node_monitors_response_time_monitor,
        hudson_node_monitors_clock_monitor,
        _class
        );
}

void hudson_master_computermonitor_data_free(hudson_master_computermonitor_data_t *hudson_master_computermonitor_data) {
    if(NULL == hudson_master_computermonitor_data){
        return ;
    }
    if(hudson_master_computermonitor_data->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "hudson_master_computermonitor_data_free");
        return ;
    }
    listEntry_t *listEntry;
    if (hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor) {
        swap_space_monitor_memory_usage2_free(hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor);
        hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor = NULL;
    }
    if (hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor) {
        disk_space_monitor_descriptor_disk_space_free(hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor);
        hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor = NULL;
    }
    if (hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor) {
        disk_space_monitor_descriptor_disk_space_free(hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor);
        hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor = NULL;
    }
    if (hudson_master_computermonitor_data->hudson_node_monitors_architecture_monitor) {
        free(hudson_master_computermonitor_data->hudson_node_monitors_architecture_monitor);
        hudson_master_computermonitor_data->hudson_node_monitors_architecture_monitor = NULL;
    }
    if (hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor) {
        response_time_monitor_data_free(hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor);
        hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor = NULL;
    }
    if (hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor) {
        clock_difference_free(hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor);
        hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor = NULL;
    }
    if (hudson_master_computermonitor_data->_class) {
        free(hudson_master_computermonitor_data->_class);
        hudson_master_computermonitor_data->_class = NULL;
    }
    free(hudson_master_computermonitor_data);
}

cJSON *hudson_master_computermonitor_data_convertToJSON(hudson_master_computermonitor_data_t *hudson_master_computermonitor_data) {
    cJSON *item = cJSON_CreateObject();

    // hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor
    if(hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor) {
    cJSON *hudson_node_monitors_swap_space_monitor_local_JSON = swap_space_monitor_memory_usage2_convertToJSON(hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor);
    if(hudson_node_monitors_swap_space_monitor_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hudson.node_monitors.SwapSpaceMonitor", hudson_node_monitors_swap_space_monitor_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor
    if(hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor) {
    cJSON *hudson_node_monitors_temporary_space_monitor_local_JSON = disk_space_monitor_descriptor_disk_space_convertToJSON(hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor);
    if(hudson_node_monitors_temporary_space_monitor_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hudson.node_monitors.TemporarySpaceMonitor", hudson_node_monitors_temporary_space_monitor_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor
    if(hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor) {
    cJSON *hudson_node_monitors_disk_space_monitor_local_JSON = disk_space_monitor_descriptor_disk_space_convertToJSON(hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor);
    if(hudson_node_monitors_disk_space_monitor_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hudson.node_monitors.DiskSpaceMonitor", hudson_node_monitors_disk_space_monitor_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // hudson_master_computermonitor_data->hudson_node_monitors_architecture_monitor
    if(hudson_master_computermonitor_data->hudson_node_monitors_architecture_monitor) {
    if(cJSON_AddStringToObject(item, "hudson.node_monitors.ArchitectureMonitor", hudson_master_computermonitor_data->hudson_node_monitors_architecture_monitor) == NULL) {
    goto fail; //String
    }
    }


    // hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor
    if(hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor) {
    cJSON *hudson_node_monitors_response_time_monitor_local_JSON = response_time_monitor_data_convertToJSON(hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor);
    if(hudson_node_monitors_response_time_monitor_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hudson.node_monitors.ResponseTimeMonitor", hudson_node_monitors_response_time_monitor_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor
    if(hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor) {
    cJSON *hudson_node_monitors_clock_monitor_local_JSON = clock_difference_convertToJSON(hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor);
    if(hudson_node_monitors_clock_monitor_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hudson.node_monitors.ClockMonitor", hudson_node_monitors_clock_monitor_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // hudson_master_computermonitor_data->_class
    if(hudson_master_computermonitor_data->_class) {
    if(cJSON_AddStringToObject(item, "_class", hudson_master_computermonitor_data->_class) == NULL) {
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

hudson_master_computermonitor_data_t *hudson_master_computermonitor_data_parseFromJSON(cJSON *hudson_master_computermonitor_dataJSON){

    hudson_master_computermonitor_data_t *hudson_master_computermonitor_data_local_var = NULL;

    // define the local variable for hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor
    swap_space_monitor_memory_usage2_t *hudson_node_monitors_swap_space_monitor_local_nonprim = NULL;

    // define the local variable for hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_temporary_space_monitor_local_nonprim = NULL;

    // define the local variable for hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_disk_space_monitor_local_nonprim = NULL;

    // define the local variable for hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor
    response_time_monitor_data_t *hudson_node_monitors_response_time_monitor_local_nonprim = NULL;

    // define the local variable for hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor
    clock_difference_t *hudson_node_monitors_clock_monitor_local_nonprim = NULL;

    // hudson_master_computermonitor_data->hudson_node_monitors_swap_space_monitor
    cJSON *hudson_node_monitors_swap_space_monitor = cJSON_GetObjectItemCaseSensitive(hudson_master_computermonitor_dataJSON, "hudson.node_monitors.SwapSpaceMonitor");
    if (cJSON_IsNull(hudson_node_monitors_swap_space_monitor)) {
        hudson_node_monitors_swap_space_monitor = NULL;
    }
    if (hudson_node_monitors_swap_space_monitor) { 
    hudson_node_monitors_swap_space_monitor_local_nonprim = swap_space_monitor_memory_usage2_parseFromJSON(hudson_node_monitors_swap_space_monitor); //nonprimitive
    }

    // hudson_master_computermonitor_data->hudson_node_monitors_temporary_space_monitor
    cJSON *hudson_node_monitors_temporary_space_monitor = cJSON_GetObjectItemCaseSensitive(hudson_master_computermonitor_dataJSON, "hudson.node_monitors.TemporarySpaceMonitor");
    if (cJSON_IsNull(hudson_node_monitors_temporary_space_monitor)) {
        hudson_node_monitors_temporary_space_monitor = NULL;
    }
    if (hudson_node_monitors_temporary_space_monitor) { 
    hudson_node_monitors_temporary_space_monitor_local_nonprim = disk_space_monitor_descriptor_disk_space_parseFromJSON(hudson_node_monitors_temporary_space_monitor); //nonprimitive
    }

    // hudson_master_computermonitor_data->hudson_node_monitors_disk_space_monitor
    cJSON *hudson_node_monitors_disk_space_monitor = cJSON_GetObjectItemCaseSensitive(hudson_master_computermonitor_dataJSON, "hudson.node_monitors.DiskSpaceMonitor");
    if (cJSON_IsNull(hudson_node_monitors_disk_space_monitor)) {
        hudson_node_monitors_disk_space_monitor = NULL;
    }
    if (hudson_node_monitors_disk_space_monitor) { 
    hudson_node_monitors_disk_space_monitor_local_nonprim = disk_space_monitor_descriptor_disk_space_parseFromJSON(hudson_node_monitors_disk_space_monitor); //nonprimitive
    }

    // hudson_master_computermonitor_data->hudson_node_monitors_architecture_monitor
    cJSON *hudson_node_monitors_architecture_monitor = cJSON_GetObjectItemCaseSensitive(hudson_master_computermonitor_dataJSON, "hudson.node_monitors.ArchitectureMonitor");
    if (cJSON_IsNull(hudson_node_monitors_architecture_monitor)) {
        hudson_node_monitors_architecture_monitor = NULL;
    }
    if (hudson_node_monitors_architecture_monitor) { 
    if(!cJSON_IsString(hudson_node_monitors_architecture_monitor) && !cJSON_IsNull(hudson_node_monitors_architecture_monitor))
    {
    goto end; //String
    }
    }

    // hudson_master_computermonitor_data->hudson_node_monitors_response_time_monitor
    cJSON *hudson_node_monitors_response_time_monitor = cJSON_GetObjectItemCaseSensitive(hudson_master_computermonitor_dataJSON, "hudson.node_monitors.ResponseTimeMonitor");
    if (cJSON_IsNull(hudson_node_monitors_response_time_monitor)) {
        hudson_node_monitors_response_time_monitor = NULL;
    }
    if (hudson_node_monitors_response_time_monitor) { 
    hudson_node_monitors_response_time_monitor_local_nonprim = response_time_monitor_data_parseFromJSON(hudson_node_monitors_response_time_monitor); //nonprimitive
    }

    // hudson_master_computermonitor_data->hudson_node_monitors_clock_monitor
    cJSON *hudson_node_monitors_clock_monitor = cJSON_GetObjectItemCaseSensitive(hudson_master_computermonitor_dataJSON, "hudson.node_monitors.ClockMonitor");
    if (cJSON_IsNull(hudson_node_monitors_clock_monitor)) {
        hudson_node_monitors_clock_monitor = NULL;
    }
    if (hudson_node_monitors_clock_monitor) { 
    hudson_node_monitors_clock_monitor_local_nonprim = clock_difference_parseFromJSON(hudson_node_monitors_clock_monitor); //nonprimitive
    }

    // hudson_master_computermonitor_data->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(hudson_master_computermonitor_dataJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    hudson_master_computermonitor_data_local_var = hudson_master_computermonitor_data_create_internal (
        hudson_node_monitors_swap_space_monitor ? hudson_node_monitors_swap_space_monitor_local_nonprim : NULL,
        hudson_node_monitors_temporary_space_monitor ? hudson_node_monitors_temporary_space_monitor_local_nonprim : NULL,
        hudson_node_monitors_disk_space_monitor ? hudson_node_monitors_disk_space_monitor_local_nonprim : NULL,
        hudson_node_monitors_architecture_monitor && !cJSON_IsNull(hudson_node_monitors_architecture_monitor) ? strdup(hudson_node_monitors_architecture_monitor->valuestring) : NULL,
        hudson_node_monitors_response_time_monitor ? hudson_node_monitors_response_time_monitor_local_nonprim : NULL,
        hudson_node_monitors_clock_monitor ? hudson_node_monitors_clock_monitor_local_nonprim : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return hudson_master_computermonitor_data_local_var;
end:
    if (hudson_node_monitors_swap_space_monitor_local_nonprim) {
        swap_space_monitor_memory_usage2_free(hudson_node_monitors_swap_space_monitor_local_nonprim);
        hudson_node_monitors_swap_space_monitor_local_nonprim = NULL;
    }
    if (hudson_node_monitors_temporary_space_monitor_local_nonprim) {
        disk_space_monitor_descriptor_disk_space_free(hudson_node_monitors_temporary_space_monitor_local_nonprim);
        hudson_node_monitors_temporary_space_monitor_local_nonprim = NULL;
    }
    if (hudson_node_monitors_disk_space_monitor_local_nonprim) {
        disk_space_monitor_descriptor_disk_space_free(hudson_node_monitors_disk_space_monitor_local_nonprim);
        hudson_node_monitors_disk_space_monitor_local_nonprim = NULL;
    }
    if (hudson_node_monitors_response_time_monitor_local_nonprim) {
        response_time_monitor_data_free(hudson_node_monitors_response_time_monitor_local_nonprim);
        hudson_node_monitors_response_time_monitor_local_nonprim = NULL;
    }
    if (hudson_node_monitors_clock_monitor_local_nonprim) {
        clock_difference_free(hudson_node_monitors_clock_monitor_local_nonprim);
        hudson_node_monitors_clock_monitor_local_nonprim = NULL;
    }
    return NULL;

}
