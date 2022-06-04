#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_project.h"



free_style_project_t *free_style_project_create(
    char *_class,
    char *name,
    char *url,
    char *color,
    list_t *actions,
    char *description,
    char *display_name,
    char *display_name_or_null,
    char *full_display_name,
    char *full_name,
    int buildable,
    list_t *builds,
    free_style_build_t *first_build,
    list_t *health_report,
    int in_queue,
    int keep_dependencies,
    free_style_build_t *last_build,
    free_style_build_t *last_completed_build,
    char *last_failed_build,
    free_style_build_t *last_stable_build,
    free_style_build_t *last_successful_build,
    char *last_unstable_build,
    char *last_unsuccessful_build,
    int next_build_number,
    char *queue_item,
    int concurrent_build,
    null_scm_t *scm
    ) {
    free_style_project_t *free_style_project_local_var = malloc(sizeof(free_style_project_t));
    if (!free_style_project_local_var) {
        return NULL;
    }
    free_style_project_local_var->_class = _class;
    free_style_project_local_var->name = name;
    free_style_project_local_var->url = url;
    free_style_project_local_var->color = color;
    free_style_project_local_var->actions = actions;
    free_style_project_local_var->description = description;
    free_style_project_local_var->display_name = display_name;
    free_style_project_local_var->display_name_or_null = display_name_or_null;
    free_style_project_local_var->full_display_name = full_display_name;
    free_style_project_local_var->full_name = full_name;
    free_style_project_local_var->buildable = buildable;
    free_style_project_local_var->builds = builds;
    free_style_project_local_var->first_build = first_build;
    free_style_project_local_var->health_report = health_report;
    free_style_project_local_var->in_queue = in_queue;
    free_style_project_local_var->keep_dependencies = keep_dependencies;
    free_style_project_local_var->last_build = last_build;
    free_style_project_local_var->last_completed_build = last_completed_build;
    free_style_project_local_var->last_failed_build = last_failed_build;
    free_style_project_local_var->last_stable_build = last_stable_build;
    free_style_project_local_var->last_successful_build = last_successful_build;
    free_style_project_local_var->last_unstable_build = last_unstable_build;
    free_style_project_local_var->last_unsuccessful_build = last_unsuccessful_build;
    free_style_project_local_var->next_build_number = next_build_number;
    free_style_project_local_var->queue_item = queue_item;
    free_style_project_local_var->concurrent_build = concurrent_build;
    free_style_project_local_var->scm = scm;

    return free_style_project_local_var;
}


void free_style_project_free(free_style_project_t *free_style_project) {
    if(NULL == free_style_project){
        return ;
    }
    listEntry_t *listEntry;
    if (free_style_project->_class) {
        free(free_style_project->_class);
        free_style_project->_class = NULL;
    }
    if (free_style_project->name) {
        free(free_style_project->name);
        free_style_project->name = NULL;
    }
    if (free_style_project->url) {
        free(free_style_project->url);
        free_style_project->url = NULL;
    }
    if (free_style_project->color) {
        free(free_style_project->color);
        free_style_project->color = NULL;
    }
    if (free_style_project->actions) {
        list_ForEach(listEntry, free_style_project->actions) {
            free_style_projectactions_free(listEntry->data);
        }
        list_freeList(free_style_project->actions);
        free_style_project->actions = NULL;
    }
    if (free_style_project->description) {
        free(free_style_project->description);
        free_style_project->description = NULL;
    }
    if (free_style_project->display_name) {
        free(free_style_project->display_name);
        free_style_project->display_name = NULL;
    }
    if (free_style_project->display_name_or_null) {
        free(free_style_project->display_name_or_null);
        free_style_project->display_name_or_null = NULL;
    }
    if (free_style_project->full_display_name) {
        free(free_style_project->full_display_name);
        free_style_project->full_display_name = NULL;
    }
    if (free_style_project->full_name) {
        free(free_style_project->full_name);
        free_style_project->full_name = NULL;
    }
    if (free_style_project->builds) {
        list_ForEach(listEntry, free_style_project->builds) {
            free_style_build_free(listEntry->data);
        }
        list_freeList(free_style_project->builds);
        free_style_project->builds = NULL;
    }
    if (free_style_project->first_build) {
        free_style_build_free(free_style_project->first_build);
        free_style_project->first_build = NULL;
    }
    if (free_style_project->health_report) {
        list_ForEach(listEntry, free_style_project->health_report) {
            free_style_projecthealth_report_free(listEntry->data);
        }
        list_freeList(free_style_project->health_report);
        free_style_project->health_report = NULL;
    }
    if (free_style_project->last_build) {
        free_style_build_free(free_style_project->last_build);
        free_style_project->last_build = NULL;
    }
    if (free_style_project->last_completed_build) {
        free_style_build_free(free_style_project->last_completed_build);
        free_style_project->last_completed_build = NULL;
    }
    if (free_style_project->last_failed_build) {
        free(free_style_project->last_failed_build);
        free_style_project->last_failed_build = NULL;
    }
    if (free_style_project->last_stable_build) {
        free_style_build_free(free_style_project->last_stable_build);
        free_style_project->last_stable_build = NULL;
    }
    if (free_style_project->last_successful_build) {
        free_style_build_free(free_style_project->last_successful_build);
        free_style_project->last_successful_build = NULL;
    }
    if (free_style_project->last_unstable_build) {
        free(free_style_project->last_unstable_build);
        free_style_project->last_unstable_build = NULL;
    }
    if (free_style_project->last_unsuccessful_build) {
        free(free_style_project->last_unsuccessful_build);
        free_style_project->last_unsuccessful_build = NULL;
    }
    if (free_style_project->queue_item) {
        free(free_style_project->queue_item);
        free_style_project->queue_item = NULL;
    }
    if (free_style_project->scm) {
        null_scm_free(free_style_project->scm);
        free_style_project->scm = NULL;
    }
    free(free_style_project);
}

