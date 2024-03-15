#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_activity.h"



pipeline_activity_t *pipeline_activity_create(
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
    pipeline_activity_t *pipeline_activity_local_var = malloc(sizeof(pipeline_activity_t));
    if (!pipeline_activity_local_var) {
        return NULL;
    }
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


void pipeline_activity_free(pipeline_activity_t *pipeline_activity) {
    if(NULL == pipeline_activity){
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
    if(cJSON_AddNumberToObject(item, "durationInMillis", pipeline_activity->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_activity->estimated_duration_in_millis
    if(pipeline_activity->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", pipeline_activity->estimated_duration_in_millis) == NULL) {
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

    // define the local list for pipeline_activity->artifacts
    list_t *artifactsList = NULL;

    // pipeline_activity->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // pipeline_activity->artifacts
    cJSON *artifacts = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "artifacts");
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
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_activity->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "estimatedDurationInMillis");
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_activity->en_queue_time
    cJSON *en_queue_time = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "enQueueTime");
    if (en_queue_time) { 
    if(!cJSON_IsString(en_queue_time) && !cJSON_IsNull(en_queue_time))
    {
    goto end; //String
    }
    }

    // pipeline_activity->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "endTime");
    if (end_time) { 
    if(!cJSON_IsString(end_time) && !cJSON_IsNull(end_time))
    {
    goto end; //String
    }
    }

    // pipeline_activity->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // pipeline_activity->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "organization");
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline_activity->pipeline
    cJSON *pipeline = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "pipeline");
    if (pipeline) { 
    if(!cJSON_IsString(pipeline) && !cJSON_IsNull(pipeline))
    {
    goto end; //String
    }
    }

    // pipeline_activity->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "result");
    if (result) { 
    if(!cJSON_IsString(result) && !cJSON_IsNull(result))
    {
    goto end; //String
    }
    }

    // pipeline_activity->run_summary
    cJSON *run_summary = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "runSummary");
    if (run_summary) { 
    if(!cJSON_IsString(run_summary) && !cJSON_IsNull(run_summary))
    {
    goto end; //String
    }
    }

    // pipeline_activity->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "startTime");
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //String
    }
    }

    // pipeline_activity->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "state");
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // pipeline_activity->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // pipeline_activity->commit_id
    cJSON *commit_id = cJSON_GetObjectItemCaseSensitive(pipeline_activityJSON, "commitId");
    if (commit_id) { 
    if(!cJSON_IsString(commit_id) && !cJSON_IsNull(commit_id))
    {
    goto end; //String
    }
    }


    pipeline_activity_local_var = pipeline_activity_create (
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

    return pipeline_activity_local_var;
end:
    if (artifactsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, artifactsList) {
            pipeline_activityartifacts_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(artifactsList);
        artifactsList = NULL;
    }
    return NULL;

}
