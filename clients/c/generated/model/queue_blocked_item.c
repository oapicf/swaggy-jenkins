#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "queue_blocked_item.h"



static queue_blocked_item_t *queue_blocked_item_create_internal(
    char *_class,
    list_t *actions,
    int blocked,
    int buildable,
    int id,
    int in_queue_since,
    char *params,
    int stuck,
    free_style_project_t *task,
    char *url,
    char *why,
    int buildable_start_milliseconds
    ) {
    queue_blocked_item_t *queue_blocked_item_local_var = malloc(sizeof(queue_blocked_item_t));
    if (!queue_blocked_item_local_var) {
        return NULL;
    }
    queue_blocked_item_local_var->_class = _class;
    queue_blocked_item_local_var->actions = actions;
    queue_blocked_item_local_var->blocked = blocked;
    queue_blocked_item_local_var->buildable = buildable;
    queue_blocked_item_local_var->id = id;
    queue_blocked_item_local_var->in_queue_since = in_queue_since;
    queue_blocked_item_local_var->params = params;
    queue_blocked_item_local_var->stuck = stuck;
    queue_blocked_item_local_var->task = task;
    queue_blocked_item_local_var->url = url;
    queue_blocked_item_local_var->why = why;
    queue_blocked_item_local_var->buildable_start_milliseconds = buildable_start_milliseconds;

    queue_blocked_item_local_var->_library_owned = 1;
    return queue_blocked_item_local_var;
}

__attribute__((deprecated)) queue_blocked_item_t *queue_blocked_item_create(
    char *_class,
    list_t *actions,
    int blocked,
    int buildable,
    int id,
    int in_queue_since,
    char *params,
    int stuck,
    free_style_project_t *task,
    char *url,
    char *why,
    int buildable_start_milliseconds
    ) {
    return queue_blocked_item_create_internal (
        _class,
        actions,
        blocked,
        buildable,
        id,
        in_queue_since,
        params,
        stuck,
        task,
        url,
        why,
        buildable_start_milliseconds
        );
}

void queue_blocked_item_free(queue_blocked_item_t *queue_blocked_item) {
    if(NULL == queue_blocked_item){
        return ;
    }
    if(queue_blocked_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "queue_blocked_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (queue_blocked_item->_class) {
        free(queue_blocked_item->_class);
        queue_blocked_item->_class = NULL;
    }
    if (queue_blocked_item->actions) {
        list_ForEach(listEntry, queue_blocked_item->actions) {
            cause_action_free(listEntry->data);
        }
        list_freeList(queue_blocked_item->actions);
        queue_blocked_item->actions = NULL;
    }
    if (queue_blocked_item->params) {
        free(queue_blocked_item->params);
        queue_blocked_item->params = NULL;
    }
    if (queue_blocked_item->task) {
        free_style_project_free(queue_blocked_item->task);
        queue_blocked_item->task = NULL;
    }
    if (queue_blocked_item->url) {
        free(queue_blocked_item->url);
        queue_blocked_item->url = NULL;
    }
    if (queue_blocked_item->why) {
        free(queue_blocked_item->why);
        queue_blocked_item->why = NULL;
    }
    free(queue_blocked_item);
}

