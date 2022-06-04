#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_branchesitemlatest_run.h"



pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run_create(
    int duration_in_millis,
    int estimated_duration_in_millis,
    char *en_queue_time,
    char *end_time,
    char *id,
    char *organization,
    char *pipeline,
    char *result,
    char *run_summary,
    char *start_time,
    char *state,
    char *type,
    char *commit_id,
    char *_class
    ) {
    pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run_local_var = malloc(sizeof(pipeline_branchesitemlatest_run_t));
    if (!pipeline_branchesitemlatest_run_local_var) {
        return NULL;
    }
    pipeline_branchesitemlatest_run_local_var->duration_in_millis = duration_in_millis;
    pipeline_branchesitemlatest_run_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    pipeline_branchesitemlatest_run_local_var->en_queue_time = en_queue_time;
    pipeline_branchesitemlatest_run_local_var->end_time = end_time;
    pipeline_branchesitemlatest_run_local_var->id = id;
    pipeline_branchesitemlatest_run_local_var->organization = organization;
    pipeline_branchesitemlatest_run_local_var->pipeline = pipeline;
    pipeline_branchesitemlatest_run_local_var->result = result;
    pipeline_branchesitemlatest_run_local_var->run_summary = run_summary;
    pipeline_branchesitemlatest_run_local_var->start_time = start_time;
    pipeline_branchesitemlatest_run_local_var->state = state;
    pipeline_branchesitemlatest_run_local_var->type = type;
    pipeline_branchesitemlatest_run_local_var->commit_id = commit_id;
    pipeline_branchesitemlatest_run_local_var->_class = _class;

    return pipeline_branchesitemlatest_run_local_var;
}


void pipeline_branchesitemlatest_run_free(pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run) {
    if(NULL == pipeline_branchesitemlatest_run){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_branchesitemlatest_run->en_queue_time) {
        free(pipeline_branchesitemlatest_run->en_queue_time);
        pipeline_branchesitemlatest_run->en_queue_time = NULL;
    }
    if (pipeline_branchesitemlatest_run->end_time) {
        free(pipeline_branchesitemlatest_run->end_time);
        pipeline_branchesitemlatest_run->end_time = NULL;
    }
    if (pipeline_branchesitemlatest_run->id) {
        free(pipeline_branchesitemlatest_run->id);
        pipeline_branchesitemlatest_run->id = NULL;
    }
    if (pipeline_branchesitemlatest_run->organization) {
        free(pipeline_branchesitemlatest_run->organization);
        pipeline_branchesitemlatest_run->organization = NULL;
    }
    if (pipeline_branchesitemlatest_run->pipeline) {
        free(pipeline_branchesitemlatest_run->pipeline);
        pipeline_branchesitemlatest_run->pipeline = NULL;
    }
    if (pipeline_branchesitemlatest_run->result) {
        free(pipeline_branchesitemlatest_run->result);
        pipeline_branchesitemlatest_run->result = NULL;
    }
    if (pipeline_branchesitemlatest_run->run_summary) {
        free(pipeline_branchesitemlatest_run->run_summary);
        pipeline_branchesitemlatest_run->run_summary = NULL;
    }
    if (pipeline_branchesitemlatest_run->start_time) {
        free(pipeline_branchesitemlatest_run->start_time);
        pipeline_branchesitemlatest_run->start_time = NULL;
    }
    if (pipeline_branchesitemlatest_run->state) {
        free(pipeline_branchesitemlatest_run->state);
        pipeline_branchesitemlatest_run->state = NULL;
    }
    if (pipeline_branchesitemlatest_run->type) {
        free(pipeline_branchesitemlatest_run->type);
        pipeline_branchesitemlatest_run->type = NULL;
    }
    if (pipeline_branchesitemlatest_run->commit_id) {
        free(pipeline_branchesitemlatest_run->commit_id);
        pipeline_branchesitemlatest_run->commit_id = NULL;
    }
    if (pipeline_branchesitemlatest_run->_class) {
        free(pipeline_branchesitemlatest_run->_class);
        pipeline_branchesitemlatest_run->_class = NULL;
    }
    free(pipeline_branchesitemlatest_run);
}

