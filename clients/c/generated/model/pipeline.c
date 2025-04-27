#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline.h"



static pipeline_t *pipeline_create_internal(
    char *_class,
    char *organization,
    char *name,
    char *display_name,
    char *full_name,
    int weather_score,
    int estimated_duration_in_millis,
    pipelinelatest_run_t *latest_run
    ) {
    pipeline_t *pipeline_local_var = malloc(sizeof(pipeline_t));
    if (!pipeline_local_var) {
        return NULL;
    }
    pipeline_local_var->_class = _class;
    pipeline_local_var->organization = organization;
    pipeline_local_var->name = name;
    pipeline_local_var->display_name = display_name;
    pipeline_local_var->full_name = full_name;
    pipeline_local_var->weather_score = weather_score;
    pipeline_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    pipeline_local_var->latest_run = latest_run;

    pipeline_local_var->_library_owned = 1;
    return pipeline_local_var;
}

__attribute__((deprecated)) pipeline_t *pipeline_create(
    char *_class,
    char *organization,
    char *name,
    char *display_name,
    char *full_name,
    int weather_score,
    int estimated_duration_in_millis,
    pipelinelatest_run_t *latest_run
    ) {
    return pipeline_create_internal (
        _class,
        organization,
        name,
        display_name,
        full_name,
        weather_score,
        estimated_duration_in_millis,
        latest_run
        );
}

void pipeline_free(pipeline_t *pipeline) {
    if(NULL == pipeline){
        return ;
    }
    if(pipeline->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline->_class) {
        free(pipeline->_class);
        pipeline->_class = NULL;
    }
    if (pipeline->organization) {
        free(pipeline->organization);
        pipeline->organization = NULL;
    }
    if (pipeline->name) {
        free(pipeline->name);
        pipeline->name = NULL;
    }
    if (pipeline->display_name) {
        free(pipeline->display_name);
        pipeline->display_name = NULL;
    }
    if (pipeline->full_name) {
        free(pipeline->full_name);
        pipeline->full_name = NULL;
    }
    if (pipeline->latest_run) {
        pipelinelatest_run_free(pipeline->latest_run);
        pipeline->latest_run = NULL;
    }
    free(pipeline);
}

cJSON *pipeline_convertToJSON(pipeline_t *pipeline) {
    cJSON *item = cJSON_CreateObject();

    // pipeline->_class
    if(pipeline->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline->_class) == NULL) {
    goto fail; //String
    }
    }


    // pipeline->organization
    if(pipeline->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipeline->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipeline->name
    if(pipeline->name) {
    if(cJSON_AddStringToObject(item, "name", pipeline->name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline->display_name
    if(pipeline->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", pipeline->display_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline->full_name
    if(pipeline->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", pipeline->full_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline->weather_score
    if(pipeline->weather_score) {
    if(cJSON_AddNumberToObject(item, "weatherScore", pipeline->weather_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline->estimated_duration_in_millis
    if(pipeline->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", pipeline->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline->latest_run
    if(pipeline->latest_run) {
    cJSON *latest_run_local_JSON = pipelinelatest_run_convertToJSON(pipeline->latest_run);
    if(latest_run_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "latestRun", latest_run_local_JSON);
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

pipeline_t *pipeline_parseFromJSON(cJSON *pipelineJSON){

    pipeline_t *pipeline_local_var = NULL;

    // define the local variable for pipeline->latest_run
    pipelinelatest_run_t *latest_run_local_nonprim = NULL;

    // pipeline->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // pipeline->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // pipeline->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // pipeline->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "weatherScore");
    if (cJSON_IsNull(weather_score)) {
        weather_score = NULL;
    }
    if (weather_score) { 
    if(!cJSON_IsNumber(weather_score))
    {
    goto end; //Numeric
    }
    }

    // pipeline->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "estimatedDurationInMillis");
    if (cJSON_IsNull(estimated_duration_in_millis)) {
        estimated_duration_in_millis = NULL;
    }
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(pipelineJSON, "latestRun");
    if (cJSON_IsNull(latest_run)) {
        latest_run = NULL;
    }
    if (latest_run) { 
    latest_run_local_nonprim = pipelinelatest_run_parseFromJSON(latest_run); //nonprimitive
    }


    pipeline_local_var = pipeline_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        organization && !cJSON_IsNull(organization) ? strdup(organization->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        full_name && !cJSON_IsNull(full_name) ? strdup(full_name->valuestring) : NULL,
        weather_score ? weather_score->valuedouble : 0,
        estimated_duration_in_millis ? estimated_duration_in_millis->valuedouble : 0,
        latest_run ? latest_run_local_nonprim : NULL
        );

    return pipeline_local_var;
end:
    if (latest_run_local_nonprim) {
        pipelinelatest_run_free(latest_run_local_nonprim);
        latest_run_local_nonprim = NULL;
    }
    return NULL;

}
