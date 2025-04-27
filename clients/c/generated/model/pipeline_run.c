#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_run.h"



static pipeline_run_t *pipeline_run_create_internal(
    char *_class,
    list_t *artifacts,
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
    char *commit_id
    ) {
    pipeline_run_t *pipeline_run_local_var = malloc(sizeof(pipeline_run_t));
    if (!pipeline_run_local_var) {
        return NULL;
    }
    pipeline_run_local_var->_class = _class;
    pipeline_run_local_var->artifacts = artifacts;
    pipeline_run_local_var->duration_in_millis = duration_in_millis;
    pipeline_run_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    pipeline_run_local_var->en_queue_time = en_queue_time;
    pipeline_run_local_var->end_time = end_time;
    pipeline_run_local_var->id = id;
    pipeline_run_local_var->organization = organization;
    pipeline_run_local_var->pipeline = pipeline;
    pipeline_run_local_var->result = result;
    pipeline_run_local_var->run_summary = run_summary;
    pipeline_run_local_var->start_time = start_time;
    pipeline_run_local_var->state = state;
    pipeline_run_local_var->type = type;
    pipeline_run_local_var->commit_id = commit_id;

    pipeline_run_local_var->_library_owned = 1;
    return pipeline_run_local_var;
}

__attribute__((deprecated)) pipeline_run_t *pipeline_run_create(
    char *_class,
    list_t *artifacts,
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
    char *commit_id
    ) {
    return pipeline_run_create_internal (
        _class,
        artifacts,
        duration_in_millis,
        estimated_duration_in_millis,
        en_queue_time,
        end_time,
        id,
        organization,
        pipeline,
        result,
        run_summary,
        start_time,
        state,
        type,
        commit_id
        );
}

void pipeline_run_free(pipeline_run_t *pipeline_run) {
    if(NULL == pipeline_run){
        return ;
    }
    if(pipeline_run->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_run_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_run->_class) {
        free(pipeline_run->_class);
        pipeline_run->_class = NULL;
    }
    if (pipeline_run->artifacts) {
        list_ForEach(listEntry, pipeline_run->artifacts) {
            pipeline_runartifacts_free(listEntry->data);
        }
        list_freeList(pipeline_run->artifacts);
        pipeline_run->artifacts = NULL;
    }
    if (pipeline_run->en_queue_time) {
        free(pipeline_run->en_queue_time);
        pipeline_run->en_queue_time = NULL;
    }
    if (pipeline_run->end_time) {
        free(pipeline_run->end_time);
        pipeline_run->end_time = NULL;
    }
    if (pipeline_run->id) {
        free(pipeline_run->id);
        pipeline_run->id = NULL;
    }
    if (pipeline_run->organization) {
        free(pipeline_run->organization);
        pipeline_run->organization = NULL;
    }
    if (pipeline_run->pipeline) {
        free(pipeline_run->pipeline);
        pipeline_run->pipeline = NULL;
    }
    if (pipeline_run->result) {
        free(pipeline_run->result);
        pipeline_run->result = NULL;
    }
    if (pipeline_run->run_summary) {
        free(pipeline_run->run_summary);
        pipeline_run->run_summary = NULL;
    }
    if (pipeline_run->start_time) {
        free(pipeline_run->start_time);
        pipeline_run->start_time = NULL;
    }
    if (pipeline_run->state) {
        free(pipeline_run->state);
        pipeline_run->state = NULL;
    }
    if (pipeline_run->type) {
        free(pipeline_run->type);
        pipeline_run->type = NULL;
    }
    if (pipeline_run->commit_id) {
        free(pipeline_run->commit_id);
        pipeline_run->commit_id = NULL;
    }
    free(pipeline_run);
}