cJSON *pipeline_branchesitemlatest_run_convertToJSON(pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_branchesitemlatest_run->duration_in_millis
    if(pipeline_branchesitemlatest_run->duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "durationInMillis", pipeline_branchesitemlatest_run->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_branchesitemlatest_run->estimated_duration_in_millis
    if(pipeline_branchesitemlatest_run->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", pipeline_branchesitemlatest_run->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_branchesitemlatest_run->en_queue_time
    if(pipeline_branchesitemlatest_run->en_queue_time) {
    if(cJSON_AddStringToObject(item, "enQueueTime", pipeline_branchesitemlatest_run->en_queue_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->end_time
    if(pipeline_branchesitemlatest_run->end_time) {
    if(cJSON_AddStringToObject(item, "endTime", pipeline_branchesitemlatest_run->end_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->id
    if(pipeline_branchesitemlatest_run->id) {
    if(cJSON_AddStringToObject(item, "id", pipeline_branchesitemlatest_run->id) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->organization
    if(pipeline_branchesitemlatest_run->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipeline_branchesitemlatest_run->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->pipeline
    if(pipeline_branchesitemlatest_run->pipeline) {
    if(cJSON_AddStringToObject(item, "pipeline", pipeline_branchesitemlatest_run->pipeline) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->result
    if(pipeline_branchesitemlatest_run->result) {
    if(cJSON_AddStringToObject(item, "result", pipeline_branchesitemlatest_run->result) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->run_summary
    if(pipeline_branchesitemlatest_run->run_summary) {
    if(cJSON_AddStringToObject(item, "runSummary", pipeline_branchesitemlatest_run->run_summary) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->start_time
    if(pipeline_branchesitemlatest_run->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", pipeline_branchesitemlatest_run->start_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->state
    if(pipeline_branchesitemlatest_run->state) {
    if(cJSON_AddStringToObject(item, "state", pipeline_branchesitemlatest_run->state) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->type
    if(pipeline_branchesitemlatest_run->type) {
    if(cJSON_AddStringToObject(item, "type", pipeline_branchesitemlatest_run->type) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->commit_id
    if(pipeline_branchesitemlatest_run->commit_id) {
    if(cJSON_AddStringToObject(item, "commitId", pipeline_branchesitemlatest_run->commit_id) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitemlatest_run->_class
    if(pipeline_branchesitemlatest_run->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_branchesitemlatest_run->_class) == NULL) {
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

pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run_parseFromJSON(cJSON *pipeline_branchesitemlatest_runJSON){

    pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run_local_var = NULL;

    // pipeline_branchesitemlatest_run->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "durationInMillis");
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_branchesitemlatest_run->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "estimatedDurationInMillis");
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_branchesitemlatest_run->en_queue_time
    cJSON *en_queue_time = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "enQueueTime");
    if (en_queue_time) { 
    if(!cJSON_IsString(en_queue_time))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "endTime");
    if (end_time) { 
    if(!cJSON_IsString(end_time))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "organization");
    if (organization) { 
    if(!cJSON_IsString(organization))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "pipeline");
    if (pipeline) { 
    if(!cJSON_IsString(pipeline))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "result");
    if (result) { 
    if(!cJSON_IsString(result))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->run_summary
    cJSON *run_summary = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "runSummary");
    if (run_summary) { 
    if(!cJSON_IsString(run_summary))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "startTime");
    if (start_time) { 
    if(!cJSON_IsString(start_time))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "state");
    if (state) { 
    if(!cJSON_IsString(state))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->commit_id
    cJSON *commit_id = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "commitId");
    if (commit_id) { 
    if(!cJSON_IsString(commit_id))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitemlatest_run->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemlatest_runJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    pipeline_branchesitemlatest_run_local_var = pipeline_branchesitemlatest_run_create (
        duration_in_millis ? duration_in_millis->valuedouble : 0,
        estimated_duration_in_millis ? estimated_duration_in_millis->valuedouble : 0,
        en_queue_time ? strdup(en_queue_time->valuestring) : NULL,
        end_time ? strdup(end_time->valuestring) : NULL,
        id ? strdup(id->valuestring) : NULL,
        organization ? strdup(organization->valuestring) : NULL,
        pipeline ? strdup(pipeline->valuestring) : NULL,
        result ? strdup(result->valuestring) : NULL,
        run_summary ? strdup(run_summary->valuestring) : NULL,
        start_time ? strdup(start_time->valuestring) : NULL,
        state ? strdup(state->valuestring) : NULL,
        type ? strdup(type->valuestring) : NULL,
        commit_id ? strdup(commit_id->valuestring) : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return pipeline_branchesitemlatest_run_local_var;
end:
    return NULL;

}
