#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "hudson_master_computerexecutors.h"



static hudson_master_computerexecutors_t *hudson_master_computerexecutors_create_internal(
    free_style_build_t *current_executable,
    int *idle,
    int *likely_stuck,
    int *number,
    int *progress,
    char *_class
    ) {
    hudson_master_computerexecutors_t *hudson_master_computerexecutors_local_var = malloc(sizeof(hudson_master_computerexecutors_t));
    if (!hudson_master_computerexecutors_local_var) {
        return NULL;
    }
    memset(hudson_master_computerexecutors_local_var, 0, sizeof(hudson_master_computerexecutors_t));
    hudson_master_computerexecutors_local_var->_library_owned = 1;
    hudson_master_computerexecutors_local_var->current_executable = current_executable;
    hudson_master_computerexecutors_local_var->idle = idle;
    hudson_master_computerexecutors_local_var->likely_stuck = likely_stuck;
    hudson_master_computerexecutors_local_var->number = number;
    hudson_master_computerexecutors_local_var->progress = progress;
    hudson_master_computerexecutors_local_var->_class = _class;
    return hudson_master_computerexecutors_local_var;
}

__attribute__((deprecated)) hudson_master_computerexecutors_t *hudson_master_computerexecutors_create(
    free_style_build_t *current_executable,
    int *idle,
    int *likely_stuck,
    int *number,
    int *progress,
    char *_class
    ) {
    int *idle_copy = NULL;
    if (idle) {
        idle_copy = malloc(sizeof(int));
        if (idle_copy) *idle_copy = *idle;
    }
    int *likely_stuck_copy = NULL;
    if (likely_stuck) {
        likely_stuck_copy = malloc(sizeof(int));
        if (likely_stuck_copy) *likely_stuck_copy = *likely_stuck;
    }
    int *number_copy = NULL;
    if (number) {
        number_copy = malloc(sizeof(int));
        if (number_copy) *number_copy = *number;
    }
    int *progress_copy = NULL;
    if (progress) {
        progress_copy = malloc(sizeof(int));
        if (progress_copy) *progress_copy = *progress;
    }
    hudson_master_computerexecutors_t *result = hudson_master_computerexecutors_create_internal (
        current_executable,
        idle_copy,
        likely_stuck_copy,
        number_copy,
        progress_copy,
        _class
        );
    if (!result) {
        free(idle_copy);
        free(likely_stuck_copy);
        free(number_copy);
        free(progress_copy);
    }
    return result;
}

void hudson_master_computerexecutors_free(hudson_master_computerexecutors_t *hudson_master_computerexecutors) {
    if(NULL == hudson_master_computerexecutors){
        return ;
    }
    if(hudson_master_computerexecutors->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "hudson_master_computerexecutors_free");
        return ;
    }
    listEntry_t *listEntry;
    if (hudson_master_computerexecutors->current_executable) {
        free_style_build_free(hudson_master_computerexecutors->current_executable);
        hudson_master_computerexecutors->current_executable = NULL;
    }
    if (hudson_master_computerexecutors->idle) {
        free(hudson_master_computerexecutors->idle);
        hudson_master_computerexecutors->idle = NULL;
    }
    if (hudson_master_computerexecutors->likely_stuck) {
        free(hudson_master_computerexecutors->likely_stuck);
        hudson_master_computerexecutors->likely_stuck = NULL;
    }
    if (hudson_master_computerexecutors->number) {
        free(hudson_master_computerexecutors->number);
        hudson_master_computerexecutors->number = NULL;
    }
    if (hudson_master_computerexecutors->progress) {
        free(hudson_master_computerexecutors->progress);
        hudson_master_computerexecutors->progress = NULL;
    }
    if (hudson_master_computerexecutors->_class) {
        free(hudson_master_computerexecutors->_class);
        hudson_master_computerexecutors->_class = NULL;
    }
    free(hudson_master_computerexecutors);
}

