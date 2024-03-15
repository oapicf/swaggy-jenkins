#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_branchesitem.h"



pipeline_branchesitem_t *pipeline_branchesitem_create(
    char *display_name,
    int estimated_duration_in_millis,
    char *name,
    int weather_score,
    pipeline_branchesitemlatest_run_t *latest_run,
    char *organization,
    pipeline_branchesitempull_request_t *pull_request,
    int total_number_of_pull_requests,
    char *_class
    ) {
    pipeline_branchesitem_t *pipeline_branchesitem_local_var = malloc(sizeof(pipeline_branchesitem_t));
    if (!pipeline_branchesitem_local_var) {
        return NULL;
    }
    pipeline_branchesitem_local_var->display_name = display_name;
    pipeline_branchesitem_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    pipeline_branchesitem_local_var->name = name;
    pipeline_branchesitem_local_var->weather_score = weather_score;
    pipeline_branchesitem_local_var->latest_run = latest_run;
    pipeline_branchesitem_local_var->organization = organization;
    pipeline_branchesitem_local_var->pull_request = pull_request;
    pipeline_branchesitem_local_var->total_number_of_pull_requests = total_number_of_pull_requests;
    pipeline_branchesitem_local_var->_class = _class;

    return pipeline_branchesitem_local_var;
}


void pipeline_branchesitem_free(pipeline_branchesitem_t *pipeline_branchesitem) {
    if(NULL == pipeline_branchesitem){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_branchesitem->display_name) {
        free(pipeline_branchesitem->display_name);
        pipeline_branchesitem->display_name = NULL;
    }
    if (pipeline_branchesitem->name) {
        free(pipeline_branchesitem->name);
        pipeline_branchesitem->name = NULL;
    }
    if (pipeline_branchesitem->latest_run) {
        pipeline_branchesitemlatest_run_free(pipeline_branchesitem->latest_run);
        pipeline_branchesitem->latest_run = NULL;
    }
    if (pipeline_branchesitem->organization) {
        free(pipeline_branchesitem->organization);
        pipeline_branchesitem->organization = NULL;
    }
    if (pipeline_branchesitem->pull_request) {
        pipeline_branchesitempull_request_free(pipeline_branchesitem->pull_request);
        pipeline_branchesitem->pull_request = NULL;
    }
    if (pipeline_branchesitem->_class) {
        free(pipeline_branchesitem->_class);
        pipeline_branchesitem->_class = NULL;
    }
    free(pipeline_branchesitem);
}

cJSON *pipeline_branchesitem_convertToJSON(pipeline_branchesitem_t *pipeline_branchesitem) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_branchesitem->display_name
    if(pipeline_branchesitem->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", pipeline_branchesitem->display_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitem->estimated_duration_in_millis
    if(pipeline_branchesitem->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", pipeline_branchesitem->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_branchesitem->name
    if(pipeline_branchesitem->name) {
    if(cJSON_AddStringToObject(item, "name", pipeline_branchesitem->name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitem->weather_score
    if(pipeline_branchesitem->weather_score) {
    if(cJSON_AddNumberToObject(item, "weatherScore", pipeline_branchesitem->weather_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_branchesitem->latest_run
    if(pipeline_branchesitem->latest_run) {
    cJSON *latest_run_local_JSON = pipeline_branchesitemlatest_run_convertToJSON(pipeline_branchesitem->latest_run);
    if(latest_run_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "latestRun", latest_run_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_branchesitem->organization
    if(pipeline_branchesitem->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipeline_branchesitem->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitem->pull_request
    if(pipeline_branchesitem->pull_request) {
    cJSON *pull_request_local_JSON = pipeline_branchesitempull_request_convertToJSON(pipeline_branchesitem->pull_request);
    if(pull_request_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pullRequest", pull_request_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_branchesitem->total_number_of_pull_requests
    if(pipeline_branchesitem->total_number_of_pull_requests) {
    if(cJSON_AddNumberToObject(item, "totalNumberOfPullRequests", pipeline_branchesitem->total_number_of_pull_requests) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_branchesitem->_class
    if(pipeline_branchesitem->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_branchesitem->_class) == NULL) {
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

pipeline_branchesitem_t *pipeline_branchesitem_parseFromJSON(cJSON *pipeline_branchesitemJSON){

    pipeline_branchesitem_t *pipeline_branchesitem_local_var = NULL;

    // define the local variable for pipeline_branchesitem->latest_run
    pipeline_branchesitemlatest_run_t *latest_run_local_nonprim = NULL;

    // define the local variable for pipeline_branchesitem->pull_request
    pipeline_branchesitempull_request_t *pull_request_local_nonprim = NULL;

    // pipeline_branchesitem->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitem->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "estimatedDurationInMillis");
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_branchesitem->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitem->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "weatherScore");
    if (weather_score) { 
    if(!cJSON_IsNumber(weather_score))
    {
    goto end; //Numeric
    }
    }

    // pipeline_branchesitem->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "latestRun");
    if (latest_run) { 
    latest_run_local_nonprim = pipeline_branchesitemlatest_run_parseFromJSON(latest_run); //nonprimitive
    }

    // pipeline_branchesitem->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "organization");
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitem->pull_request
    cJSON *pull_request = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "pullRequest");
    if (pull_request) { 
    pull_request_local_nonprim = pipeline_branchesitempull_request_parseFromJSON(pull_request); //nonprimitive
    }

    // pipeline_branchesitem->total_number_of_pull_requests
    cJSON *total_number_of_pull_requests = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "totalNumberOfPullRequests");
    if (total_number_of_pull_requests) { 
    if(!cJSON_IsNumber(total_number_of_pull_requests))
    {
    goto end; //Numeric
    }
    }

    // pipeline_branchesitem->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    pipeline_branchesitem_local_var = pipeline_branchesitem_create (
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        estimated_duration_in_millis ? estimated_duration_in_millis->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        weather_score ? weather_score->valuedouble : 0,
        latest_run ? latest_run_local_nonprim : NULL,
        organization && !cJSON_IsNull(organization) ? strdup(organization->valuestring) : NULL,
        pull_request ? pull_request_local_nonprim : NULL,
        total_number_of_pull_requests ? total_number_of_pull_requests->valuedouble : 0,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return pipeline_branchesitem_local_var;
end:
    if (latest_run_local_nonprim) {
        pipeline_branchesitemlatest_run_free(latest_run_local_nonprim);
        latest_run_local_nonprim = NULL;
    }
    if (pull_request_local_nonprim) {
        pipeline_branchesitempull_request_free(pull_request_local_nonprim);
        pull_request_local_nonprim = NULL;
    }
    return NULL;

}
