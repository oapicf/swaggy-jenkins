#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "queue_left_item.h"



queue_left_item_t *queue_left_item_create(
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
    int cancelled,
    free_style_build_t *executable
    ) {
    queue_left_item_t *queue_left_item_local_var = malloc(sizeof(queue_left_item_t));
    if (!queue_left_item_local_var) {
        return NULL;
    }
    queue_left_item_local_var->_class = _class;
    queue_left_item_local_var->actions = actions;
    queue_left_item_local_var->blocked = blocked;
    queue_left_item_local_var->buildable = buildable;
    queue_left_item_local_var->id = id;
    queue_left_item_local_var->in_queue_since = in_queue_since;
    queue_left_item_local_var->params = params;
    queue_left_item_local_var->stuck = stuck;
    queue_left_item_local_var->task = task;
    queue_left_item_local_var->url = url;
    queue_left_item_local_var->why = why;
    queue_left_item_local_var->cancelled = cancelled;
    queue_left_item_local_var->executable = executable;

    return queue_left_item_local_var;
}


void queue_left_item_free(queue_left_item_t *queue_left_item) {
    if(NULL == queue_left_item){
        return ;
    }
    listEntry_t *listEntry;
    if (queue_left_item->_class) {
        free(queue_left_item->_class);
        queue_left_item->_class = NULL;
    }
    if (queue_left_item->actions) {
        list_ForEach(listEntry, queue_left_item->actions) {
            cause_action_free(listEntry->data);
        }
        list_freeList(queue_left_item->actions);
        queue_left_item->actions = NULL;
    }
    if (queue_left_item->params) {
        free(queue_left_item->params);
        queue_left_item->params = NULL;
    }
    if (queue_left_item->task) {
        free_style_project_free(queue_left_item->task);
        queue_left_item->task = NULL;
    }
    if (queue_left_item->url) {
        free(queue_left_item->url);
        queue_left_item->url = NULL;
    }
    if (queue_left_item->why) {
        free(queue_left_item->why);
        queue_left_item->why = NULL;
    }
    if (queue_left_item->executable) {
        free_style_build_free(queue_left_item->executable);
        queue_left_item->executable = NULL;
    }
    free(queue_left_item);
}

