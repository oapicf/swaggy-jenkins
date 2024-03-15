#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_build.h"



free_style_build_t *free_style_build_create(
    char *_class,
    int number,
    char *url,
    list_t *actions,
    int building,
    char *description,
    char *display_name,
    int duration,
    int estimated_duration,
    char *executor,
    char *full_display_name,
    char *id,
    int keep_log,
    int queue_id,
    char *result,
    int timestamp,
    char *built_on,
    empty_change_log_set_t *change_set
    ) {
    free_style_build_t *free_style_build_local_var = malloc(sizeof(free_style_build_t));
    if (!free_style_build_local_var) {
        return NULL;
    }
    free_style_build_local_var->_class = _class;
    free_style_build_local_var->number = number;
    free_style_build_local_var->url = url;
    free_style_build_local_var->actions = actions;
    free_style_build_local_var->building = building;
    free_style_build_local_var->description = description;
    free_style_build_local_var->display_name = display_name;
    free_style_build_local_var->duration = duration;
    free_style_build_local_var->estimated_duration = estimated_duration;
    free_style_build_local_var->executor = executor;
    free_style_build_local_var->full_display_name = full_display_name;
    free_style_build_local_var->id = id;
    free_style_build_local_var->keep_log = keep_log;
    free_style_build_local_var->queue_id = queue_id;
    free_style_build_local_var->result = result;
    free_style_build_local_var->timestamp = timestamp;
    free_style_build_local_var->built_on = built_on;
    free_style_build_local_var->change_set = change_set;

    return free_style_build_local_var;
}


void free_style_build_free(free_style_build_t *free_style_build) {
    if(NULL == free_style_build){
        return ;
    }
    listEntry_t *listEntry;
    if (free_style_build->_class) {
        free(free_style_build->_class);
        free_style_build->_class = NULL;
    }
    if (free_style_build->url) {
        free(free_style_build->url);
        free_style_build->url = NULL;
    }
    if (free_style_build->actions) {
        list_ForEach(listEntry, free_style_build->actions) {
            cause_action_free(listEntry->data);
        }
        list_freeList(free_style_build->actions);
        free_style_build->actions = NULL;
    }
    if (free_style_build->description) {
        free(free_style_build->description);
        free_style_build->description = NULL;
    }
    if (free_style_build->display_name) {
        free(free_style_build->display_name);
        free_style_build->display_name = NULL;
    }
    if (free_style_build->executor) {
        free(free_style_build->executor);
        free_style_build->executor = NULL;
    }
    if (free_style_build->full_display_name) {
        free(free_style_build->full_display_name);
        free_style_build->full_display_name = NULL;
    }
    if (free_style_build->id) {
        free(free_style_build->id);
        free_style_build->id = NULL;
    }
    if (free_style_build->result) {
        free(free_style_build->result);
        free_style_build->result = NULL;
    }
    if (free_style_build->built_on) {
        free(free_style_build->built_on);
        free_style_build->built_on = NULL;
    }
    if (free_style_build->change_set) {
        empty_change_log_set_free(free_style_build->change_set);
        free_style_build->change_set = NULL;
    }
    free(free_style_build);
}