cJSON *pipeline_run_convertToJSON(pipeline_run_t *pipeline_run) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_run->_class
    if(pipeline_run->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_run->_class) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->artifacts
    if(pipeline_run->artifacts) {
    cJSON *artifacts = cJSON_AddArrayToObject(item, "artifacts");
    if(artifacts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *artifactsListEntry;
    if (pipeline_run->artifacts) {
    list_ForEach(artifactsListEntry, pipeline_run->artifacts) {
    cJSON *itemLocal = pipeline_runartifacts_convertToJSON(artifactsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(artifacts, itemLocal);
    }
    }
    }


    // pipeline_run->duration_in_millis
    if(pipeline_run->duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "durationInMillis", pipeline_run->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_run->estimated_duration_in_millis
    if(pipeline_run->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", pipeline_run->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_run->en_queue_time
    if(pipeline_run->en_queue_time) {
    if(cJSON_AddStringToObject(item, "enQueueTime", pipeline_run->en_queue_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->end_time
    if(pipeline_run->end_time) {
    if(cJSON_AddStringToObject(item, "endTime", pipeline_run->end_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->id
    if(pipeline_run->id) {
    if(cJSON_AddStringToObject(item, "id", pipeline_run->id) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->organization
    if(pipeline_run->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipeline_run->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->pipeline
    if(pipeline_run->pipeline) {
    if(cJSON_AddStringToObject(item, "pipeline", pipeline_run->pipeline) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->result
    if(pipeline_run->result) {
    if(cJSON_AddStringToObject(item, "result", pipeline_run->result) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->run_summary
    if(pipeline_run->run_summary) {
    if(cJSON_AddStringToObject(item, "runSummary", pipeline_run->run_summary) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->start_time
    if(pipeline_run->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", pipeline_run->start_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->state
    if(pipeline_run->state) {
    if(cJSON_AddStringToObject(item, "state", pipeline_run->state) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->type
    if(pipeline_run->type) {
    if(cJSON_AddStringToObject(item, "type", pipeline_run->type) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_run->commit_id
    if(pipeline_run->commit_id) {
    if(cJSON_AddStringToObject(item, "commitId", pipeline_run->commit_id) == NULL) {
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

pipeline_run_t *pipeline_run_parseFromJSON(cJSON *pipeline_runJSON){

    pipeline_run_t *pipeline_run_local_var = NULL;

    // define the local list for pipeline_run->artifacts
    list_t *artifactsList = NULL;

    // pipeline_run->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // pipeline_run->artifacts
    cJSON *artifacts = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "artifacts");
    if (cJSON_IsNull(artifacts)) {
        artifacts = NULL;
    }
    if (artifacts) { 
    cJSON *artifacts_local_nonprimitive = NULL;
    if(!cJSON_IsArray(artifacts)){
        goto end; //nonprimitive container
    }

    artifactsList = list_createList();

    cJSON_ArrayForEach(artifacts_local_nonprimitive,artifacts )
    {
        if(!cJSON_IsObject(artifacts_local_nonprimitive)){
            goto end;
        }
        pipeline_runartifacts_t *artifactsItem = pipeline_runartifacts_parseFromJSON(artifacts_local_nonprimitive);

        list_addElement(artifactsList, artifactsItem);
    }
    }

    // pipeline_run->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "durationInMillis");
    if (cJSON_IsNull(duration_in_millis)) {
        duration_in_millis = NULL;
    }
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_run->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "estimatedDurationInMillis");
    if (cJSON_IsNull(estimated_duration_in_millis)) {
        estimated_duration_in_millis = NULL;
    }
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_run->en_queue_time
    cJSON *en_queue_time = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "enQueueTime");
    if (cJSON_IsNull(en_queue_time)) {
        en_queue_time = NULL;
    }
    if (en_queue_time) { 
    if(!cJSON_IsString(en_queue_time) && !cJSON_IsNull(en_queue_time))
    {
    goto end; //String
    }
    }

    // pipeline_run->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "endTime");
    if (cJSON_IsNull(end_time)) {
        end_time = NULL;
    }
    if (end_time) { 
    if(!cJSON_IsString(end_time) && !cJSON_IsNull(end_time))
    {
    goto end; //String
    }
    }

    // pipeline_run->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // pipeline_run->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline_run->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "pipeline");
    if (cJSON_IsNull(pipeline)) {
        pipeline = NULL;
    }
    if (pipeline) { 
    if(!cJSON_IsString(pipeline) && !cJSON_IsNull(pipeline))
    {
    goto end; //String
    }
    }

    // pipeline_run->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "result");
    if (cJSON_IsNull(result)) {
        result = NULL;
    }
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // pipeline_run->run_summary
    cJSON *run_summary = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "runSummary");
    if (cJSON_IsNull(run_summary)) {
        run_summary = NULL;
    }
    if (run_summary) { 
    if(!cJSON_IsString(run_summary) && !cJSON_IsNull(run_summary))
    {
    goto end; //String
    }
    }

    // pipeline_run->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //String
    }
    }

    // pipeline_run->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // pipeline_run->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // pipeline_run->commit_id
    cJSON *commit_id = cJSON_GetObjectItemCaseSensitive(pipeline_runJSON, "commitId");
    if (cJSON_IsNull(commit_id)) {
        commit_id = NULL;
    }
    if (commit_id) { 
    if(!cJSON_IsString(commit_id) && !cJSON_IsNull(commit_id))
    {
    goto end; //String
    }
    }


    pipeline_run_local_var = pipeline_run_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        artifacts ? artifactsList : NULL,
        duration_in_millis ? duration_in_millis->valuedouble : 0,
        estimated_duration_in_millis ? estimated_duration_in_millis->valuedouble : 0,
        en_queue_time && !cJSON_IsNull(en_queue_time) ? strdup(en_queue_time->valuestring) : NULL,
        end_time && !cJSON_IsNull(end_time) ? strdup(end_time->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        organization && !cJSON_IsNull(organization) ? strdup(organization->valuestring) : NULL,
        pipeline && !cJSON_IsNull(pipeline) ? strdup(pipeline->valuestring) : NULL,
        result && !cJSON_IsNull(result) ? strdup(result->valuestring) : NULL,
        run_summary && !cJSON_IsNull(run_summary) ? strdup(run_summary->valuestring) : NULL,
        start_time && !cJSON_IsNull(start_time) ? strdup(start_time->valuestring) : NULL,
        state && !cJSON_IsNull(state) ? strdup(state->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        commit_id && !cJSON_IsNull(commit_id) ? strdup(commit_id->valuestring) : NULL
        );

    return pipeline_run_local_var;
end:
    if (artifactsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, artifactsList) {
            pipeline_runartifacts_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(artifactsList);
        artifactsList = NULL;
    }
    return NULL;

}