cJSON *hudson_master_computerexecutors_convertToJSON(hudson_master_computerexecutors_t *hudson_master_computerexecutors) {
    cJSON *item = cJSON_CreateObject();

    // hudson_master_computerexecutors->current_executable
    if(hudson_master_computerexecutors->current_executable) {
    cJSON *current_executable_local_JSON = free_style_build_convertToJSON(hudson_master_computerexecutors->current_executable);
    if(current_executable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "currentExecutable", current_executable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // hudson_master_computerexecutors->idle
    if(hudson_master_computerexecutors->idle) {
    if(cJSON_AddBoolToObject(item, "idle", *hudson_master_computerexecutors->idle) == NULL) {
    goto fail; //Bool
    }
    }


    // hudson_master_computerexecutors->likely_stuck
    if(hudson_master_computerexecutors->likely_stuck) {
    if(cJSON_AddBoolToObject(item, "likelyStuck", *hudson_master_computerexecutors->likely_stuck) == NULL) {
    goto fail; //Bool
    }
    }


    // hudson_master_computerexecutors->number
    if(hudson_master_computerexecutors->number) {
    if(cJSON_AddNumberToObject(item, "number", *hudson_master_computerexecutors->number) == NULL) {
    goto fail; //Numeric
    }
    }


    // hudson_master_computerexecutors->progress
    if(hudson_master_computerexecutors->progress) {
    if(cJSON_AddNumberToObject(item, "progress", *hudson_master_computerexecutors->progress) == NULL) {
    goto fail; //Numeric
    }
    }


    // hudson_master_computerexecutors->_class
    if(hudson_master_computerexecutors->_class) {
    if(cJSON_AddStringToObject(item, "_class", hudson_master_computerexecutors->_class) == NULL) {
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

hudson_master_computerexecutors_t *hudson_master_computerexecutors_parseFromJSON(cJSON *hudson_master_computerexecutorsJSON){

    hudson_master_computerexecutors_t *hudson_master_computerexecutors_local_var = NULL;

    // define the local variable for hudson_master_computerexecutors->current_executable
    free_style_build_t *current_executable_local_nonprim = NULL;

    // define the local variable for hudson_master_computerexecutors->idle
    int *idle_local_var = NULL;

    // define the local variable for hudson_master_computerexecutors->likely_stuck
    int *likely_stuck_local_var = NULL;

    // define the local variable for hudson_master_computerexecutors->number
    int *number_local_var = NULL;

    // define the local variable for hudson_master_computerexecutors->progress
    int *progress_local_var = NULL;

    char *_class_local_str = NULL;

    // hudson_master_computerexecutors->current_executable
    cJSON *current_executable = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "currentExecutable");
    if (cJSON_IsNull(current_executable)) {
        current_executable = NULL;
    }
    if (current_executable) { 
    current_executable_local_nonprim = free_style_build_parseFromJSON(current_executable); //nonprimitive
    }

    // hudson_master_computerexecutors->idle
    cJSON *idle = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "idle");
    if (cJSON_IsNull(idle)) {
        idle = NULL;
    }
    if (idle) { 
    if(!cJSON_IsBool(idle))
    {
    goto end; //Bool
    }
    idle_local_var = malloc(sizeof(int));
    if(!idle_local_var)
    {
        goto end;
    }
    *idle_local_var = idle->valueint;
    }

    // hudson_master_computerexecutors->likely_stuck
    cJSON *likely_stuck = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "likelyStuck");
    if (cJSON_IsNull(likely_stuck)) {
        likely_stuck = NULL;
    }
    if (likely_stuck) { 
    if(!cJSON_IsBool(likely_stuck))
    {
    goto end; //Bool
    }
    likely_stuck_local_var = malloc(sizeof(int));
    if(!likely_stuck_local_var)
    {
        goto end;
    }
    *likely_stuck_local_var = likely_stuck->valueint;
    }

    // hudson_master_computerexecutors->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "number");
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

    // hudson_master_computerexecutors->progress
    cJSON *progress = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "progress");
    if (cJSON_IsNull(progress)) {
        progress = NULL;
    }
    if (progress) { 
    if(!cJSON_IsNumber(progress))
    {
    goto end; //Numeric
    }
    progress_local_var = malloc(sizeof(int));
    if(!progress_local_var)
    {
        goto end;
    }
    *progress_local_var = progress->valuedouble;
    }

    // hudson_master_computerexecutors->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    hudson_master_computerexecutors_local_var = hudson_master_computerexecutors_create_internal (
        current_executable ? current_executable_local_nonprim : NULL,
        idle_local_var,
        likely_stuck_local_var,
        number_local_var,
        progress_local_var,
        _class_local_str
        );

    if (!hudson_master_computerexecutors_local_var) {
        goto end;
    }

    return hudson_master_computerexecutors_local_var;
end:
    if (current_executable_local_nonprim) {
        free_style_build_free(current_executable_local_nonprim);
        current_executable_local_nonprim = NULL;
    }
    if (idle_local_var) {
        free(idle_local_var);
        idle_local_var = NULL;
    }
    if (likely_stuck_local_var) {
        free(likely_stuck_local_var);
        likely_stuck_local_var = NULL;
    }
    if (number_local_var) {
        free(number_local_var);
        number_local_var = NULL;
    }
    if (progress_local_var) {
        free(progress_local_var);
        progress_local_var = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
