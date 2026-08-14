#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipelinelatest_run.h"



static pipelinelatest_run_t *pipelinelatest_run_create_internal(
    list_t *artifacts,
    int *duration_in_millis,
    int *estimated_duration_in_millis,
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
    memset(pipelinelatest_run_local_var, 0, sizeof(pipelinelatest_run_t));
    pipelinelatest_run_local_var->_library_owned = 1;
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

__attribute__((deprecated)) pipelinelatest_run_t *pipelinelatest_run_create(
    list_t *artifacts,
    int *duration_in_millis,
    int *estimated_duration_in_millis,
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
    int *duration_in_millis_copy = NULL;
    if (duration_in_millis) {
        duration_in_millis_copy = malloc(sizeof(int));
        if (duration_in_millis_copy) *duration_in_millis_copy = *duration_in_millis;
    }
    int *estimated_duration_in_millis_copy = NULL;
    if (estimated_duration_in_millis) {
        estimated_duration_in_millis_copy = malloc(sizeof(int));
        if (estimated_duration_in_millis_copy) *estimated_duration_in_millis_copy = *estimated_duration_in_millis;
    }
    pipelinelatest_run_t *result = pipelinelatest_run_create_internal (
        artifacts,
        duration_in_millis_copy,
        estimated_duration_in_millis_copy,
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
        commit_id,
        _class
        );
    if (!result) {
        free(duration_in_millis_copy);
        free(estimated_duration_in_millis_copy);
    }
    return result;
}

void pipelinelatest_run_free(pipelinelatest_run_t *pipelinelatest_run) {
    if(NULL == pipelinelatest_run){
        return ;
    }
    if(pipelinelatest_run->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipelinelatest_run_free");
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
    if (pipelinelatest_run->duration_in_millis) {
        free(pipelinelatest_run->duration_in_millis);
        pipelinelatest_run->duration_in_millis = NULL;
    }
    if (pipelinelatest_run->estimated_duration_in_millis) {
        free(pipelinelatest_run->estimated_duration_in_millis);
        pipelinelatest_run->estimated_duration_in_millis = NULL;
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
    if(cJSON_AddNumberToObject(item, "durationInMillis", *pipelinelatest_run->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipelinelatest_run->estimated_duration_in_millis
    if(pipelinelatest_run->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", *pipelinelatest_run->estimated_duration_in_millis) == NULL) {
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

    // define the local variable for pipelinelatest_run->duration_in_millis
    int *duration_in_millis_local_var = NULL;

    // define the local variable for pipelinelatest_run->estimated_duration_in_millis
    int *estimated_duration_in_millis_local_var = NULL;

    char *en_queue_time_local_str = NULL;

    char *end_time_local_str = NULL;

    char *id_local_str = NULL;

    char *organization_local_str = NULL;

    char *pipeline_local_str = NULL;

    char *result_local_str = NULL;

    char *run_summary_local_str = NULL;

    char *start_time_local_str = NULL;

    char *state_local_str = NULL;

    char *type_local_str = NULL;

    char *commit_id_local_str = NULL;

    char *_class_local_str = NULL;

    // pipelinelatest_run->artifacts
    cJSON *artifacts = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "artifacts");
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
        pipelinelatest_runartifacts_t *artifactsItem = pipelinelatest_runartifacts_parseFromJSON(artifacts_local_nonprimitive);

        list_addElement(artifactsList, artifactsItem);
    }
    }

    // pipelinelatest_run->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "durationInMillis");
    if (cJSON_IsNull(duration_in_millis)) {
        duration_in_millis = NULL;
    }
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    duration_in_millis_local_var = malloc(sizeof(int));
    if(!duration_in_millis_local_var)
    {
        goto end;
    }
    *duration_in_millis_local_var = duration_in_millis->valuedouble;
    }

    // pipelinelatest_run->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "estimatedDurationInMillis");
    if (cJSON_IsNull(estimated_duration_in_millis)) {
        estimated_duration_in_millis = NULL;
    }
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    estimated_duration_in_millis_local_var = malloc(sizeof(int));
    if(!estimated_duration_in_millis_local_var)
    {
        goto end;
    }
    *estimated_duration_in_millis_local_var = estimated_duration_in_millis->valuedouble;
    }

    // pipelinelatest_run->en_queue_time
    cJSON *en_queue_time = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "enQueueTime");
    if (cJSON_IsNull(en_queue_time)) {
        en_queue_time = NULL;
    }
    if (en_queue_time) { 
    if(!cJSON_IsString(en_queue_time) && !cJSON_IsNull(en_queue_time))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "endTime");
    if (cJSON_IsNull(end_time)) {
        end_time = NULL;
    }
    if (end_time) { 
    if(!cJSON_IsString(end_time) && !cJSON_IsNull(end_time))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "pipeline");
    if (cJSON_IsNull(pipeline)) {
        pipeline = NULL;
    }
    if (pipeline) { 
    if(!cJSON_IsString(pipeline) && !cJSON_IsNull(pipeline))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "result");
    if (cJSON_IsNull(result)) {
        result = NULL;
    }
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->run_summary
    cJSON *run_summary = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "runSummary");
    if (cJSON_IsNull(run_summary)) {
        run_summary = NULL;
    }
    if (run_summary) { 
    if(!cJSON_IsString(run_summary) && !cJSON_IsNull(run_summary))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->commit_id
    cJSON *commit_id = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "commitId");
    if (cJSON_IsNull(commit_id)) {
        commit_id = NULL;
    }
    if (commit_id) { 
    if(!cJSON_IsString(commit_id) && !cJSON_IsNull(commit_id))
    {
    goto end; //String
    }
    }

    // pipelinelatest_run->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipelinelatest_runJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (en_queue_time && !cJSON_IsNull(en_queue_time)) en_queue_time_local_str = strdup(en_queue_time->valuestring);
    if (end_time && !cJSON_IsNull(end_time)) end_time_local_str = strdup(end_time->valuestring);
    if (id && !cJSON_IsNull(id)) id_local_str = strdup(id->valuestring);
    if (organization && !cJSON_IsNull(organization)) organization_local_str = strdup(organization->valuestring);
    if (pipeline && !cJSON_IsNull(pipeline)) pipeline_local_str = strdup(pipeline->valuestring);
    if (result && !cJSON_IsNull(result)) result_local_str = strdup(result->valuestring);
    if (run_summary && !cJSON_IsNull(run_summary)) run_summary_local_str = strdup(run_summary->valuestring);
    if (start_time && !cJSON_IsNull(start_time)) start_time_local_str = strdup(start_time->valuestring);
    if (state && !cJSON_IsNull(state)) state_local_str = strdup(state->valuestring);
    if (type && !cJSON_IsNull(type)) type_local_str = strdup(type->valuestring);
    if (commit_id && !cJSON_IsNull(commit_id)) commit_id_local_str = strdup(commit_id->valuestring);
    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    pipelinelatest_run_local_var = pipelinelatest_run_create_internal (
        artifacts ? artifactsList : NULL,
        duration_in_millis_local_var,
        estimated_duration_in_millis_local_var,
        en_queue_time_local_str,
        end_time_local_str,
        id_local_str,
        organization_local_str,
        pipeline_local_str,
        result_local_str,
        run_summary_local_str,
        start_time_local_str,
        state_local_str,
        type_local_str,
        commit_id_local_str,
        _class_local_str
        );

    if (!pipelinelatest_run_local_var) {
        goto end;
    }

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
    if (duration_in_millis_local_var) {
        free(duration_in_millis_local_var);
        duration_in_millis_local_var = NULL;
    }
    if (estimated_duration_in_millis_local_var) {
        free(estimated_duration_in_millis_local_var);
        estimated_duration_in_millis_local_var = NULL;
    }
    if (en_queue_time_local_str) {
        free(en_queue_time_local_str);
        en_queue_time_local_str = NULL;
    }
    if (end_time_local_str) {
        free(end_time_local_str);
        end_time_local_str = NULL;
    }
    if (id_local_str) {
        free(id_local_str);
        id_local_str = NULL;
    }
    if (organization_local_str) {
        free(organization_local_str);
        organization_local_str = NULL;
    }
    if (pipeline_local_str) {
        free(pipeline_local_str);
        pipeline_local_str = NULL;
    }
    if (result_local_str) {
        free(result_local_str);
        result_local_str = NULL;
    }
    if (run_summary_local_str) {
        free(run_summary_local_str);
        run_summary_local_str = NULL;
    }
    if (start_time_local_str) {
        free(start_time_local_str);
        start_time_local_str = NULL;
    }
    if (state_local_str) {
        free(state_local_str);
        state_local_str = NULL;
    }
    if (type_local_str) {
        free(type_local_str);
        type_local_str = NULL;
    }
    if (commit_id_local_str) {
        free(commit_id_local_str);
        commit_id_local_str = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
