#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_branchesitem.h"



static pipeline_branchesitem_t *pipeline_branchesitem_create_internal(
    char *display_name,
    int *estimated_duration_in_millis,
    char *name,
    int *weather_score,
    pipeline_branchesitemlatest_run_t *latest_run,
    char *organization,
    pipeline_branchesitempull_request_t *pull_request,
    int *total_number_of_pull_requests,
    char *_class
    ) {
    pipeline_branchesitem_t *pipeline_branchesitem_local_var = malloc(sizeof(pipeline_branchesitem_t));
    if (!pipeline_branchesitem_local_var) {
        return NULL;
    }
    memset(pipeline_branchesitem_local_var, 0, sizeof(pipeline_branchesitem_t));
    pipeline_branchesitem_local_var->_library_owned = 1;
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

__attribute__((deprecated)) pipeline_branchesitem_t *pipeline_branchesitem_create(
    char *display_name,
    int *estimated_duration_in_millis,
    char *name,
    int *weather_score,
    pipeline_branchesitemlatest_run_t *latest_run,
    char *organization,
    pipeline_branchesitempull_request_t *pull_request,
    int *total_number_of_pull_requests,
    char *_class
    ) {
    int *estimated_duration_in_millis_copy = NULL;
    if (estimated_duration_in_millis) {
        estimated_duration_in_millis_copy = malloc(sizeof(int));
        if (estimated_duration_in_millis_copy) *estimated_duration_in_millis_copy = *estimated_duration_in_millis;
    }
    int *weather_score_copy = NULL;
    if (weather_score) {
        weather_score_copy = malloc(sizeof(int));
        if (weather_score_copy) *weather_score_copy = *weather_score;
    }
    int *total_number_of_pull_requests_copy = NULL;
    if (total_number_of_pull_requests) {
        total_number_of_pull_requests_copy = malloc(sizeof(int));
        if (total_number_of_pull_requests_copy) *total_number_of_pull_requests_copy = *total_number_of_pull_requests;
    }
    pipeline_branchesitem_t *result = pipeline_branchesitem_create_internal (
        display_name,
        estimated_duration_in_millis_copy,
        name,
        weather_score_copy,
        latest_run,
        organization,
        pull_request,
        total_number_of_pull_requests_copy,
        _class
        );
    if (!result) {
        free(estimated_duration_in_millis_copy);
        free(weather_score_copy);
        free(total_number_of_pull_requests_copy);
    }
    return result;
}

void pipeline_branchesitem_free(pipeline_branchesitem_t *pipeline_branchesitem) {
    if(NULL == pipeline_branchesitem){
        return ;
    }
    if(pipeline_branchesitem->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_branchesitem_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_branchesitem->display_name) {
        free(pipeline_branchesitem->display_name);
        pipeline_branchesitem->display_name = NULL;
    }
    if (pipeline_branchesitem->estimated_duration_in_millis) {
        free(pipeline_branchesitem->estimated_duration_in_millis);
        pipeline_branchesitem->estimated_duration_in_millis = NULL;
    }
    if (pipeline_branchesitem->name) {
        free(pipeline_branchesitem->name);
        pipeline_branchesitem->name = NULL;
    }
    if (pipeline_branchesitem->weather_score) {
        free(pipeline_branchesitem->weather_score);
        pipeline_branchesitem->weather_score = NULL;
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
    if (pipeline_branchesitem->total_number_of_pull_requests) {
        free(pipeline_branchesitem->total_number_of_pull_requests);
        pipeline_branchesitem->total_number_of_pull_requests = NULL;
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
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", *pipeline_branchesitem->estimated_duration_in_millis) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "weatherScore", *pipeline_branchesitem->weather_score) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "totalNumberOfPullRequests", *pipeline_branchesitem->total_number_of_pull_requests) == NULL) {
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

    char *display_name_local_str = NULL;

    // define the local variable for pipeline_branchesitem->estimated_duration_in_millis
    int *estimated_duration_in_millis_local_var = NULL;

    char *name_local_str = NULL;

    // define the local variable for pipeline_branchesitem->weather_score
    int *weather_score_local_var = NULL;

    // define the local variable for pipeline_branchesitem->latest_run
    pipeline_branchesitemlatest_run_t *latest_run_local_nonprim = NULL;

    char *organization_local_str = NULL;

    // define the local variable for pipeline_branchesitem->pull_request
    pipeline_branchesitempull_request_t *pull_request_local_nonprim = NULL;

    // define the local variable for pipeline_branchesitem->total_number_of_pull_requests
    int *total_number_of_pull_requests_local_var = NULL;

    char *_class_local_str = NULL;

    // pipeline_branchesitem->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitem->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "estimatedDurationInMillis");
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

    // pipeline_branchesitem->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitem->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "weatherScore");
    if (cJSON_IsNull(weather_score)) {
        weather_score = NULL;
    }
    if (weather_score) { 
    if(!cJSON_IsNumber(weather_score))
    {
    goto end; //Numeric
    }
    weather_score_local_var = malloc(sizeof(int));
    if(!weather_score_local_var)
    {
        goto end;
    }
    *weather_score_local_var = weather_score->valuedouble;
    }

    // pipeline_branchesitem->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "latestRun");
    if (cJSON_IsNull(latest_run)) {
        latest_run = NULL;
    }
    if (latest_run) { 
    latest_run_local_nonprim = pipeline_branchesitemlatest_run_parseFromJSON(latest_run); //nonprimitive
    }

    // pipeline_branchesitem->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitem->pull_request
    cJSON *pull_request = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "pullRequest");
    if (cJSON_IsNull(pull_request)) {
        pull_request = NULL;
    }
    if (pull_request) { 
    pull_request_local_nonprim = pipeline_branchesitempull_request_parseFromJSON(pull_request); //nonprimitive
    }

    // pipeline_branchesitem->total_number_of_pull_requests
    cJSON *total_number_of_pull_requests = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "totalNumberOfPullRequests");
    if (cJSON_IsNull(total_number_of_pull_requests)) {
        total_number_of_pull_requests = NULL;
    }
    if (total_number_of_pull_requests) { 
    if(!cJSON_IsNumber(total_number_of_pull_requests))
    {
    goto end; //Numeric
    }
    total_number_of_pull_requests_local_var = malloc(sizeof(int));
    if(!total_number_of_pull_requests_local_var)
    {
        goto end;
    }
    *total_number_of_pull_requests_local_var = total_number_of_pull_requests->valuedouble;
    }

    // pipeline_branchesitem->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitemJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (display_name && !cJSON_IsNull(display_name)) display_name_local_str = strdup(display_name->valuestring);
    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (organization && !cJSON_IsNull(organization)) organization_local_str = strdup(organization->valuestring);
    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    pipeline_branchesitem_local_var = pipeline_branchesitem_create_internal (
        display_name_local_str,
        estimated_duration_in_millis_local_var,
        name_local_str,
        weather_score_local_var,
        latest_run ? latest_run_local_nonprim : NULL,
        organization_local_str,
        pull_request ? pull_request_local_nonprim : NULL,
        total_number_of_pull_requests_local_var,
        _class_local_str
        );

    if (!pipeline_branchesitem_local_var) {
        goto end;
    }

    return pipeline_branchesitem_local_var;
end:
    if (display_name_local_str) {
        free(display_name_local_str);
        display_name_local_str = NULL;
    }
    if (estimated_duration_in_millis_local_var) {
        free(estimated_duration_in_millis_local_var);
        estimated_duration_in_millis_local_var = NULL;
    }
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (weather_score_local_var) {
        free(weather_score_local_var);
        weather_score_local_var = NULL;
    }
    if (latest_run_local_nonprim) {
        pipeline_branchesitemlatest_run_free(latest_run_local_nonprim);
        latest_run_local_nonprim = NULL;
    }
    if (organization_local_str) {
        free(organization_local_str);
        organization_local_str = NULL;
    }
    if (pull_request_local_nonprim) {
        pipeline_branchesitempull_request_free(pull_request_local_nonprim);
        pull_request_local_nonprim = NULL;
    }
    if (total_number_of_pull_requests_local_var) {
        free(total_number_of_pull_requests_local_var);
        total_number_of_pull_requests_local_var = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
