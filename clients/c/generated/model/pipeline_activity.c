#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_activity.h"



static pipeline_activity_t *pipeline_activity_create_internal(
    char *_class,
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
    char *commit_id
    ) {
    pipeline_activity_t *pipeline_activity_local_var = malloc(sizeof(pipeline_activity_t));
    if (!pipeline_activity_local_var) {
        return NULL;
    }
    memset(pipeline_activity_local_var, 0, sizeof(pipeline_activity_t));
    pipeline_activity_local_var->_library_owned = 1;
    pipeline_activity_local_var->_class = _class;
    pipeline_activity_local_var->artifacts = artifacts;
    pipeline_activity_local_var->duration_in_millis = duration_in_millis;
    pipeline_activity_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    pipeline_activity_local_var->en_queue_time = en_queue_time;
    pipeline_activity_local_var->end_time = end_time;
    pipeline_activity_local_var->id = id;
    pipeline_activity_local_var->organization = organization;
    pipeline_activity_local_var->pipeline = pipeline;
    pipeline_activity_local_var->result = result;
    pipeline_activity_local_var->run_summary = run_summary;
    pipeline_activity_local_var->start_time = start_time;
    pipeline_activity_local_var->state = state;
    pipeline_activity_local_var->type = type;
    pipeline_activity_local_var->commit_id = commit_id;
    return pipeline_activity_local_var;
}

__attribute__((deprecated)) pipeline_activity_t *pipeline_activity_create(
    char *_class,
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
    char *commit_id
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
    pipeline_activity_t *result = pipeline_activity_create_internal (
        _class,
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
        commit_id
        );
    if (!result) {
        free(duration_in_millis_copy);
        free(estimated_duration_in_millis_copy);
    }
    return result;
}

void pipeline_activity_free(pipeline_activity_t *pipeline_activity) {
    if(NULL == pipeline_activity){
        return ;
    }
    if(pipeline_activity->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_activity_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_activity->_class) {
        free(pipeline_activity->_class);
        pipeline_activity->_class = NULL;
    }
    if (pipeline_activity->artifacts) {
        list_ForEach(listEntry, pipeline_activity->artifacts) {
            pipeline_activityartifacts_free(listEntry->data);
        }
        list_freeList(pipeline_activity->artifacts);
        pipeline_activity->artifacts = NULL;
    }
    if (pipeline_activity->duration_in_millis) {
        free(pipeline_activity->duration_in_millis);
        pipeline_activity->duration_in_millis = NULL;
    }
    if (pipeline_activity->estimated_duration_in_millis) {
        free(pipeline_activity->estimated_duration_in_millis);
        pipeline_activity->estimated_duration_in_millis = NULL;
    }
    if (pipeline_activity->en_queue_time) {
        free(pipeline_activity->en_queue_time);
        pipeline_activity->en_queue_time = NULL;
    }
    if (pipeline_activity->end_time) {
        free(pipeline_activity->end_time);
        pipeline_activity->end_time = NULL;
    }
    if (pipeline_activity->id) {
        free(pipeline_activity->id);
        pipeline_activity->id = NULL;
    }
    if (pipeline_activity->organization) {
        free(pipeline_activity->organization);
        pipeline_activity->organization = NULL;
    }
    if (pipeline_activity->pipeline) {
        free(pipeline_activity->pipeline);
        pipeline_activity->pipeline = NULL;
    }
    if (pipeline_activity->result) {
        free(pipeline_activity->result);
        pipeline_activity->result = NULL;
    }
    if (pipeline_activity->run_summary) {
        free(pipeline_activity->run_summary);
        pipeline_activity->run_summary = NULL;
    }
    if (pipeline_activity->start_time) {
        free(pipeline_activity->start_time);
        pipeline_activity->start_time = NULL;
    }
    if (pipeline_activity->state) {
        free(pipeline_activity->state);
        pipeline_activity->state = NULL;
    }
    if (pipeline_activity->type) {
        free(pipeline_activity->type);
        pipeline_activity->type = NULL;
    }
    if (pipeline_activity->commit_id) {
        free(pipeline_activity->commit_id);
        pipeline_activity->commit_id = NULL;
    }
    free(pipeline_activity);
}