cJSON *queue_left_item_convertToJSON(queue_left_item_t *queue_left_item) {
    cJSON *item = cJSON_CreateObject();

    // queue_left_item->_class
    if(queue_left_item->_class) {
    if(cJSON_AddStringToObject(item, "_class", queue_left_item->_class) == NULL) {
    goto fail; //String
    }
    }


    // queue_left_item->actions
    if(queue_left_item->actions) {
    cJSON *actions = cJSON_AddArrayToObject(item, "actions");
    if(actions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *actionsListEntry;
    if (queue_left_item->actions) {
    list_ForEach(actionsListEntry, queue_left_item->actions) {
    cJSON *itemLocal = cause_action_convertToJSON(actionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(actions, itemLocal);
    }
    }
    }


    // queue_left_item->blocked
    if(queue_left_item->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", queue_left_item->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_left_item->buildable
    if(queue_left_item->buildable) {
    if(cJSON_AddBoolToObject(item, "buildable", queue_left_item->buildable) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_left_item->id
    if(queue_left_item->id) {
    if(cJSON_AddNumberToObject(item, "id", queue_left_item->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_left_item->in_queue_since
    if(queue_left_item->in_queue_since) {
    if(cJSON_AddNumberToObject(item, "inQueueSince", queue_left_item->in_queue_since) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_left_item->params
    if(queue_left_item->params) {
    if(cJSON_AddStringToObject(item, "params", queue_left_item->params) == NULL) {
    goto fail; //String
    }
    }


    // queue_left_item->stuck
    if(queue_left_item->stuck) {
    if(cJSON_AddBoolToObject(item, "stuck", queue_left_item->stuck) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_left_item->task
    if(queue_left_item->task) {
    cJSON *task_local_JSON = free_style_project_convertToJSON(queue_left_item->task);
    if(task_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "task", task_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // queue_left_item->url
    if(queue_left_item->url) {
    if(cJSON_AddStringToObject(item, "url", queue_left_item->url) == NULL) {
    goto fail; //String
    }
    }


    // queue_left_item->why
    if(queue_left_item->why) {
    if(cJSON_AddStringToObject(item, "why", queue_left_item->why) == NULL) {
    goto fail; //String
    }
    }


    // queue_left_item->cancelled
    if(queue_left_item->cancelled) {
    if(cJSON_AddBoolToObject(item, "cancelled", queue_left_item->cancelled) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_left_item->executable
    if(queue_left_item->executable) {
    cJSON *executable_local_JSON = free_style_build_convertToJSON(queue_left_item->executable);
    if(executable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "executable", executable_local_JSON);
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

queue_left_item_t *queue_left_item_parseFromJSON(cJSON *queue_left_itemJSON){

    queue_left_item_t *queue_left_item_local_var = NULL;

    // define the local list for queue_left_item->actions
    list_t *actionsList = NULL;

    // define the local variable for queue_left_item->task
    free_style_project_t *task_local_nonprim = NULL;

    // define the local variable for queue_left_item->executable
    free_style_build_t *executable_local_nonprim = NULL;

    // queue_left_item->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // queue_left_item->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "actions");
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

    // queue_left_item->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "blocked");
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // queue_left_item->buildable
    cJSON *buildable = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "buildable");
    if (buildable) { 
    if(!cJSON_IsBool(buildable))
    {
    goto end; //Bool
    }
    }

    // queue_left_item->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "id");
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // queue_left_item->in_queue_since
    cJSON *in_queue_since = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "inQueueSince");
    if (in_queue_since) { 
    if(!cJSON_IsNumber(in_queue_since))
    {
    goto end; //Numeric
    }
    }

    // queue_left_item->params
    cJSON *params = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "params");
    if (params) { 
    if(!cJSON_IsString(params))
    {
    goto end; //String
    }
    }

    // queue_left_item->stuck
    cJSON *stuck = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "stuck");
    if (stuck) { 
    if(!cJSON_IsBool(stuck))
    {
    goto end; //Bool
    }
    }

    // queue_left_item->task
    cJSON *task = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "task");
    if (task) { 
    task_local_nonprim = free_style_project_parseFromJSON(task); //nonprimitive
    }

    // queue_left_item->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "url");
    if (url) { 
    if(!cJSON_IsString(url))
    {
    goto end; //String
    }
    }

    // queue_left_item->why
    cJSON *why = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "why");
    if (why) { 
    if(!cJSON_IsString(why))
    {
    goto end; //String
    }
    }

    // queue_left_item->cancelled
    cJSON *cancelled = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "cancelled");
    if (cancelled) { 
    if(!cJSON_IsBool(cancelled))
    {
    goto end; //Bool
    }
    }

    // queue_left_item->executable
    cJSON *executable = cJSON_GetObjectItemCaseSensitive(queue_left_itemJSON, "executable");
    if (executable) { 
    executable_local_nonprim = free_style_build_parseFromJSON(executable); //nonprimitive
    }


    queue_left_item_local_var = queue_left_item_create (
        _class ? strdup(_class->valuestring) : NULL,
        actions ? actionsList : NULL,
        blocked ? blocked->valueint : 0,
        buildable ? buildable->valueint : 0,
        id ? id->valuedouble : 0,
        in_queue_since ? in_queue_since->valuedouble : 0,
        params ? strdup(params->valuestring) : NULL,
        stuck ? stuck->valueint : 0,
        task ? task_local_nonprim : NULL,
        url ? strdup(url->valuestring) : NULL,
        why ? strdup(why->valuestring) : NULL,
        cancelled ? cancelled->valueint : 0,
        executable ? executable_local_nonprim : NULL
        );

    return queue_left_item_local_var;
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
    if (executable_local_nonprim) {
        free_style_build_free(executable_local_nonprim);
        executable_local_nonprim = NULL;
    }
    return NULL;

}
