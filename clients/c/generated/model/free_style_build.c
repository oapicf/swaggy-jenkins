#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_build.h"



static free_style_build_t *free_style_build_create_internal(
    char *_class,
    int *number,
    char *url,
    list_t *actions,
    int *building,
    char *description,
    char *display_name,
    int *duration,
    int *estimated_duration,
    char *executor,
    char *full_display_name,
    char *id,
    int *keep_log,
    int *queue_id,
    char *result,
    int *timestamp,
    char *built_on,
    empty_change_log_set_t *change_set
    ) {
    free_style_build_t *free_style_build_local_var = malloc(sizeof(free_style_build_t));
    if (!free_style_build_local_var) {
        return NULL;
    }
    memset(free_style_build_local_var, 0, sizeof(free_style_build_t));
    free_style_build_local_var->_library_owned = 1;
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

__attribute__((deprecated)) free_style_build_t *free_style_build_create(
    char *_class,
    int *number,
    char *url,
    list_t *actions,
    int *building,
    char *description,
    char *display_name,
    int *duration,
    int *estimated_duration,
    char *executor,
    char *full_display_name,
    char *id,
    int *keep_log,
    int *queue_id,
    char *result,
    int *timestamp,
    char *built_on,
    empty_change_log_set_t *change_set
    ) {
    int *number_copy = NULL;
    if (number) {
        number_copy = malloc(sizeof(int));
        if (number_copy) *number_copy = *number;
    }
    int *building_copy = NULL;
    if (building) {
        building_copy = malloc(sizeof(int));
        if (building_copy) *building_copy = *building;
    }
    int *duration_copy = NULL;
    if (duration) {
        duration_copy = malloc(sizeof(int));
        if (duration_copy) *duration_copy = *duration;
    }
    int *estimated_duration_copy = NULL;
    if (estimated_duration) {
        estimated_duration_copy = malloc(sizeof(int));
        if (estimated_duration_copy) *estimated_duration_copy = *estimated_duration;
    }
    int *keep_log_copy = NULL;
    if (keep_log) {
        keep_log_copy = malloc(sizeof(int));
        if (keep_log_copy) *keep_log_copy = *keep_log;
    }
    int *queue_id_copy = NULL;
    if (queue_id) {
        queue_id_copy = malloc(sizeof(int));
        if (queue_id_copy) *queue_id_copy = *queue_id;
    }
    int *timestamp_copy = NULL;
    if (timestamp) {
        timestamp_copy = malloc(sizeof(int));
        if (timestamp_copy) *timestamp_copy = *timestamp;
    }
    free_style_build_t *result = free_style_build_create_internal (
        _class,
        number_copy,
        url,
        actions,
        building_copy,
        description,
        display_name,
        duration_copy,
        estimated_duration_copy,
        executor,
        full_display_name,
        id,
        keep_log_copy,
        queue_id_copy,
        result,
        timestamp_copy,
        built_on,
        change_set
        );
    if (!result) {
        free(number_copy);
        free(building_copy);
        free(duration_copy);
        free(estimated_duration_copy);
        free(keep_log_copy);
        free(queue_id_copy);
        free(timestamp_copy);
    }
    return result;
}

void free_style_build_free(free_style_build_t *free_style_build) {
    if(NULL == free_style_build){
        return ;
    }
    if(free_style_build->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "free_style_build_free");
        return ;
    }
    listEntry_t *listEntry;
    if (free_style_build->_class) {
        free(free_style_build->_class);
        free_style_build->_class = NULL;
    }
    if (free_style_build->number) {
        free(free_style_build->number);
        free_style_build->number = NULL;
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
    if (free_style_build->building) {
        free(free_style_build->building);
        free_style_build->building = NULL;
    }
    if (free_style_build->description) {
        free(free_style_build->description);
        free_style_build->description = NULL;
    }
    if (free_style_build->display_name) {
        free(free_style_build->display_name);
        free_style_build->display_name = NULL;
    }
    if (free_style_build->duration) {
        free(free_style_build->duration);
        free_style_build->duration = NULL;
    }
    if (free_style_build->estimated_duration) {
        free(free_style_build->estimated_duration);
        free_style_build->estimated_duration = NULL;
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
    if (free_style_build->keep_log) {
        free(free_style_build->keep_log);
        free_style_build->keep_log = NULL;
    }
    if (free_style_build->queue_id) {
        free(free_style_build->queue_id);
        free_style_build->queue_id = NULL;
    }
    if (free_style_build->result) {
        free(free_style_build->result);
        free_style_build->result = NULL;
    }
    if (free_style_build->timestamp) {
        free(free_style_build->timestamp);
        free_style_build->timestamp = NULL;
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
    if(cJSON_AddNumberToObject(item, "number", *free_style_build->number) == NULL) {
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
    if(cJSON_AddBoolToObject(item, "building", *free_style_build->building) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "duration", *free_style_build->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_build->estimated_duration
    if(free_style_build->estimated_duration) {
    if(cJSON_AddNumberToObject(item, "estimatedDuration", *free_style_build->estimated_duration) == NULL) {
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
    if(cJSON_AddBoolToObject(item, "keepLog", *free_style_build->keep_log) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_build->queue_id
    if(free_style_build->queue_id) {
    if(cJSON_AddNumberToObject(item, "queueId", *free_style_build->queue_id) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "timestamp", *free_style_build->timestamp) == NULL) {
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

    char *_class_local_str = NULL;

    // define the local variable for free_style_build->number
    int *number_local_var = NULL;

    char *url_local_str = NULL;

    // define the local list for free_style_build->actions
    list_t *actionsList = NULL;

    // define the local variable for free_style_build->building
    int *building_local_var = NULL;

    char *description_local_str = NULL;

    char *display_name_local_str = NULL;

    // define the local variable for free_style_build->duration
    int *duration_local_var = NULL;

    // define the local variable for free_style_build->estimated_duration
    int *estimated_duration_local_var = NULL;

    char *executor_local_str = NULL;

    char *full_display_name_local_str = NULL;

    char *id_local_str = NULL;

    // define the local variable for free_style_build->keep_log
    int *keep_log_local_var = NULL;

    // define the local variable for free_style_build->queue_id
    int *queue_id_local_var = NULL;

    char *result_local_str = NULL;

    // define the local variable for free_style_build->timestamp
    int *timestamp_local_var = NULL;

    char *built_on_local_str = NULL;

    // define the local variable for free_style_build->change_set
    empty_change_log_set_t *change_set_local_nonprim = NULL;

    // free_style_build->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // free_style_build->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "number");
    if (cJSON_IsNull(number)) {
        number = NULL;
    }
    if (number) { 
    if(!cJSON_IsNumber(number))
    {
    goto end; //Numeric
    }
    number_local_var = malloc(sizeof(int));
    if(!number_local_var)
    {
        goto end;
    }
    *number_local_var = number->valuedouble;
    }

    // free_style_build->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // free_style_build->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "actions");
    if (cJSON_IsNull(actions)) {
        actions = NULL;
    }
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
    if (cJSON_IsNull(building)) {
        building = NULL;
    }
    if (building) { 
    if(!cJSON_IsBool(building))
    {
    goto end; //Bool
    }
    building_local_var = malloc(sizeof(int));
    if(!building_local_var)
    {
        goto end;
    }
    *building_local_var = building->valueint;
    }

    // free_style_build->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // free_style_build->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // free_style_build->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    duration_local_var = malloc(sizeof(int));
    if(!duration_local_var)
    {
        goto end;
    }
    *duration_local_var = duration->valuedouble;
    }

    // free_style_build->estimated_duration
    cJSON *estimated_duration = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "estimatedDuration");
    if (cJSON_IsNull(estimated_duration)) {
        estimated_duration = NULL;
    }
    if (estimated_duration) { 
    if(!cJSON_IsNumber(estimated_duration))
    {
    goto end; //Numeric
    }
    estimated_duration_local_var = malloc(sizeof(int));
    if(!estimated_duration_local_var)
    {
        goto end;
    }
    *estimated_duration_local_var = estimated_duration->valuedouble;
    }

    // free_style_build->executor
    cJSON *executor = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "executor");
    if (cJSON_IsNull(executor)) {
        executor = NULL;
    }
    if (executor) { 
    if(!cJSON_IsString(executor) && !cJSON_IsNull(executor))
    {
    goto end; //String
    }
    }

    // free_style_build->full_display_name
    cJSON *full_display_name = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "fullDisplayName");
    if (cJSON_IsNull(full_display_name)) {
        full_display_name = NULL;
    }
    if (full_display_name) { 
    if(!cJSON_IsString(full_display_name) && !cJSON_IsNull(full_display_name))
    {
    goto end; //String
    }
    }

    // free_style_build->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // free_style_build->keep_log
    cJSON *keep_log = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "keepLog");
    if (cJSON_IsNull(keep_log)) {
        keep_log = NULL;
    }
    if (keep_log) { 
    if(!cJSON_IsBool(keep_log))
    {
    goto end; //Bool
    }
    keep_log_local_var = malloc(sizeof(int));
    if(!keep_log_local_var)
    {
        goto end;
    }
    *keep_log_local_var = keep_log->valueint;
    }

    // free_style_build->queue_id
    cJSON *queue_id = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "queueId");
    if (cJSON_IsNull(queue_id)) {
        queue_id = NULL;
    }
    if (queue_id) { 
    if(!cJSON_IsNumber(queue_id))
    {
    goto end; //Numeric
    }
    queue_id_local_var = malloc(sizeof(int));
    if(!queue_id_local_var)
    {
        goto end;
    }
    *queue_id_local_var = queue_id->valuedouble;
    }

    // free_style_build->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "result");
    if (cJSON_IsNull(result)) {
        result = NULL;
    }
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // free_style_build->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "timestamp");
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

    // free_style_build->built_on
    cJSON *built_on = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "builtOn");
    if (cJSON_IsNull(built_on)) {
        built_on = NULL;
    }
    if (built_on) { 
    if(!cJSON_IsString(built_on) && !cJSON_IsNull(built_on))
    {
    goto end; //String
    }
    }

    // free_style_build->change_set
    cJSON *change_set = cJSON_GetObjectItemCaseSensitive(free_style_buildJSON, "changeSet");
    if (cJSON_IsNull(change_set)) {
        change_set = NULL;
    }
    if (change_set) { 
    change_set_local_nonprim = empty_change_log_set_parseFromJSON(change_set); //nonprimitive
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (url && !cJSON_IsNull(url)) url_local_str = strdup(url->valuestring);
    if (description && !cJSON_IsNull(description)) description_local_str = strdup(description->valuestring);
    if (display_name && !cJSON_IsNull(display_name)) display_name_local_str = strdup(display_name->valuestring);
    if (executor && !cJSON_IsNull(executor)) executor_local_str = strdup(executor->valuestring);
    if (full_display_name && !cJSON_IsNull(full_display_name)) full_display_name_local_str = strdup(full_display_name->valuestring);
    if (id && !cJSON_IsNull(id)) id_local_str = strdup(id->valuestring);
    if (result && !cJSON_IsNull(result)) result_local_str = strdup(result->valuestring);
    if (built_on && !cJSON_IsNull(built_on)) built_on_local_str = strdup(built_on->valuestring);

    free_style_build_local_var = free_style_build_create_internal (
        _class_local_str,
        number_local_var,
        url_local_str,
        actions ? actionsList : NULL,
        building_local_var,
        description_local_str,
        display_name_local_str,
        duration_local_var,
        estimated_duration_local_var,
        executor_local_str,
        full_display_name_local_str,
        id_local_str,
        keep_log_local_var,
        queue_id_local_var,
        result_local_str,
        timestamp_local_var,
        built_on_local_str,
        change_set ? change_set_local_nonprim : NULL
        );

    if (!free_style_build_local_var) {
        goto end;
    }

    return free_style_build_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (number_local_var) {
        free(number_local_var);
        number_local_var = NULL;
    }
    if (url_local_str) {
        free(url_local_str);
        url_local_str = NULL;
    }
    if (actionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, actionsList) {
            cause_action_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(actionsList);
        actionsList = NULL;
    }
    if (building_local_var) {
        free(building_local_var);
        building_local_var = NULL;
    }
    if (description_local_str) {
        free(description_local_str);
        description_local_str = NULL;
    }
    if (display_name_local_str) {
        free(display_name_local_str);
        display_name_local_str = NULL;
    }
    if (duration_local_var) {
        free(duration_local_var);
        duration_local_var = NULL;
    }
    if (estimated_duration_local_var) {
        free(estimated_duration_local_var);
        estimated_duration_local_var = NULL;
    }
    if (executor_local_str) {
        free(executor_local_str);
        executor_local_str = NULL;
    }
    if (full_display_name_local_str) {
        free(full_display_name_local_str);
        full_display_name_local_str = NULL;
    }
    if (id_local_str) {
        free(id_local_str);
        id_local_str = NULL;
    }
    if (keep_log_local_var) {
        free(keep_log_local_var);
        keep_log_local_var = NULL;
    }
    if (queue_id_local_var) {
        free(queue_id_local_var);
        queue_id_local_var = NULL;
    }
    if (result_local_str) {
        free(result_local_str);
        result_local_str = NULL;
    }
    if (timestamp_local_var) {
        free(timestamp_local_var);
        timestamp_local_var = NULL;
    }
    if (built_on_local_str) {
        free(built_on_local_str);
        built_on_local_str = NULL;
    }
    if (change_set_local_nonprim) {
        empty_change_log_set_free(change_set_local_nonprim);
        change_set_local_nonprim = NULL;
    }
    return NULL;

}
