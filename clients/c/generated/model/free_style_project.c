#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_project.h"



static free_style_project_t *free_style_project_create_internal(
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
    int *buildable,
    list_t *builds,
    free_style_build_t *first_build,
    list_t *health_report,
    int *in_queue,
    int *keep_dependencies,
    free_style_build_t *last_build,
    free_style_build_t *last_completed_build,
    char *last_failed_build,
    free_style_build_t *last_stable_build,
    free_style_build_t *last_successful_build,
    char *last_unstable_build,
    char *last_unsuccessful_build,
    int *next_build_number,
    char *queue_item,
    int *concurrent_build,
    null_scm_t *scm
    ) {
    free_style_project_t *free_style_project_local_var = malloc(sizeof(free_style_project_t));
    if (!free_style_project_local_var) {
        return NULL;
    }
    memset(free_style_project_local_var, 0, sizeof(free_style_project_t));
    free_style_project_local_var->_library_owned = 1;
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

__attribute__((deprecated)) free_style_project_t *free_style_project_create(
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
    int *buildable,
    list_t *builds,
    free_style_build_t *first_build,
    list_t *health_report,
    int *in_queue,
    int *keep_dependencies,
    free_style_build_t *last_build,
    free_style_build_t *last_completed_build,
    char *last_failed_build,
    free_style_build_t *last_stable_build,
    free_style_build_t *last_successful_build,
    char *last_unstable_build,
    char *last_unsuccessful_build,
    int *next_build_number,
    char *queue_item,
    int *concurrent_build,
    null_scm_t *scm
    ) {
    int *buildable_copy = NULL;
    if (buildable) {
        buildable_copy = malloc(sizeof(int));
        if (buildable_copy) *buildable_copy = *buildable;
    }
    int *in_queue_copy = NULL;
    if (in_queue) {
        in_queue_copy = malloc(sizeof(int));
        if (in_queue_copy) *in_queue_copy = *in_queue;
    }
    int *keep_dependencies_copy = NULL;
    if (keep_dependencies) {
        keep_dependencies_copy = malloc(sizeof(int));
        if (keep_dependencies_copy) *keep_dependencies_copy = *keep_dependencies;
    }
    int *next_build_number_copy = NULL;
    if (next_build_number) {
        next_build_number_copy = malloc(sizeof(int));
        if (next_build_number_copy) *next_build_number_copy = *next_build_number;
    }
    int *concurrent_build_copy = NULL;
    if (concurrent_build) {
        concurrent_build_copy = malloc(sizeof(int));
        if (concurrent_build_copy) *concurrent_build_copy = *concurrent_build;
    }
    free_style_project_t *result = free_style_project_create_internal (
        _class,
        name,
        url,
        color,
        actions,
        description,
        display_name,
        display_name_or_null,
        full_display_name,
        full_name,
        buildable_copy,
        builds,
        first_build,
        health_report,
        in_queue_copy,
        keep_dependencies_copy,
        last_build,
        last_completed_build,
        last_failed_build,
        last_stable_build,
        last_successful_build,
        last_unstable_build,
        last_unsuccessful_build,
        next_build_number_copy,
        queue_item,
        concurrent_build_copy,
        scm
        );
    if (!result) {
        free(buildable_copy);
        free(in_queue_copy);
        free(keep_dependencies_copy);
        free(next_build_number_copy);
        free(concurrent_build_copy);
    }
    return result;
}

void free_style_project_free(free_style_project_t *free_style_project) {
    if(NULL == free_style_project){
        return ;
    }
    if(free_style_project->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "free_style_project_free");
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
    if (free_style_project->buildable) {
        free(free_style_project->buildable);
        free_style_project->buildable = NULL;
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
    if (free_style_project->in_queue) {
        free(free_style_project->in_queue);
        free_style_project->in_queue = NULL;
    }
    if (free_style_project->keep_dependencies) {
        free(free_style_project->keep_dependencies);
        free_style_project->keep_dependencies = NULL;
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
    if (free_style_project->next_build_number) {
        free(free_style_project->next_build_number);
        free_style_project->next_build_number = NULL;
    }
    if (free_style_project->queue_item) {
        free(free_style_project->queue_item);
        free_style_project->queue_item = NULL;
    }
    if (free_style_project->concurrent_build) {
        free(free_style_project->concurrent_build);
        free_style_project->concurrent_build = NULL;
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
    if(cJSON_AddBoolToObject(item, "buildable", *free_style_project->buildable) == NULL) {
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
    if(cJSON_AddBoolToObject(item, "inQueue", *free_style_project->in_queue) == NULL) {
    goto fail; //Bool
    }
    }


    // free_style_project->keep_dependencies
    if(free_style_project->keep_dependencies) {
    if(cJSON_AddBoolToObject(item, "keepDependencies", *free_style_project->keep_dependencies) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "nextBuildNumber", *free_style_project->next_build_number) == NULL) {
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
    if(cJSON_AddBoolToObject(item, "concurrentBuild", *free_style_project->concurrent_build) == NULL) {
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

    char *_class_local_str = NULL;

    char *name_local_str = NULL;

    char *url_local_str = NULL;

    char *color_local_str = NULL;

    // define the local list for free_style_project->actions
    list_t *actionsList = NULL;

    char *description_local_str = NULL;

    char *display_name_local_str = NULL;

    char *display_name_or_null_local_str = NULL;

    char *full_display_name_local_str = NULL;

    char *full_name_local_str = NULL;

    // define the local variable for free_style_project->buildable
    int *buildable_local_var = NULL;

    // define the local list for free_style_project->builds
    list_t *buildsList = NULL;

    // define the local variable for free_style_project->first_build
    free_style_build_t *first_build_local_nonprim = NULL;

    // define the local list for free_style_project->health_report
    list_t *health_reportList = NULL;

    // define the local variable for free_style_project->in_queue
    int *in_queue_local_var = NULL;

    // define the local variable for free_style_project->keep_dependencies
    int *keep_dependencies_local_var = NULL;

    // define the local variable for free_style_project->last_build
    free_style_build_t *last_build_local_nonprim = NULL;

    // define the local variable for free_style_project->last_completed_build
    free_style_build_t *last_completed_build_local_nonprim = NULL;

    char *last_failed_build_local_str = NULL;

    // define the local variable for free_style_project->last_stable_build
    free_style_build_t *last_stable_build_local_nonprim = NULL;

    // define the local variable for free_style_project->last_successful_build
    free_style_build_t *last_successful_build_local_nonprim = NULL;

    char *last_unstable_build_local_str = NULL;

    char *last_unsuccessful_build_local_str = NULL;

    // define the local variable for free_style_project->next_build_number
    int *next_build_number_local_var = NULL;

    char *queue_item_local_str = NULL;

    // define the local variable for free_style_project->concurrent_build
    int *concurrent_build_local_var = NULL;

    // define the local variable for free_style_project->scm
    null_scm_t *scm_local_nonprim = NULL;

    // free_style_project->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // free_style_project->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // free_style_project->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // free_style_project->color
    cJSON *color = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "color");
    if (cJSON_IsNull(color)) {
        color = NULL;
    }
    if (color) { 
    if(!cJSON_IsString(color) && !cJSON_IsNull(color))
    {
    goto end; //String
    }
    }

    // free_style_project->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "actions");
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
        free_style_projectactions_t *actionsItem = free_style_projectactions_parseFromJSON(actions_local_nonprimitive);

        list_addElement(actionsList, actionsItem);
    }
    }

    // free_style_project->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // free_style_project->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // free_style_project->display_name_or_null
    cJSON *display_name_or_null = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "displayNameOrNull");
    if (cJSON_IsNull(display_name_or_null)) {
        display_name_or_null = NULL;
    }
    if (display_name_or_null) { 
    if(!cJSON_IsString(display_name_or_null) && !cJSON_IsNull(display_name_or_null))
    {
    goto end; //String
    }
    }

    // free_style_project->full_display_name
    cJSON *full_display_name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "fullDisplayName");
    if (cJSON_IsNull(full_display_name)) {
        full_display_name = NULL;
    }
    if (full_display_name) { 
    if(!cJSON_IsString(full_display_name) && !cJSON_IsNull(full_display_name))
    {
    goto end; //String
    }
    }

    // free_style_project->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // free_style_project->buildable
    cJSON *buildable = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "buildable");
    if (cJSON_IsNull(buildable)) {
        buildable = NULL;
    }
    if (buildable) { 
    if(!cJSON_IsBool(buildable))
    {
    goto end; //Bool
    }
    buildable_local_var = malloc(sizeof(int));
    if(!buildable_local_var)
    {
        goto end;
    }
    *buildable_local_var = buildable->valueint;
    }

    // free_style_project->builds
    cJSON *builds = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "builds");
    if (cJSON_IsNull(builds)) {
        builds = NULL;
    }
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
    if (cJSON_IsNull(first_build)) {
        first_build = NULL;
    }
    if (first_build) { 
    first_build_local_nonprim = free_style_build_parseFromJSON(first_build); //nonprimitive
    }

    // free_style_project->health_report
    cJSON *health_report = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "healthReport");
    if (cJSON_IsNull(health_report)) {
        health_report = NULL;
    }
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
    if (cJSON_IsNull(in_queue)) {
        in_queue = NULL;
    }
    if (in_queue) { 
    if(!cJSON_IsBool(in_queue))
    {
    goto end; //Bool
    }
    in_queue_local_var = malloc(sizeof(int));
    if(!in_queue_local_var)
    {
        goto end;
    }
    *in_queue_local_var = in_queue->valueint;
    }

    // free_style_project->keep_dependencies
    cJSON *keep_dependencies = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "keepDependencies");
    if (cJSON_IsNull(keep_dependencies)) {
        keep_dependencies = NULL;
    }
    if (keep_dependencies) { 
    if(!cJSON_IsBool(keep_dependencies))
    {
    goto end; //Bool
    }
    keep_dependencies_local_var = malloc(sizeof(int));
    if(!keep_dependencies_local_var)
    {
        goto end;
    }
    *keep_dependencies_local_var = keep_dependencies->valueint;
    }

    // free_style_project->last_build
    cJSON *last_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastBuild");
    if (cJSON_IsNull(last_build)) {
        last_build = NULL;
    }
    if (last_build) { 
    last_build_local_nonprim = free_style_build_parseFromJSON(last_build); //nonprimitive
    }

    // free_style_project->last_completed_build
    cJSON *last_completed_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastCompletedBuild");
    if (cJSON_IsNull(last_completed_build)) {
        last_completed_build = NULL;
    }
    if (last_completed_build) { 
    last_completed_build_local_nonprim = free_style_build_parseFromJSON(last_completed_build); //nonprimitive
    }

    // free_style_project->last_failed_build
    cJSON *last_failed_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastFailedBuild");
    if (cJSON_IsNull(last_failed_build)) {
        last_failed_build = NULL;
    }
    if (last_failed_build) { 
    if(!cJSON_IsString(last_failed_build) && !cJSON_IsNull(last_failed_build))
    {
    goto end; //String
    }
    }

    // free_style_project->last_stable_build
    cJSON *last_stable_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastStableBuild");
    if (cJSON_IsNull(last_stable_build)) {
        last_stable_build = NULL;
    }
    if (last_stable_build) { 
    last_stable_build_local_nonprim = free_style_build_parseFromJSON(last_stable_build); //nonprimitive
    }

    // free_style_project->last_successful_build
    cJSON *last_successful_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastSuccessfulBuild");
    if (cJSON_IsNull(last_successful_build)) {
        last_successful_build = NULL;
    }
    if (last_successful_build) { 
    last_successful_build_local_nonprim = free_style_build_parseFromJSON(last_successful_build); //nonprimitive
    }

    // free_style_project->last_unstable_build
    cJSON *last_unstable_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastUnstableBuild");
    if (cJSON_IsNull(last_unstable_build)) {
        last_unstable_build = NULL;
    }
    if (last_unstable_build) { 
    if(!cJSON_IsString(last_unstable_build) && !cJSON_IsNull(last_unstable_build))
    {
    goto end; //String
    }
    }

    // free_style_project->last_unsuccessful_build
    cJSON *last_unsuccessful_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "lastUnsuccessfulBuild");
    if (cJSON_IsNull(last_unsuccessful_build)) {
        last_unsuccessful_build = NULL;
    }
    if (last_unsuccessful_build) { 
    if(!cJSON_IsString(last_unsuccessful_build) && !cJSON_IsNull(last_unsuccessful_build))
    {
    goto end; //String
    }
    }

    // free_style_project->next_build_number
    cJSON *next_build_number = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "nextBuildNumber");
    if (cJSON_IsNull(next_build_number)) {
        next_build_number = NULL;
    }
    if (next_build_number) { 
    if(!cJSON_IsNumber(next_build_number))
    {
    goto end; //Numeric
    }
    next_build_number_local_var = malloc(sizeof(int));
    if(!next_build_number_local_var)
    {
        goto end;
    }
    *next_build_number_local_var = next_build_number->valuedouble;
    }

    // free_style_project->queue_item
    cJSON *queue_item = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "queueItem");
    if (cJSON_IsNull(queue_item)) {
        queue_item = NULL;
    }
    if (queue_item) { 
    if(!cJSON_IsString(queue_item) && !cJSON_IsNull(queue_item))
    {
    goto end; //String
    }
    }

    // free_style_project->concurrent_build
    cJSON *concurrent_build = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "concurrentBuild");
    if (cJSON_IsNull(concurrent_build)) {
        concurrent_build = NULL;
    }
    if (concurrent_build) { 
    if(!cJSON_IsBool(concurrent_build))
    {
    goto end; //Bool
    }
    concurrent_build_local_var = malloc(sizeof(int));
    if(!concurrent_build_local_var)
    {
        goto end;
    }
    *concurrent_build_local_var = concurrent_build->valueint;
    }

    // free_style_project->scm
    cJSON *scm = cJSON_GetObjectItemCaseSensitive(free_style_projectJSON, "scm");
    if (cJSON_IsNull(scm)) {
        scm = NULL;
    }
    if (scm) { 
    scm_local_nonprim = null_scm_parseFromJSON(scm); //nonprimitive
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (url && !cJSON_IsNull(url)) url_local_str = strdup(url->valuestring);
    if (color && !cJSON_IsNull(color)) color_local_str = strdup(color->valuestring);
    if (description && !cJSON_IsNull(description)) description_local_str = strdup(description->valuestring);
    if (display_name && !cJSON_IsNull(display_name)) display_name_local_str = strdup(display_name->valuestring);
    if (display_name_or_null && !cJSON_IsNull(display_name_or_null)) display_name_or_null_local_str = strdup(display_name_or_null->valuestring);
    if (full_display_name && !cJSON_IsNull(full_display_name)) full_display_name_local_str = strdup(full_display_name->valuestring);
    if (full_name && !cJSON_IsNull(full_name)) full_name_local_str = strdup(full_name->valuestring);
    if (last_failed_build && !cJSON_IsNull(last_failed_build)) last_failed_build_local_str = strdup(last_failed_build->valuestring);
    if (last_unstable_build && !cJSON_IsNull(last_unstable_build)) last_unstable_build_local_str = strdup(last_unstable_build->valuestring);
    if (last_unsuccessful_build && !cJSON_IsNull(last_unsuccessful_build)) last_unsuccessful_build_local_str = strdup(last_unsuccessful_build->valuestring);
    if (queue_item && !cJSON_IsNull(queue_item)) queue_item_local_str = strdup(queue_item->valuestring);

    free_style_project_local_var = free_style_project_create_internal (
        _class_local_str,
        name_local_str,
        url_local_str,
        color_local_str,
        actions ? actionsList : NULL,
        description_local_str,
        display_name_local_str,
        display_name_or_null_local_str,
        full_display_name_local_str,
        full_name_local_str,
        buildable_local_var,
        builds ? buildsList : NULL,
        first_build ? first_build_local_nonprim : NULL,
        health_report ? health_reportList : NULL,
        in_queue_local_var,
        keep_dependencies_local_var,
        last_build ? last_build_local_nonprim : NULL,
        last_completed_build ? last_completed_build_local_nonprim : NULL,
        last_failed_build_local_str,
        last_stable_build ? last_stable_build_local_nonprim : NULL,
        last_successful_build ? last_successful_build_local_nonprim : NULL,
        last_unstable_build_local_str,
        last_unsuccessful_build_local_str,
        next_build_number_local_var,
        queue_item_local_str,
        concurrent_build_local_var,
        scm ? scm_local_nonprim : NULL
        );

    if (!free_style_project_local_var) {
        goto end;
    }

    return free_style_project_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (url_local_str) {
        free(url_local_str);
        url_local_str = NULL;
    }
    if (color_local_str) {
        free(color_local_str);
        color_local_str = NULL;
    }
    if (actionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, actionsList) {
            free_style_projectactions_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(actionsList);
        actionsList = NULL;
    }
    if (description_local_str) {
        free(description_local_str);
        description_local_str = NULL;
    }
    if (display_name_local_str) {
        free(display_name_local_str);
        display_name_local_str = NULL;
    }
    if (display_name_or_null_local_str) {
        free(display_name_or_null_local_str);
        display_name_or_null_local_str = NULL;
    }
    if (full_display_name_local_str) {
        free(full_display_name_local_str);
        full_display_name_local_str = NULL;
    }
    if (full_name_local_str) {
        free(full_name_local_str);
        full_name_local_str = NULL;
    }
    if (buildable_local_var) {
        free(buildable_local_var);
        buildable_local_var = NULL;
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
    if (in_queue_local_var) {
        free(in_queue_local_var);
        in_queue_local_var = NULL;
    }
    if (keep_dependencies_local_var) {
        free(keep_dependencies_local_var);
        keep_dependencies_local_var = NULL;
    }
    if (last_build_local_nonprim) {
        free_style_build_free(last_build_local_nonprim);
        last_build_local_nonprim = NULL;
    }
    if (last_completed_build_local_nonprim) {
        free_style_build_free(last_completed_build_local_nonprim);
        last_completed_build_local_nonprim = NULL;
    }
    if (last_failed_build_local_str) {
        free(last_failed_build_local_str);
        last_failed_build_local_str = NULL;
    }
    if (last_stable_build_local_nonprim) {
        free_style_build_free(last_stable_build_local_nonprim);
        last_stable_build_local_nonprim = NULL;
    }
    if (last_successful_build_local_nonprim) {
        free_style_build_free(last_successful_build_local_nonprim);
        last_successful_build_local_nonprim = NULL;
    }
    if (last_unstable_build_local_str) {
        free(last_unstable_build_local_str);
        last_unstable_build_local_str = NULL;
    }
    if (last_unsuccessful_build_local_str) {
        free(last_unsuccessful_build_local_str);
        last_unsuccessful_build_local_str = NULL;
    }
    if (next_build_number_local_var) {
        free(next_build_number_local_var);
        next_build_number_local_var = NULL;
    }
    if (queue_item_local_str) {
        free(queue_item_local_str);
        queue_item_local_str = NULL;
    }
    if (concurrent_build_local_var) {
        free(concurrent_build_local_var);
        concurrent_build_local_var = NULL;
    }
    if (scm_local_nonprim) {
        null_scm_free(scm_local_nonprim);
        scm_local_nonprim = NULL;
    }
    return NULL;

}