cJSON *queue_blocked_item_convertToJSON(queue_blocked_item_t *queue_blocked_item) {
    cJSON *item = cJSON_CreateObject();

    // queue_blocked_item->_class
    if(queue_blocked_item->_class) {
    if(cJSON_AddStringToObject(item, "_class", queue_blocked_item->_class) == NULL) {
    goto fail; //String
    }
    }


    // queue_blocked_item->actions
    if(queue_blocked_item->actions) {
    cJSON *actions = cJSON_AddArrayToObject(item, "actions");
    if(actions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *actionsListEntry;
    if (queue_blocked_item->actions) {
    list_ForEach(actionsListEntry, queue_blocked_item->actions) {
    cJSON *itemLocal = cause_action_convertToJSON(actionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(actions, itemLocal);
    }
    }
    }


    // queue_blocked_item->blocked
    if(queue_blocked_item->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", queue_blocked_item->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_blocked_item->buildable
    if(queue_blocked_item->buildable) {
    if(cJSON_AddBoolToObject(item, "buildable", queue_blocked_item->buildable) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_blocked_item->id
    if(queue_blocked_item->id) {
    if(cJSON_AddNumberToObject(item, "id", queue_blocked_item->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_blocked_item->in_queue_since
    if(queue_blocked_item->in_queue_since) {
    if(cJSON_AddNumberToObject(item, "inQueueSince", queue_blocked_item->in_queue_since) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_blocked_item->params
    if(queue_blocked_item->params) {
    if(cJSON_AddStringToObject(item, "params", queue_blocked_item->params) == NULL) {
    goto fail; //String
    }
    }


    // queue_blocked_item->stuck
    if(queue_blocked_item->stuck) {
    if(cJSON_AddBoolToObject(item, "stuck", queue_blocked_item->stuck) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_blocked_item->task
    if(queue_blocked_item->task) {
    cJSON *task_local_JSON = free_style_project_convertToJSON(queue_blocked_item->task);
    if(task_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "task", task_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // queue_blocked_item->url
    if(queue_blocked_item->url) {
    if(cJSON_AddStringToObject(item, "url", queue_blocked_item->url) == NULL) {
    goto fail; //String
    }
    }


    // queue_blocked_item->why
    if(queue_blocked_item->why) {
    if(cJSON_AddStringToObject(item, "why", queue_blocked_item->why) == NULL) {
    goto fail; //String
    }
    }


    // queue_blocked_item->buildable_start_milliseconds
    if(queue_blocked_item->buildable_start_milliseconds) {
    if(cJSON_AddNumberToObject(item, "buildableStartMilliseconds", queue_blocked_item->buildable_start_milliseconds) == NULL) {
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

queue_blocked_item_t *queue_blocked_item_parseFromJSON(cJSON *queue_blocked_itemJSON){

    queue_blocked_item_t *queue_blocked_item_local_var = NULL;

    // define the local list for queue_blocked_item->actions
    list_t *actionsList = NULL;

    // define the local variable for queue_blocked_item->task
    free_style_project_t *task_local_nonprim = NULL;

    // queue_blocked_item->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // queue_blocked_item->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "actions");
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

    // queue_blocked_item->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "blocked");
    if (cJSON_IsNull(blocked)) {
        blocked = NULL;
    }
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // queue_blocked_item->buildable
    cJSON *buildable = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "buildable");
    if (cJSON_IsNull(buildable)) {
        buildable = NULL;
    }
    if (buildable) { 
    if(!cJSON_IsBool(buildable))
    {
    goto end; //Bool
    }
    }

    // queue_blocked_item->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // queue_blocked_item->in_queue_since
    cJSON *in_queue_since = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "inQueueSince");
    if (cJSON_IsNull(in_queue_since)) {
        in_queue_since = NULL;
    }
    if (in_queue_since) { 
    if(!cJSON_IsNumber(in_queue_since))
    {
    goto end; //Numeric
    }
    }

    // queue_blocked_item->params
    cJSON *params = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "params");
    if (cJSON_IsNull(params)) {
        params = NULL;
    }
    if (params) { 
    if(!cJSON_IsString(params) && !cJSON_IsNull(params))
    {
    goto end; //String
    }
    }

    // queue_blocked_item->stuck
    cJSON *stuck = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "stuck");
    if (cJSON_IsNull(stuck)) {
        stuck = NULL;
    }
    if (stuck) { 
    if(!cJSON_IsBool(stuck))
    {
    goto end; //Bool
    }
    }

    // queue_blocked_item->task
    cJSON *task = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "task");
    if (cJSON_IsNull(task)) {
        task = NULL;
    }
    if (task) { 
    task_local_nonprim = free_style_project_parseFromJSON(task); //nonprimitive
    }

    // queue_blocked_item->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // queue_blocked_item->why
    cJSON *why = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "why");
    if (cJSON_IsNull(why)) {
        why = NULL;
    }
    if (why) { 
    if(!cJSON_IsString(why) && !cJSON_IsNull(why))
    {
    goto end; //String
    }
    }

    // queue_blocked_item->buildable_start_milliseconds
    cJSON *buildable_start_milliseconds = cJSON_GetObjectItemCaseSensitive(queue_blocked_itemJSON, "buildableStartMilliseconds");
    if (cJSON_IsNull(buildable_start_milliseconds)) {
        buildable_start_milliseconds = NULL;
    }
    if (buildable_start_milliseconds) { 
    if(!cJSON_IsNumber(buildable_start_milliseconds))
    {
    goto end; //Numeric
    }
    }


    queue_blocked_item_local_var = queue_blocked_item_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        actions ? actionsList : NULL,
        blocked ? blocked->valueint : 0,
        buildable ? buildable->valueint : 0,
        id ? id->valuedouble : 0,
        in_queue_since ? in_queue_since->valuedouble : 0,
        params && !cJSON_IsNull(params) ? strdup(params->valuestring) : NULL,
        stuck ? stuck->valueint : 0,
        task ? task_local_nonprim : NULL,
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL,
        why && !cJSON_IsNull(why) ? strdup(why->valuestring) : NULL,
        buildable_start_milliseconds ? buildable_start_milliseconds->valuedouble : 0
        );

    return queue_blocked_item_local_var;
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
    if (task_local_nonprim) {
        free_style_project_free(task_local_nonprim);
        task_local_nonprim = NULL;
    }
    return NULL;

}