cJSON *free_style_project_convertToJSON(free_style_project_t *free_style_project) {
    cJSON *item = cJSON_CreateObject();

    // free_style_project->_class
    if(free_style_project->_class) {
    if(cJSON_AddStringToObject(item, "_class", free_style_project->_class) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->name
    if(free_style_project->name) {
    if(cJSON_AddStringToObject(item, "name", free_style_project->name) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->url
    if(free_style_project->url) {
    if(cJSON_AddStringToObject(item, "url", free_style_project->url) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->color
    if(free_style_project->color) {
    if(cJSON_AddStringToObject(item, "color", free_style_project->color) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->actions
    if(free_style_project->actions) {
    cJSON *actions = cJSON_AddArrayToObject(item, "actions");
    if(actions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *actionsListEntry;
    if (free_style_project->actions) {
    list_ForEach(actionsListEntry, free_style_project->actions) {
    cJSON *itemLocal = free_style_projectactions_convertToJSON(actionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(actions, itemLocal);
    }
    }
    }


    // free_style_project->description
    if(free_style_project->description) {
    if(cJSON_AddStringToObject(item, "description", free_style_project->description) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->display_name
    if(free_style_project->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", free_style_project->display_name) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->display_name_or_null
    if(free_style_project->display_name_or_null) {
    if(cJSON_AddStringToObject(item, "displayNameOrNull", free_style_project->display_name_or_null) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->full_display_name
    if(free_style_project->full_display_name) {
    if(cJSON_AddStringToObject(item, "fullDisplayName", free_style_project->full_display_name) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->full_name
    if(free_style_project->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", free_style_project->full_name) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->buildable
    if(free_style_project->buildable) {
    if(cJSON_AddBoolToObject(item, "buildable", free_style_project->buildable) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_project->builds
    if(free_style_project->builds) {
    cJSON *builds = cJSON_AddArrayToObject(item, "builds");
    if(builds == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *buildsListEntry;
    if (free_style_project->builds) {
    list_ForEach(buildsListEntry, free_style_project->builds) {
    cJSON *itemLocal = free_style_build_convertToJSON(buildsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(builds, itemLocal);
    }
    }
    }


    // free_style_project->first_build
    if(free_style_project->first_build) {
    cJSON *first_build_local_JSON = free_style_build_convertToJSON(free_style_project->first_build);
    if(first_build_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "firstBuild", first_build_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // free_style_project->health_report
    if(free_style_project->health_report) {
    cJSON *health_report = cJSON_AddArrayToObject(item, "healthReport");
    if(health_report == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *health_reportListEntry;
    if (free_style_project->health_report) {
    list_ForEach(health_reportListEntry, free_style_project->health_report) {
    cJSON *itemLocal = free_style_projecthealth_report_convertToJSON(health_reportListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(health_report, itemLocal);
    }
    }
    }


    // free_style_project->in_queue
    if(free_style_project->in_queue) {
    if(cJSON_AddBoolToObject(item, "inQueue", free_style_project->in_queue) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_project->keep_dependencies
    if(free_style_project->keep_dependencies) {
    if(cJSON_AddBoolToObject(item, "keepDependencies", free_style_project->keep_dependencies) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_project->last_build
    if(free_style_project->last_build) {
    cJSON *last_build_local_JSON = free_style_build_convertToJSON(free_style_project->last_build);
    if(last_build_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "lastBuild", last_build_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // free_style_project->last_completed_build
    if(free_style_project->last_completed_build) {
    cJSON *last_completed_build_local_JSON = free_style_build_convertToJSON(free_style_project->last_completed_build);
    if(last_completed_build_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "lastCompletedBuild", last_completed_build_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // free_style_project->last_failed_build
    if(free_style_project->last_failed_build) {
    if(cJSON_AddStringToObject(item, "lastFailedBuild", free_style_project->last_failed_build) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->last_stable_build
    if(free_style_project->last_stable_build) {
    cJSON *last_stable_build_local_JSON = free_style_build_convertToJSON(free_style_project->last_stable_build);
    if(last_stable_build_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "lastStableBuild", last_stable_build_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // free_style_project->last_successful_build
    if(free_style_project->last_successful_build) {
    cJSON *last_successful_build_local_JSON = free_style_build_convertToJSON(free_style_project->last_successful_build);
    if(last_successful_build_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "lastSuccessfulBuild", last_successful_build_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // free_style_project->last_unstable_build
    if(free_style_project->last_unstable_build) {
    if(cJSON_AddStringToObject(item, "lastUnstableBuild", free_style_project->last_unstable_build) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->last_unsuccessful_build
    if(free_style_project->last_unsuccessful_build) {
    if(cJSON_AddStringToObject(item, "lastUnsuccessfulBuild", free_style_project->last_unsuccessful_build) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->next_build_number
    if(free_style_project->next_build_number) {
    if(cJSON_AddNumberToObject(item, "nextBuildNumber", free_style_project->next_build_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_project->queue_item
    if(free_style_project->queue_item) {
    if(cJSON_AddStringToObject(item, "queueItem", free_style_project->queue_item) == NULL) {
    goto fail; //String
    }
    }


    // free_style_project->concurrent_build
    if(free_style_project->concurrent_build) {
    if(cJSON_AddBoolToObject(item, "concurrentBuild", free_style_project->concurrent_build) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_project->scm
    if(free_style_project->scm) {
    cJSON *scm_local_JSON = null_scm_convertToJSON(free_style_project->scm);
    if(scm_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scm", scm_local_JSON);
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

free_style_project_t *free_style_project_parseFromJSON(cJSON *free_style_projectJSON){

    free_style_project_t *free_style_project_local_var = NULL;

    // define the local list for free_style_project->actions
    list_t *actionsList = NULL;

    // define the local list for free_style_project->builds
    list_t *buildsList = NULL;

    // define the local variable for free_style_project->first_build
    free_style_build_t *first_build_local_nonprim = NULL;

    // define the local list for free_style_project->health_report
    list_t *health_reportList = NULL;

    // define the local variable for free_style_project->last_build
    free_style_build_t *last_build_local_nonprim = NULL;

    // define the local variable for free_style_project->last_completed_build
    free_style_build_t *last_completed_build_local_nonprim = NULL;

    // define the local variable for free_style_project->last_stable_build
    free_style_build_t *last_stable_build_local_nonprim = NULL;

    // define the local variable for free_style_project->last_successful_build
    free_style_build_t *last_successful_build_local_nonprim = NULL;

    // define the local variable for free_style_project->scm
    null_scm_t *scm_local_nonprim = NULL;

    // free_style_project->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // free_style_project->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // free_style_project->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "url");
    if (url) { 
    if(!cJSON_IsString(url))
    {
    goto end; //String
    }
    }

    // free_style_project->color
    cJSON *color = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "color");
    if (color) { 
    if(!cJSON_IsString(color))
    {
    goto end; //String
    }
    }

    // free_style_project->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "actions");
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
        free_style_projectactions_t *actionsItem = free_style_projectactions_parseFromJSON(actions_local_nonprimitive);

        list_addElement(actionsList, actionsItem);
    }
    }

    // free_style_project->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "description");
    if (description) { 
    if(!cJSON_IsString(description))
    {
    goto end; //String
    }
    }

    // free_style_project->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name))
    {
    goto end; //String
    }
    }

    // free_style_project->display_name_or_null
    cJSON *display_name_or_null = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "displayNameOrNull");
    if (display_name_or_null) { 
    if(!cJSON_IsString(display_name_or_null))
    {
    goto end; //String
    }
    }

    // free_style_project->full_display_name
    cJSON *full_display_name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "fullDisplayName");
    if (full_display_name) { 
    if(!cJSON_IsString(full_display_name))
    {
    goto end; //String
    }
    }

    // free_style_project->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "fullName");
    if (full_name) { 
    if(!cJSON_IsString(full_name))
    {
    goto end; //String
    }
    }

    // free_style_project->buildable
    cJSON *buildable = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "buildable");
    if (buildable) { 
    if(!cJSON_IsBool(buildable))
    {
    goto end; //Bool
    }
    }

    // free_style_project->builds
    cJSON *builds = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "builds");
    if (builds) { 
    cJSON *builds_local_nonprimitive = NULL;
    if(!cJSON_IsArray(builds)){
        goto end; //nonprimitive container
    }

    buildsList = list_createList();

    cJSON_ArrayForEach(builds_local_nonprimitive,builds )
    {
        if(!cJSON_IsObject(builds_local_nonprimitive)){
            goto end;
        }
        free_style_build_t *buildsItem = free_style_build_parseFromJSON(builds_local_nonprimitive);

        list_addElement(buildsList, buildsItem);
    }
    }

    // free_style_project->first_build
    cJSON *first_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "firstBuild");
    if (first_build) { 
    first_build_local_nonprim = free_style_build_parseFromJSON(first_build); //nonprimitive
    }

    // free_style_project->health_report
    cJSON *health_report = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "healthReport");
    if (health_report) { 
    cJSON *health_report_local_nonprimitive = NULL;
    if(!cJSON_IsArray(health_report)){
        goto end; //nonprimitive container
    }

    health_reportList = list_createList();

    cJSON_ArrayForEach(health_report_local_nonprimitive,health_report )
    {
        if(!cJSON_IsObject(health_report_local_nonprimitive)){
            goto end;
        }
        free_style_projecthealth_report_t *health_reportItem = free_style_projecthealth_report_parseFromJSON(health_report_local_nonprimitive);

        list_addElement(health_reportList, health_reportItem);
    }
    }

    // free_style_project->in_queue
    cJSON *in_queue = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "inQueue");
    if (in_queue) { 
    if(!cJSON_IsBool(in_queue))
    {
    goto end; //Bool
    }
    }

    // free_style_project->keep_dependencies
    cJSON *keep_dependencies = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "keepDependencies");
    if (keep_dependencies) { 
    if(!cJSON_IsBool(keep_dependencies))
    {
    goto end; //Bool
    }
    }

    // free_style_project->last_build
    cJSON *last_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastBuild");
    if (last_build) { 
    last_build_local_nonprim = free_style_build_parseFromJSON(last_build); //nonprimitive
    }

    // free_style_project->last_completed_build
    cJSON *last_completed_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastCompletedBuild");
    if (last_completed_build) { 
    last_completed_build_local_nonprim = free_style_build_parseFromJSON(last_completed_build); //nonprimitive
    }

    // free_style_project->last_failed_build
    cJSON *last_failed_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastFailedBuild");
    if (last_failed_build) { 
    if(!cJSON_IsString(last_failed_build))
    {
    goto end; //String
    }
    }

    // free_style_project->last_stable_build
    cJSON *last_stable_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastStableBuild");
    if (last_stable_build) { 
    last_stable_build_local_nonprim = free_style_build_parseFromJSON(last_stable_build); //nonprimitive
    }

    // free_style_project->last_successful_build
    cJSON *last_successful_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastSuccessfulBuild");
    if (last_successful_build) { 
    last_successful_build_local_nonprim = free_style_build_parseFromJSON(last_successful_build); //nonprimitive
    }

    // free_style_project->last_unstable_build
    cJSON *last_unstable_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastUnstableBuild");
    if (last_unstable_build) { 
    if(!cJSON_IsString(last_unstable_build))
    {
    goto end; //String
    }
    }

    // free_style_project->last_unsuccessful_build
    cJSON *last_unsuccessful_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastUnsuccessfulBuild");
    if (last_unsuccessful_build) { 
    if(!cJSON_IsString(last_unsuccessful_build))
    {
    goto end; //String
    }
    }

    // free_style_project->next_build_number
    cJSON *next_build_number = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "nextBuildNumber");
    if (next_build_number) { 
    if(!cJSON_IsNumber(next_build_number))
    {
    goto end; //Numeric
    }
    }

    // free_style_project->queue_item
    cJSON *queue_item = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "queueItem");
    if (queue_item) { 
    if(!cJSON_IsString(queue_item))
    {
    goto end; //String
    }
    }

    // free_style_project->concurrent_build
    cJSON *concurrent_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "concurrentBuild");
    if (concurrent_build) { 
    if(!cJSON_IsBool(concurrent_build))
    {
    goto end; //Bool
    }
    }

    // free_style_project->scm
    cJSON *scm = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "scm");
    if (scm) { 
    scm_local_nonprim = null_scm_parseFromJSON(scm); //nonprimitive
    }


    free_style_project_local_var = free_style_project_create (
        _class ? strdup(_class->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        url ? strdup(url->valuestring) : NULL,
        color ? strdup(color->valuestring) : NULL,
        actions ? actionsList : NULL,
        description ? strdup(description->valuestring) : NULL,
        display_name ? strdup(display_name->valuestring) : NULL,
        display_name_or_null ? strdup(display_name_or_null->valuestring) : NULL,
        full_display_name ? strdup(full_display_name->valuestring) : NULL,
        full_name ? strdup(full_name->valuestring) : NULL,
        buildable ? buildable->valueint : 0,
        builds ? buildsList : NULL,
        first_build ? first_build_local_nonprim : NULL,
        health_report ? health_reportList : NULL,
        in_queue ? in_queue->valueint : 0,
        keep_dependencies ? keep_dependencies->valueint : 0,
        last_build ? last_build_local_nonprim : NULL,
        last_completed_build ? last_completed_build_local_nonprim : NULL,
        last_failed_build ? strdup(last_failed_build->valuestring) : NULL,
        last_stable_build ? last_stable_build_local_nonprim : NULL,
        last_successful_build ? last_successful_build_local_nonprim : NULL,
        last_unstable_build ? strdup(last_unstable_build->valuestring) : NULL,
        last_unsuccessful_build ? strdup(last_unsuccessful_build->valuestring) : NULL,
        next_build_number ? next_build_number->valuedouble : 0,
        queue_item ? strdup(queue_item->valuestring) : NULL,
        concurrent_build ? concurrent_build->valueint : 0,
        scm ? scm_local_nonprim : NULL
        );

    return free_style_project_local_var;
end:
    if (actionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, actionsList) {
            free_style_projectactions_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(actionsList);
        actionsList = NULL;
    }
    if (buildsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, buildsList) {
            free_style_build_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(buildsList);
        buildsList = NULL;
    }
    if (first_build_local_nonprim) {
        free_style_build_free(first_build_local_nonprim);
        first_build_local_nonprim = NULL;
    }
    if (health_reportList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, health_reportList) {
            free_style_projecthealth_report_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(health_reportList);
        health_reportList = NULL;
    }
    if (last_build_local_nonprim) {
        free_style_build_free(last_build_local_nonprim);
        last_build_local_nonprim = NULL;
    }
    if (last_completed_build_local_nonprim) {
        free_style_build_free(last_completed_build_local_nonprim);
        last_completed_build_local_nonprim = NULL;
    }
    if (last_stable_build_local_nonprim) {
        free_style_build_free(last_stable_build_local_nonprim);
        last_stable_build_local_nonprim = NULL;
    }
    if (last_successful_build_local_nonprim) {
        free_style_build_free(last_successful_build_local_nonprim);
        last_successful_build_local_nonprim = NULL;
    }
    if (scm_local_nonprim) {
        null_scm_free(scm_local_nonprim);
        scm_local_nonprim = NULL;
    }
    return NULL;

}
