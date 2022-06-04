#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipelinelatest_run.h"



pipelinelatest_run_t *pipelinelatest_run_create(
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
    char *commit_id,
    char *_class
    ) {
    pipelinelatest_run_t *pipelinelatest_run_local_var = malloc(sizeof(pipelinelatest_run_t));
    if (!pipelinelatest_run_local_var) {
        return NULL;
    }
    pipelinelatest_run_local_var->artifacts = artifacts;
    pipelinelatest_run_local_var->duration_in_millis = duration_in_millis;
    pipelinelatest_run_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    pipelinelatest_run_local_var->en_queue_time = en_queue_time;
    pipelinelatest_run_local_var->end_time = end_time;
    pipelinelatest_run_local_var->id = id;
    pipelinelatest_run_local_var->organization = organization;
    pipelinelatest_run_local_var->pipeline = pipeline;
    pipelinelatest_run_local_var->result = result;
    pipelinelatest_run_local_var->run_summary = run_summary;
    pipelinelatest_run_local_var->start_time = start_time;
    pipelinelatest_run_local_var->state = state;
    pipelinelatest_run_local_var->type = type;
    pipelinelatest_run_local_var->commit_id = commit_id;
    pipelinelatest_run_local_var->_class = _class;

    return pipelinelatest_run_local_var;
}


void pipelinelatest_run_free(pipelinelatest_run_t *pipelinelatest_run) {
    if(NULL == pipelinelatest_run){
        return ;
    }
    listEntry_t *listEntry;
    if (pipelinelatest_run->artifacts) {
        list_ForEach(listEntry, pipelinelatest_run->artifacts) {
            pipelinelatest_runartifacts_free(listEntry->data);
        }
        list_freeList(pipelinelatest_run->artifacts);
        pipelinelatest_run->artifacts = NULL;
    }
    if (pipelinelatest_run->en_queue_time) {
        free(pipelinelatest_run->en_queue_time);
        pipelinelatest_run->en_queue_time = NULL;
    }
    if (pipelinelatest_run->end_time) {
        free(pipelinelatest_run->end_time);
        pipelinelatest_run->end_time = NULL;
    }
    if (pipelinelatest_run->id) {
        free(pipelinelatest_run->id);
        pipelinelatest_run->id = NULL;
    }
    if (pipelinelatest_run->organization) {
        free(pipelinelatest_run->organization);
        pipelinelatest_run->organization = NULL;
    }
    if (pipelinelatest_run->pipeline) {
        free(pipelinelatest_run->pipeline);
        pipelinelatest_run->pipeline = NULL;
    }
    if (pipelinelatest_run->result) {
        free(pipelinelatest_run->result);
        pipelinelatest_run->result = NULL;
    }
    if (pipelinelatest_run->run_summary) {
        free(pipelinelatest_run->run_summary);
        pipelinelatest_run->run_summary = NULL;
    }
    if (pipelinelatest_run->start_time) {
        free(pipelinelatest_run->start_time);
        pipelinelatest_run->start_time = NULL;
    }
    if (pipelinelatest_run->state) {
        free(pipelinelatest_run->state);
        pipelinelatest_run->state = NULL;
    }
    if (pipelinelatest_run->type) {
        free(pipelinelatest_run->type);
        pipelinelatest_run->type = NULL;
    }
    if (pipelinelatest_run->commit_id) {
        free(pipelinelatest_run->commit_id);
        pipelinelatest_run->commit_id = NULL;
    }
    if (pipelinelatest_run->_class) {
        free(pipelinelatest_run->_class);
        pipelinelatest_run->_class = NULL;
    }
    free(pipelinelatest_run);
}

