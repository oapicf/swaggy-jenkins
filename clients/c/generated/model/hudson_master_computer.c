#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "hudson_master_computer.h"



hudson_master_computer_t *hudson_master_computer_create(
    char *_class,
    char *display_name,
    list_t *executors,
    char *icon,
    char *icon_class_name,
    int idle,
    int jnlp_agent,
    int launch_supported,
    label1_t *load_statistics,
    int manual_launch_allowed,
    hudson_master_computermonitor_data_t *monitor_data,
    int num_executors,
    int offline,
    char *offline_cause,
    char *offline_cause_reason,
    int temporarily_offline
    ) {
    hudson_master_computer_t *hudson_master_computer_local_var = malloc(sizeof(hudson_master_computer_t));
    if (!hudson_master_computer_local_var) {
        return NULL;
    }
    hudson_master_computer_local_var->_class = _class;
    hudson_master_computer_local_var->display_name = display_name;
    hudson_master_computer_local_var->executors = executors;
    hudson_master_computer_local_var->icon = icon;
    hudson_master_computer_local_var->icon_class_name = icon_class_name;
    hudson_master_computer_local_var->idle = idle;
    hudson_master_computer_local_var->jnlp_agent = jnlp_agent;
    hudson_master_computer_local_var->launch_supported = launch_supported;
    hudson_master_computer_local_var->load_statistics = load_statistics;
    hudson_master_computer_local_var->manual_launch_allowed = manual_launch_allowed;
    hudson_master_computer_local_var->monitor_data = monitor_data;
    hudson_master_computer_local_var->num_executors = num_executors;
    hudson_master_computer_local_var->offline = offline;
    hudson_master_computer_local_var->offline_cause = offline_cause;
    hudson_master_computer_local_var->offline_cause_reason = offline_cause_reason;
    hudson_master_computer_local_var->temporarily_offline = temporarily_offline;

    return hudson_master_computer_local_var;
}


void hudson_master_computer_free(hudson_master_computer_t *hudson_master_computer) {
    if(NULL == hudson_master_computer){
        return ;
    }
    listEntry_t *listEntry;
    if (hudson_master_computer->_class) {
        free(hudson_master_computer->_class);
        hudson_master_computer->_class = NULL;
    }
    if (hudson_master_computer->display_name) {
        free(hudson_master_computer->display_name);
        hudson_master_computer->display_name = NULL;
    }
    if (hudson_master_computer->executors) {
        list_ForEach(listEntry, hudson_master_computer->executors) {
            hudson_master_computerexecutors_free(listEntry->data);
        }
        list_freeList(hudson_master_computer->executors);
        hudson_master_computer->executors = NULL;
    }
    if (hudson_master_computer->icon) {
        free(hudson_master_computer->icon);
        hudson_master_computer->icon = NULL;
    }
    if (hudson_master_computer->icon_class_name) {
        free(hudson_master_computer->icon_class_name);
        hudson_master_computer->icon_class_name = NULL;
    }
    if (hudson_master_computer->load_statistics) {
        label1_free(hudson_master_computer->load_statistics);
        hudson_master_computer->load_statistics = NULL;
    }
    if (hudson_master_computer->monitor_data) {
        hudson_master_computermonitor_data_free(hudson_master_computer->monitor_data);
        hudson_master_computer->monitor_data = NULL;
    }
    if (hudson_master_computer->offline_cause) {
        free(hudson_master_computer->offline_cause);
        hudson_master_computer->offline_cause = NULL;
    }
    if (hudson_master_computer->offline_cause_reason) {
        free(hudson_master_computer->offline_cause_reason);
        hudson_master_computer->offline_cause_reason = NULL;
    }
    free(hudson_master_computer);
}