cJSON *pipeline_activity_convertToJSON(pipeline_activity_t *pipeline_activity) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_activity->_class
    if(pipeline_activity->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_activity->_class) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->artifacts
    if(pipeline_activity->artifacts) {
    cJSON *artifacts = cJSON_AddArrayToObject(item, "artifacts");
    if(artifacts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *artifactsListEntry;
    if (pipeline_activity->artifacts) {
    list_ForEach(artifactsListEntry, pipeline_activity->artifacts) {
    cJSON *itemLocal = pipeline_activityartifacts_convertToJSON(artifactsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(artifacts, itemLocal);
    }
    }
    }


    // pipeline_activity->duration_in_millis
    if(pipeline_activity->duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "durationInMillis", *pipeline_activity->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_activity->estimated_duration_in_millis
    if(pipeline_activity->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", *pipeline_activity->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_activity->en_queue_time
    if(pipeline_activity->en_queue_time) {
    if(cJSON_AddStringToObject(item, "enQueueTime", pipeline_activity->en_queue_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->end_time
    if(pipeline_activity->end_time) {
    if(cJSON_AddStringToObject(item, "endTime", pipeline_activity->end_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->id
    if(pipeline_activity->id) {
    if(cJSON_AddStringToObject(item, "id", pipeline_activity->id) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->organization
    if(pipeline_activity->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipeline_activity->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->pipeline
    if(pipeline_activity->pipeline) {
    if(cJSON_AddStringToObject(item, "pipeline", pipeline_activity->pipeline) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->result
    if(pipeline_activity->result) {
    if(cJSON_AddStringToObject(item, "result", pipeline_activity->result) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->run_summary
    if(pipeline_activity->run_summary) {
    if(cJSON_AddStringToObject(item, "runSummary", pipeline_activity->run_summary) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->start_time
    if(pipeline_activity->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", pipeline_activity->start_time) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->state
    if(pipeline_activity->state) {
    if(cJSON_AddStringToObject(item, "state", pipeline_activity->state) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->type
    if(pipeline_activity->type) {
    if(cJSON_AddStringToObject(item, "type", pipeline_activity->type) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_activity->commit_id
    if(pipeline_activity->commit_id) {
    if(cJSON_AddStringToObject(item, "commitId", pipeline_activity->commit_id) == NULL) {
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

pipeline_activity_t *pipeline_activity_parseFromJSON(cJSON *pipeline_activityJSON){

    pipeline_activity_t *pipeline_activity_local_var = NULL;

    char *_class_local_str = NULL;

    // define the local list for pipeline_activity->artifacts
    list_t *artifactsList = NULL;

    // define the local variable for pipeline_activity->duration_in_millis
    int *duration_in_millis_local_var = NULL;

    // define the local variable for pipeline_activity->estimated_duration_in_millis
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

    // pipeline_activity->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // pipeline_activity->artifacts
    cJSON *artifacts = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "artifacts");
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
        pipeline_activityartifacts_t *artifactsItem = pipeline_activityartifacts_parseFromJSON(artifacts_local_nonprimitive);

        list_addElement(artifactsList, artifactsItem);
    }
    }

    // pipeline_activity->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "durationInMillis");
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

    // pipeline_activity->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "estimatedDurationInMillis");
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

    // pipeline_activity->en_queue_time
    cJSON *en_queue_time = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "enQueueTime");
    if (cJSON_IsNull(en_queue_time)) {
        en_queue_time = NULL;
    }
    if (en_queue_time) { 
    if(!cJSON_IsString(en_queue_time) && !cJSON_IsNull(en_queue_time))
    {
    goto end; //String
    }
    }

    // pipeline_activity->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "endTime");
    if (cJSON_IsNull(end_time)) {
        end_time = NULL;
    }
    if (end_time) { 
    if(!cJSON_IsString(end_time) && !cJSON_IsNull(end_time))
    {
    goto end; //String
    }
    }

    // pipeline_activity->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // pipeline_activity->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline_activity->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "pipeline");
    if (cJSON_IsNull(pipeline)) {
        pipeline = NULL;
    }
    if (pipeline) { 
    if(!cJSON_IsString(pipeline) && !cJSON_IsNull(pipeline))
    {
    goto end; //String
    }
    }

    // pipeline_activity->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "result");
    if (cJSON_IsNull(result)) {
        result = NULL;
    }
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // pipeline_activity->run_summary
    cJSON *run_summary = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "runSummary");
    if (cJSON_IsNull(run_summary)) {
        run_summary = NULL;
    }
    if (run_summary) { 
    if(!cJSON_IsString(run_summary) && !cJSON_IsNull(run_summary))
    {
    goto end; //String
    }
    }

    // pipeline_activity->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //String
    }
    }

    // pipeline_activity->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // pipeline_activity->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // pipeline_activity->commit_id
    cJSON *commit_id = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "commitId");
    if (cJSON_IsNull(commit_id)) {
        commit_id = NULL;
    }
    if (commit_id) { 
    if(!cJSON_IsString(commit_id) && !cJSON_IsNull(commit_id))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
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

    pipeline_activity_local_var = pipeline_activity_create_internal (
        _class_local_str,
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
        commit_id_local_str
        );

    if (!pipeline_activity_local_var) {
        goto end;
    }

    return pipeline_activity_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (artifactsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, artifactsList) {
            pipeline_activityartifacts_free(listEntry->data);
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
    return NULL;

}
