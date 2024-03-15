#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "hudson_master_computerexecutors.h"



hudson_master_computerexecutors_t *hudson_master_computerexecutors_create(
    free_style_build_t *current_executable,
    int idle,
    int likely_stuck,
    int number,
    int progress,
    char *_class
    ) {
    hudson_master_computerexecutors_t *hudson_master_computerexecutors_local_var = malloc(sizeof(hudson_master_computerexecutors_t));
    if (!hudson_master_computerexecutors_local_var) {
        return NULL;
    }
    hudson_master_computerexecutors_local_var->current_executable = current_executable;
    hudson_master_computerexecutors_local_var->idle = idle;
    hudson_master_computerexecutors_local_var->likely_stuck = likely_stuck;
    hudson_master_computerexecutors_local_var->number = number;
    hudson_master_computerexecutors_local_var->progress = progress;
    hudson_master_computerexecutors_local_var->_class = _class;

    return hudson_master_computerexecutors_local_var;
}


void hudson_master_computerexecutors_free(hudson_master_computerexecutors_t *hudson_master_computerexecutors) {
    if(NULL == hudson_master_computerexecutors){
        return ;
    }
    listEntry_t *listEntry;
    if (hudson_master_computerexecutors->current_executable) {
        free_style_build_free(hudson_master_computerexecutors->current_executable);
        hudson_master_computerexecutors->current_executable = NULL;
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
    if(cJSON_AddBoolToObject(item, "idle", hudson_master_computerexecutors->idle) == NULL) {
    goto fail; //Bool
    }
    }


    // hudson_master_computerexecutors->likely_stuck
    if(hudson_master_computerexecutors->likely_stuck) {
    if(cJSON_AddBoolToObject(item, "likelyStuck", hudson_master_computerexecutors->likely_stuck) == NULL) {
    goto fail; //Bool
    }
    }


    // hudson_master_computerexecutors->number
    if(hudson_master_computerexecutors->number) {
    if(cJSON_AddNumberToObject(item, "number", hudson_master_computerexecutors->number) == NULL) {
    goto fail; //Numeric
    }
    }


    // hudson_master_computerexecutors->progress
    if(hudson_master_computerexecutors->progress) {
    if(cJSON_AddNumberToObject(item, "progress", hudson_master_computerexecutors->progress) == NULL) {
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

    // hudson_master_computerexecutors->current_executable
    cJSON *current_executable = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "currentExecutable");
    if (current_executable) { 
    current_executable_local_nonprim = free_style_build_parseFromJSON(current_executable); //nonprimitive
    }

    // hudson_master_computerexecutors->idle
    cJSON *idle = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "idle");
    if (idle) { 
    if(!cJSON_IsBool(idle))
    {
    goto end; //Bool
    }
    }

    // hudson_master_computerexecutors->likely_stuck
    cJSON *likely_stuck = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "likelyStuck");
    if (likely_stuck) { 
    if(!cJSON_IsBool(likely_stuck))
    {
    goto end; //Bool
    }
    }

    // hudson_master_computerexecutors->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "number");
    if (number) { 
    if(!cJSON_IsNumber(number))
    {
    goto end; //Numeric
    }
    }

    // hudson_master_computerexecutors->progress
    cJSON *progress = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "progress");
    if (progress) { 
    if(!cJSON_IsNumber(progress))
    {
    goto end; //Numeric
    }
    }

    // hudson_master_computerexecutors->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(hudson_master_computerexecutorsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    hudson_master_computerexecutors_local_var = hudson_master_computerexecutors_create (
        current_executable ? current_executable_local_nonprim : NULL,
        idle ? idle->valueint : 0,
        likely_stuck ? likely_stuck->valueint : 0,
        number ? number->valuedouble : 0,
        progress ? progress->valuedouble : 0,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return hudson_master_computerexecutors_local_var;
end:
    if (current_executable_local_nonprim) {
        free_style_build_free(current_executable_local_nonprim);
        current_executable_local_nonprim = NULL;
    }
    return NULL;

}