cJSON *pipelinelatest_run_convertToJSON(pipelinelatest_run_t *pipelinelatest_run) {
    cJSON *item = cJSON_CreateObject();

    // pipelinelatest_run->artifacts
    if(pipelinelatest_run->artifacts) {
    cJSON *artifacts = cJSON_AddArrayToObject(item, "artifacts");
    if(artifacts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *artifactsListEntry;
    if (pipelinelatest_run->artifacts) {
    list_ForEach(artifactsListEntry, pipelinelatest_run->artifacts) {
    cJSON *itemLocal = pipelinelatest_runartifacts_convertToJSON(artifactsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(artifacts, itemLocal);
    }
    }
    }


    // pipelinelatest_run->duration_in_millis
    if(pipelinelatest_run->duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "durationInMillis", pipelinelatest_run->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipelinelatest_run->estimated_duration_in_millis
    if(pipelinelatest_run->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", pipelinelatest_run->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipelinelatest_run->en_queue_time
    if(pipelinelatest_run->en_queue_time) {
    if(cJSON_AddStringToObject(item, "enQueueTime", pipelinelatest_run->en_queue_time) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->end_time
    if(pipelinelatest_run->end_time) {
    if(cJSON_AddStringToObject(item, "endTime", pipelinelatest_run->end_time) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->id
    if(pipelinelatest_run->id) {
    if(cJSON_AddStringToObject(item, "id", pipelinelatest_run->id) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->organization
    if(pipelinelatest_run->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipelinelatest_run->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->pipeline
    if(pipelinelatest_run->pipeline) {
    if(cJSON_AddStringToObject(item, "pipeline", pipelinelatest_run->pipeline) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->result
    if(pipelinelatest_run->result) {
    if(cJSON_AddStringToObject(item, "result", pipelinelatest_run->result) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->run_summary
    if(pipelinelatest_run->run_summary) {
    if(cJSON_AddStringToObject(item, "runSummary", pipelinelatest_run->run_summary) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->start_time
    if(pipelinelatest_run->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", pipelinelatest_run->start_time) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->state
    if(pipelinelatest_run->state) {
    if(cJSON_AddStringToObject(item, "state", pipelinelatest_run->state) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->type
    if(pipelinelatest_run->type) {
    if(cJSON_AddStringToObject(item, "type", pipelinelatest_run->type) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->commit_id
    if(pipelinelatest_run->commit_id) {
    if(cJSON_AddStringToObject(item, "commitId", pipelinelatest_run->commit_id) == NULL) {
    goto fail; //String
    }
    }


    // pipelinelatest_run->_class
    if(pipelinelatest_run->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipelinelatest_run->_class) == NULL) {
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

pipelinelatest_run_t *pipelinelatest_run_parseFromJSON(cJSON *pipelinelatest_runJSON){

    pipelinelatest_run_t *pipelinelatest_run_local_var = NULL;

    // define the local list for pipelinelatest_run->artifacts
    list_t *artifactsList = NULL;

    // pipelinelatest_run->artifacts
    cJSON *artifacts = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "artifacts");
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
        pipelinelatest_runartifacts_t *artifactsItem = pipelinelatest_runartifacts_parseFromJSON(artifacts_local_nonprimitive);

        list_addElement(artifactsList, artifactsItem);
    }
    }

    // pipelinelatest_run->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "durationInMillis");
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipelinelatest_run->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "estimatedDurationInMillis");
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipelinelatest_run->en_queue_time
    cJSON *en_queue_time = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "enQueueTime");
    if (en_queue_time) { 
    if(!cJSON_IsString(en_queue_time))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "endTime");
    if (end_time) { 
    if(!cJSON_IsString(end_time))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "organization");
    if (organization) { 
    if(!cJSON_IsString(organization))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "pipeline");
    if (pipeline) { 
    if(!cJSON_IsString(pipeline))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "result");
    if (result) { 
    if(!cJSON_IsString(result))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->run_summary
    cJSON *run_summary = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "runSummary");
    if (run_summary) { 
    if(!cJSON_IsString(run_summary))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "startTime");
    if (start_time) { 
    if(!cJSON_IsString(start_time))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "state");
    if (state) { 
    if(!cJSON_IsString(state))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->commit_id
    cJSON *commit_id = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "commitId");
    if (commit_id) { 
    if(!cJSON_IsString(commit_id))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    pipelinelatest_run_local_var = pipelinelatest_run_create (
        artifacts ? artifactsList : NULL,
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

    return pipelinelatest_run_local_var;
end:
    if (artifactsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, artifactsList) {
            pipelinelatest_runartifacts_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(artifactsList);
        artifactsList = NULL;
    }
    return NULL;

}