cJSON *hudson_master_computer_convertToJSON(hudson_master_computer_t *hudson_master_computer) {
    cJSON *item = cJSON_CreateObject();

    // hudson_master_computer->_class
    if(hudson_master_computer->_class) { 
    if(cJSON_AddStringToObject(item, "_class", hudson_master_computer->_class) == NULL) {
    goto fail; //String
    }
     } 


    // hudson_master_computer->display_name
    if(hudson_master_computer->display_name) { 
    if(cJSON_AddStringToObject(item, "displayName", hudson_master_computer->display_name) == NULL) {
    goto fail; //String
    }
     } 


    // hudson_master_computer->executors
    if(hudson_master_computer->executors) { 
    cJSON *executors = cJSON_AddArrayToObject(item, "executors");
    if(executors == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *executorsListEntry;
    if (hudson_master_computer->executors) {
    list_ForEach(executorsListEntry, hudson_master_computer->executors) {
    cJSON *itemLocal = hudson_master_computerexecutors_convertToJSON(executorsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(executors, itemLocal);
    }
    }
     } 


    // hudson_master_computer->icon
    if(hudson_master_computer->icon) { 
    if(cJSON_AddStringToObject(item, "icon", hudson_master_computer->icon) == NULL) {
    goto fail; //String
    }
     } 


    // hudson_master_computer->icon_class_name
    if(hudson_master_computer->icon_class_name) { 
    if(cJSON_AddStringToObject(item, "iconClassName", hudson_master_computer->icon_class_name) == NULL) {
    goto fail; //String
    }
     } 


    // hudson_master_computer->idle
    if(hudson_master_computer->idle) { 
    if(cJSON_AddBoolToObject(item, "idle", hudson_master_computer->idle) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson_master_computer->jnlp_agent
    if(hudson_master_computer->jnlp_agent) { 
    if(cJSON_AddBoolToObject(item, "jnlpAgent", hudson_master_computer->jnlp_agent) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson_master_computer->launch_supported
    if(hudson_master_computer->launch_supported) { 
    if(cJSON_AddBoolToObject(item, "launchSupported", hudson_master_computer->launch_supported) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson_master_computer->load_statistics
    if(hudson_master_computer->load_statistics) { 
    cJSON *load_statistics_local_JSON = label1_convertToJSON(hudson_master_computer->load_statistics);
    if(load_statistics_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "loadStatistics", load_statistics_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // hudson_master_computer->manual_launch_allowed
    if(hudson_master_computer->manual_launch_allowed) { 
    if(cJSON_AddBoolToObject(item, "manualLaunchAllowed", hudson_master_computer->manual_launch_allowed) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson_master_computer->monitor_data
    if(hudson_master_computer->monitor_data) { 
    cJSON *monitor_data_local_JSON = hudson_master_computermonitor_data_convertToJSON(hudson_master_computer->monitor_data);
    if(monitor_data_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "monitorData", monitor_data_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // hudson_master_computer->num_executors
    if(hudson_master_computer->num_executors) { 
    if(cJSON_AddNumberToObject(item, "numExecutors", hudson_master_computer->num_executors) == NULL) {
    goto fail; //Numeric
    }
     } 


    // hudson_master_computer->offline
    if(hudson_master_computer->offline) { 
    if(cJSON_AddBoolToObject(item, "offline", hudson_master_computer->offline) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson_master_computer->offline_cause
    if(hudson_master_computer->offline_cause) { 
    if(cJSON_AddStringToObject(item, "offlineCause", hudson_master_computer->offline_cause) == NULL) {
    goto fail; //String
    }
     } 


    // hudson_master_computer->offline_cause_reason
    if(hudson_master_computer->offline_cause_reason) { 
    if(cJSON_AddStringToObject(item, "offlineCauseReason", hudson_master_computer->offline_cause_reason) == NULL) {
    goto fail; //String
    }
     } 


    // hudson_master_computer->temporarily_offline
    if(hudson_master_computer->temporarily_offline) { 
    if(cJSON_AddBoolToObject(item, "temporarilyOffline", hudson_master_computer->temporarily_offline) == NULL) {
    goto fail; //Bool
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

hudson_master_computer_t *hudson_master_computer_parseFromJSON(cJSON *hudson_master_computerJSON){

    hudson_master_computer_t *hudson_master_computer_local_var = NULL;

    // define the local variable for hudson_master_computer->load_statistics
    label1_t *load_statistics_local_nonprim = NULL;

    // define the local variable for hudson_master_computer->monitor_data
    hudson_master_computermonitor_data_t *monitor_data_local_nonprim = NULL;

    // hudson_master_computer->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // hudson_master_computer->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name))
    {
    goto end; //String
    }
    }

    // hudson_master_computer->executors
    cJSON *executors = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "executors");
    list_t *executorsList;
    if (executors) { 
    cJSON *executors_local_nonprimitive;
    if(!cJSON_IsArray(executors)){
        goto end; //nonprimitive container
    }

    executorsList = list_createList();

    cJSON_ArrayForEach(executors_local_nonprimitive,executors )
    {
        if(!cJSON_IsObject(executors_local_nonprimitive)){
            goto end;
        }
        hudson_master_computerexecutors_t *executorsItem = hudson_master_computerexecutors_parseFromJSON(executors_local_nonprimitive);

        list_addElement(executorsList, executorsItem);
    }
    }

    // hudson_master_computer->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "icon");
    if (icon) { 
    if(!cJSON_IsString(icon))
    {
    goto end; //String
    }
    }

    // hudson_master_computer->icon_class_name
    cJSON *icon_class_name = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "iconClassName");
    if (icon_class_name) { 
    if(!cJSON_IsString(icon_class_name))
    {
    goto end; //String
    }
    }

    // hudson_master_computer->idle
    cJSON *idle = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "idle");
    if (idle) { 
    if(!cJSON_IsBool(idle))
    {
    goto end; //Bool
    }
    }

    // hudson_master_computer->jnlp_agent
    cJSON *jnlp_agent = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "jnlpAgent");
    if (jnlp_agent) { 
    if(!cJSON_IsBool(jnlp_agent))
    {
    goto end; //Bool
    }
    }

    // hudson_master_computer->launch_supported
    cJSON *launch_supported = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "launchSupported");
    if (launch_supported) { 
    if(!cJSON_IsBool(launch_supported))
    {
    goto end; //Bool
    }
    }

    // hudson_master_computer->load_statistics
    cJSON *load_statistics = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "loadStatistics");
    if (load_statistics) { 
    load_statistics_local_nonprim = label1_parseFromJSON(load_statistics); //nonprimitive
    }

    // hudson_master_computer->manual_launch_allowed
    cJSON *manual_launch_allowed = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "manualLaunchAllowed");
    if (manual_launch_allowed) { 
    if(!cJSON_IsBool(manual_launch_allowed))
    {
    goto end; //Bool
    }
    }

    // hudson_master_computer->monitor_data
    cJSON *monitor_data = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "monitorData");
    if (monitor_data) { 
    monitor_data_local_nonprim = hudson_master_computermonitor_data_parseFromJSON(monitor_data); //nonprimitive
    }

    // hudson_master_computer->num_executors
    cJSON *num_executors = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "numExecutors");
    if (num_executors) { 
    if(!cJSON_IsNumber(num_executors))
    {
    goto end; //Numeric
    }
    }

    // hudson_master_computer->offline
    cJSON *offline = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "offline");
    if (offline) { 
    if(!cJSON_IsBool(offline))
    {
    goto end; //Bool
    }
    }

    // hudson_master_computer->offline_cause
    cJSON *offline_cause = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "offlineCause");
    if (offline_cause) { 
    if(!cJSON_IsString(offline_cause))
    {
    goto end; //String
    }
    }

    // hudson_master_computer->offline_cause_reason
    cJSON *offline_cause_reason = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "offlineCauseReason");
    if (offline_cause_reason) { 
    if(!cJSON_IsString(offline_cause_reason))
    {
    goto end; //String
    }
    }

    // hudson_master_computer->temporarily_offline
    cJSON *temporarily_offline = cJSON_GetObjectItemCaseSensitive(hudson_master_computerJSON, "temporarilyOffline");
    if (temporarily_offline) { 
    if(!cJSON_IsBool(temporarily_offline))
    {
    goto end; //Bool
    }
    }


    hudson_master_computer_local_var = hudson_master_computer_create (
        _class ? strdup(_class->valuestring) : NULL,
        display_name ? strdup(display_name->valuestring) : NULL,
        executors ? executorsList : NULL,
        icon ? strdup(icon->valuestring) : NULL,
        icon_class_name ? strdup(icon_class_name->valuestring) : NULL,
        idle ? idle->valueint : 0,
        jnlp_agent ? jnlp_agent->valueint : 0,
        launch_supported ? launch_supported->valueint : 0,
        load_statistics ? load_statistics_local_nonprim : NULL,
        manual_launch_allowed ? manual_launch_allowed->valueint : 0,
        monitor_data ? monitor_data_local_nonprim : NULL,
        num_executors ? num_executors->valuedouble : 0,
        offline ? offline->valueint : 0,
        offline_cause ? strdup(offline_cause->valuestring) : NULL,
        offline_cause_reason ? strdup(offline_cause_reason->valuestring) : NULL,
        temporarily_offline ? temporarily_offline->valueint : 0
        );

    return hudson_master_computer_local_var;
end:
    if (load_statistics_local_nonprim) {
        label1_free(load_statistics_local_nonprim);
        load_statistics_local_nonprim = NULL;
    }
    if (monitor_data_local_nonprim) {
        hudson_master_computermonitor_data_free(monitor_data_local_nonprim);
        monitor_data_local_nonprim = NULL;
    }
    return NULL;

}