cJSON *free_style_build_convertToJSON(free_style_build_t *free_style_build) {
    cJSON *item = cJSON_CreateObject();

    // free_style_build->_class
    if(free_style_build->_class) {
    if(cJSON_AddStringToObject(item, "_class", free_style_build->_class) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->number
    if(free_style_build->number) {
    if(cJSON_AddNumberToObject(item, "number", free_style_build->number) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_build->url
    if(free_style_build->url) {
    if(cJSON_AddStringToObject(item, "url", free_style_build->url) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->actions
    if(free_style_build->actions) {
    cJSON *actions = cJSON_AddArrayToObject(item, "actions");
    if(actions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *actionsListEntry;
    if (free_style_build->actions) {
    list_ForEach(actionsListEntry, free_style_build->actions) {
    cJSON *itemLocal = cause_action_convertToJSON(actionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(actions, itemLocal);
    }
    }
    }


    // free_style_build->building
    if(free_style_build->building) {
    if(cJSON_AddBoolToObject(item, "building", free_style_build->building) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_build->description
    if(free_style_build->description) {
    if(cJSON_AddStringToObject(item, "description", free_style_build->description) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->display_name
    if(free_style_build->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", free_style_build->display_name) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->duration
    if(free_style_build->duration) {
    if(cJSON_AddNumberToObject(item, "duration", free_style_build->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_build->estimated_duration
    if(free_style_build->estimated_duration) {
    if(cJSON_AddNumberToObject(item, "estimatedDuration", free_style_build->estimated_duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_build->executor
    if(free_style_build->executor) {
    if(cJSON_AddStringToObject(item, "executor", free_style_build->executor) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->full_display_name
    if(free_style_build->full_display_name) {
    if(cJSON_AddStringToObject(item, "fullDisplayName", free_style_build->full_display_name) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->id
    if(free_style_build->id) {
    if(cJSON_AddStringToObject(item, "id", free_style_build->id) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->keep_log
    if(free_style_build->keep_log) {
    if(cJSON_AddBoolToObject(item, "keepLog", free_style_build->keep_log) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_build->queue_id
    if(free_style_build->queue_id) {
    if(cJSON_AddNumberToObject(item, "queueId", free_style_build->queue_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_build->result
    if(free_style_build->result) {
    if(cJSON_AddStringToObject(item, "result", free_style_build->result) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->timestamp
    if(free_style_build->timestamp) {
    if(cJSON_AddNumberToObject(item, "timestamp", free_style_build->timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_build->built_on
    if(free_style_build->built_on) {
    if(cJSON_AddStringToObject(item, "builtOn", free_style_build->built_on) == NULL) {
    goto fail; //String
    }
    }


    // free_style_build->change_set
    if(free_style_build->change_set) {
    cJSON *change_set_local_JSON = empty_change_log_set_convertToJSON(free_style_build->change_set);
    if(change_set_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "changeSet", change_set_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

free_style_build_t *free_style_build_parseFromJSON(cJSON *free_style_buildJSON){

    free_style_build_t *free_style_build_local_var = NULL;

    // define the local list for free_style_build->actions
    list_t *actionsList = NULL;

    // define the local variable for free_style_build->change_set
    empty_change_log_set_t *change_set_local_nonprim = NULL;

    // free_style_build->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // free_style_build->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "number");
    if (number) { 
    if(!cJSON_IsNumber(number))
    {
    goto end; //Numeric
    }
    }

    // free_style_build->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "url");
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // free_style_build->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "actions");
    if (actions) { 
    cJSON *actions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(actions)){
        goto end; //nonprimitive container
    }

    actionsList = list_createList();

    cJSON_ArrayForEach(actions_local_nonprimitive,actions )
    {
        if(!cJSON_IsObject(actions_local_nonprimitive)){
            goto end;
        }
        cause_action_t *actionsItem = cause_action_parseFromJSON(actions_local_nonprimitive);

        list_addElement(actionsList, actionsItem);
    }
    }

    // free_style_build->building
    cJSON *building = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "building");
    if (building) { 
    if(!cJSON_IsBool(building))
    {
    goto end; //Bool
    }
    }

    // free_style_build->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "description");
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // free_style_build->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // free_style_build->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "duration");
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // free_style_build->estimated_duration
    cJSON *estimated_duration = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "estimatedDuration");
    if (estimated_duration) { 
    if(!cJSON_IsNumber(estimated_duration))
    {
    goto end; //Numeric
    }
    }

    // free_style_build->executor
    cJSON *executor = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "executor");
    if (executor) { 
    if(!cJSON_IsString(executor) && !cJSON_IsNull(executor))
    {
    goto end; //String
    }
    }

    // free_style_build->full_display_name
    cJSON *full_display_name = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "fullDisplayName");
    if (full_display_name) { 
    if(!cJSON_IsString(full_display_name) && !cJSON_IsNull(full_display_name))
    {
    goto end; //String
    }
    }

    // free_style_build->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // free_style_build->keep_log
    cJSON *keep_log = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "keepLog");
    if (keep_log) { 
    if(!cJSON_IsBool(keep_log))
    {
    goto end; //Bool
    }
    }

    // free_style_build->queue_id
    cJSON *queue_id = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "queueId");
    if (queue_id) { 
    if(!cJSON_IsNumber(queue_id))
    {
    goto end; //Numeric
    }
    }

    // free_style_build->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "result");
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // free_style_build->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsNumber(timestamp))
    {
    goto end; //Numeric
    }
    }

    // free_style_build->built_on
    cJSON *built_on = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "builtOn");
    if (built_on) { 
    if(!cJSON_IsString(built_on) && !cJSON_IsNull(built_on))
    {
    goto end; //String
    }
    }

    // free_style_build->change_set
    cJSON *change_set = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "changeSet");
    if (change_set) { 
    change_set_local_nonprim = empty_change_log_set_parseFromJSON(change_set); //nonprimitive
    }


    free_style_build_local_var = free_style_build_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        number ? number->valuedouble : 0,
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL,
        actions ? actionsList : NULL,
        building ? building->valueint : 0,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        duration ? duration->valuedouble : 0,
        estimated_duration ? estimated_duration->valuedouble : 0,
        executor && !cJSON_IsNull(executor) ? strdup(executor->valuestring) : NULL,
        full_display_name && !cJSON_IsNull(full_display_name) ? strdup(full_display_name->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        keep_log ? keep_log->valueint : 0,
        queue_id ? queue_id->valuedouble : 0,
        result && !cJSON_IsNull(result) ? strdup(result->valuestring) : NULL,
        timestamp ? timestamp->valuedouble : 0,
        built_on && !cJSON_IsNull(built_on) ? strdup(built_on->valuestring) : NULL,
        change_set ? change_set_local_nonprim : NULL
        );

    return free_style_build_local_var;
end:
    if (actionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, actionsList) {
            cause_action_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(actionsList);
        actionsList = NULL;
    }
    if (change_set_local_nonprim) {
        empty_change_log_set_free(change_set_local_nonprim);
        change_set_local_nonprim = NULL;
    }
    return NULL;

}
