#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "multibranch_pipeline.h"



static multibranch_pipeline_t *multibranch_pipeline_create_internal(
    char *display_name,
    int estimated_duration_in_millis,
    char *latest_run,
    char *name,
    char *organization,
    int weather_score,
    list_t *branch_names,
    int number_of_failing_branches,
    int number_of_failing_pull_requests,
    int number_of_successful_branches,
    int number_of_successful_pull_requests,
    int total_number_of_branches,
    int total_number_of_pull_requests,
    char *_class
    ) {
    multibranch_pipeline_t *multibranch_pipeline_local_var = malloc(sizeof(multibranch_pipeline_t));
    if (!multibranch_pipeline_local_var) {
        return NULL;
    }
    multibranch_pipeline_local_var->display_name = display_name;
    multibranch_pipeline_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    multibranch_pipeline_local_var->latest_run = latest_run;
    multibranch_pipeline_local_var->name = name;
    multibranch_pipeline_local_var->organization = organization;
    multibranch_pipeline_local_var->weather_score = weather_score;
    multibranch_pipeline_local_var->branch_names = branch_names;
    multibranch_pipeline_local_var->number_of_failing_branches = number_of_failing_branches;
    multibranch_pipeline_local_var->number_of_failing_pull_requests = number_of_failing_pull_requests;
    multibranch_pipeline_local_var->number_of_successful_branches = number_of_successful_branches;
    multibranch_pipeline_local_var->number_of_successful_pull_requests = number_of_successful_pull_requests;
    multibranch_pipeline_local_var->total_number_of_branches = total_number_of_branches;
    multibranch_pipeline_local_var->total_number_of_pull_requests = total_number_of_pull_requests;
    multibranch_pipeline_local_var->_class = _class;

    multibranch_pipeline_local_var->_library_owned = 1;
    return multibranch_pipeline_local_var;
}

__attribute__((deprecated)) multibranch_pipeline_t *multibranch_pipeline_create(
    char *display_name,
    int estimated_duration_in_millis,
    char *latest_run,
    char *name,
    char *organization,
    int weather_score,
    list_t *branch_names,
    int number_of_failing_branches,
    int number_of_failing_pull_requests,
    int number_of_successful_branches,
    int number_of_successful_pull_requests,
    int total_number_of_branches,
    int total_number_of_pull_requests,
    char *_class
    ) {
    return multibranch_pipeline_create_internal (
        display_name,
        estimated_duration_in_millis,
        latest_run,
        name,
        organization,
        weather_score,
        branch_names,
        number_of_failing_branches,
        number_of_failing_pull_requests,
        number_of_successful_branches,
        number_of_successful_pull_requests,
        total_number_of_branches,
        total_number_of_pull_requests,
        _class
        );
}

void multibranch_pipeline_free(multibranch_pipeline_t *multibranch_pipeline) {
    if(NULL == multibranch_pipeline){
        return ;
    }
    if(multibranch_pipeline->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "multibranch_pipeline_free");
        return ;
    }
    listEntry_t *listEntry;
    if (multibranch_pipeline->display_name) {
        free(multibranch_pipeline->display_name);
        multibranch_pipeline->display_name = NULL;
    }
    if (multibranch_pipeline->latest_run) {
        free(multibranch_pipeline->latest_run);
        multibranch_pipeline->latest_run = NULL;
    }
    if (multibranch_pipeline->name) {
        free(multibranch_pipeline->name);
        multibranch_pipeline->name = NULL;
    }
    if (multibranch_pipeline->organization) {
        free(multibranch_pipeline->organization);
        multibranch_pipeline->organization = NULL;
    }
    if (multibranch_pipeline->branch_names) {
        list_ForEach(listEntry, multibranch_pipeline->branch_names) {
            free(listEntry->data);
        }
        list_freeList(multibranch_pipeline->branch_names);
        multibranch_pipeline->branch_names = NULL;
    }
    if (multibranch_pipeline->_class) {
        free(multibranch_pipeline->_class);
        multibranch_pipeline->_class = NULL;
    }
    free(multibranch_pipeline);
}

cJSON *multibranch_pipeline_convertToJSON(multibranch_pipeline_t *multibranch_pipeline) {
    cJSON *item = cJSON_CreateObject();

    // multibranch_pipeline->display_name
    if(multibranch_pipeline->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", multibranch_pipeline->display_name) == NULL) {
    goto fail; //String
    }
    }


    // multibranch_pipeline->estimated_duration_in_millis
    if(multibranch_pipeline->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", multibranch_pipeline->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->latest_run
    if(multibranch_pipeline->latest_run) {
    if(cJSON_AddStringToObject(item, "latestRun", multibranch_pipeline->latest_run) == NULL) {
    goto fail; //String
    }
    }


    // multibranch_pipeline->name
    if(multibranch_pipeline->name) {
    if(cJSON_AddStringToObject(item, "name", multibranch_pipeline->name) == NULL) {
    goto fail; //String
    }
    }


    // multibranch_pipeline->organization
    if(multibranch_pipeline->organization) {
    if(cJSON_AddStringToObject(item, "organization", multibranch_pipeline->organization) == NULL) {
    goto fail; //String
    }
    }


    // multibranch_pipeline->weather_score
    if(multibranch_pipeline->weather_score) {
    if(cJSON_AddNumberToObject(item, "weatherScore", multibranch_pipeline->weather_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->branch_names
    if(multibranch_pipeline->branch_names) {
    cJSON *branch_names = cJSON_AddArrayToObject(item, "branchNames");
    if(branch_names == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *branch_namesListEntry;
    list_ForEach(branch_namesListEntry, multibranch_pipeline->branch_names) {
    if(cJSON_AddStringToObject(branch_names, "", branch_namesListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // multibranch_pipeline->number_of_failing_branches
    if(multibranch_pipeline->number_of_failing_branches) {
    if(cJSON_AddNumberToObject(item, "numberOfFailingBranches", multibranch_pipeline->number_of_failing_branches) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->number_of_failing_pull_requests
    if(multibranch_pipeline->number_of_failing_pull_requests) {
    if(cJSON_AddNumberToObject(item, "numberOfFailingPullRequests", multibranch_pipeline->number_of_failing_pull_requests) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->number_of_successful_branches
    if(multibranch_pipeline->number_of_successful_branches) {
    if(cJSON_AddNumberToObject(item, "numberOfSuccessfulBranches", multibranch_pipeline->number_of_successful_branches) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->number_of_successful_pull_requests
    if(multibranch_pipeline->number_of_successful_pull_requests) {
    if(cJSON_AddNumberToObject(item, "numberOfSuccessfulPullRequests", multibranch_pipeline->number_of_successful_pull_requests) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->total_number_of_branches
    if(multibranch_pipeline->total_number_of_branches) {
    if(cJSON_AddNumberToObject(item, "totalNumberOfBranches", multibranch_pipeline->total_number_of_branches) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->total_number_of_pull_requests
    if(multibranch_pipeline->total_number_of_pull_requests) {
    if(cJSON_AddNumberToObject(item, "totalNumberOfPullRequests", multibranch_pipeline->total_number_of_pull_requests) == NULL) {
    goto fail; //Numeric
    }
    }


    // multibranch_pipeline->_class
    if(multibranch_pipeline->_class) {
    if(cJSON_AddStringToObject(item, "_class", multibranch_pipeline->_class) == NULL) {
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

multibranch_pipeline_t *multibranch_pipeline_parseFromJSON(cJSON *multibranch_pipelineJSON){

    multibranch_pipeline_t *multibranch_pipeline_local_var = NULL;

    // define the local list for multibranch_pipeline->branch_names
    list_t *branch_namesList = NULL;

    // multibranch_pipeline->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // multibranch_pipeline->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "estimatedDurationInMillis");
    if (cJSON_IsNull(estimated_duration_in_millis)) {
        estimated_duration_in_millis = NULL;
    }
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "latestRun");
    if (cJSON_IsNull(latest_run)) {
        latest_run = NULL;
    }
    if (latest_run) { 
    if(!cJSON_IsString(latest_run) && !cJSON_IsNull(latest_run))
    {
    goto end; //String
    }
    }

    // multibranch_pipeline->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // multibranch_pipeline->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // multibranch_pipeline->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "weatherScore");
    if (cJSON_IsNull(weather_score)) {
        weather_score = NULL;
    }
    if (weather_score) { 
    if(!cJSON_IsNumber(weather_score))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->branch_names
    cJSON *branch_names = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "branchNames");
    if (cJSON_IsNull(branch_names)) {
        branch_names = NULL;
    }
    if (branch_names) { 
    cJSON *branch_names_local = NULL;
    if(!cJSON_IsArray(branch_names)) {
        goto end;//primitive container
    }
    branch_namesList = list_createList();

    cJSON_ArrayForEach(branch_names_local, branch_names)
    {
        if(!cJSON_IsString(branch_names_local))
        {
            goto end;
        }
        list_addElement(branch_namesList , strdup(branch_names_local->valuestring));
    }
    }

    // multibranch_pipeline->number_of_failing_branches
    cJSON *number_of_failing_branches = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "numberOfFailingBranches");
    if (cJSON_IsNull(number_of_failing_branches)) {
        number_of_failing_branches = NULL;
    }
    if (number_of_failing_branches) { 
    if(!cJSON_IsNumber(number_of_failing_branches))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->number_of_failing_pull_requests
    cJSON *number_of_failing_pull_requests = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "numberOfFailingPullRequests");
    if (cJSON_IsNull(number_of_failing_pull_requests)) {
        number_of_failing_pull_requests = NULL;
    }
    if (number_of_failing_pull_requests) { 
    if(!cJSON_IsNumber(number_of_failing_pull_requests))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->number_of_successful_branches
    cJSON *number_of_successful_branches = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "numberOfSuccessfulBranches");
    if (cJSON_IsNull(number_of_successful_branches)) {
        number_of_successful_branches = NULL;
    }
    if (number_of_successful_branches) { 
    if(!cJSON_IsNumber(number_of_successful_branches))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->number_of_successful_pull_requests
    cJSON *number_of_successful_pull_requests = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "numberOfSuccessfulPullRequests");
    if (cJSON_IsNull(number_of_successful_pull_requests)) {
        number_of_successful_pull_requests = NULL;
    }
    if (number_of_successful_pull_requests) { 
    if(!cJSON_IsNumber(number_of_successful_pull_requests))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->total_number_of_branches
    cJSON *total_number_of_branches = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "totalNumberOfBranches");
    if (cJSON_IsNull(total_number_of_branches)) {
        total_number_of_branches = NULL;
    }
    if (total_number_of_branches) { 
    if(!cJSON_IsNumber(total_number_of_branches))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->total_number_of_pull_requests
    cJSON *total_number_of_pull_requests = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "totalNumberOfPullRequests");
    if (cJSON_IsNull(total_number_of_pull_requests)) {
        total_number_of_pull_requests = NULL;
    }
    if (total_number_of_pull_requests) { 
    if(!cJSON_IsNumber(total_number_of_pull_requests))
    {
    goto end; //Numeric
    }
    }

    // multibranch_pipeline->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(multibranch_pipelineJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    multibranch_pipeline_local_var = multibranch_pipeline_create_internal (
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        estimated_duration_in_millis ? estimated_duration_in_millis->valuedouble : 0,
        latest_run && !cJSON_IsNull(latest_run) ? strdup(latest_run->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        organization && !cJSON_IsNull(organization) ? strdup(organization->valuestring) : NULL,
        weather_score ? weather_score->valuedouble : 0,
        branch_names ? branch_namesList : NULL,
        number_of_failing_branches ? number_of_failing_branches->valuedouble : 0,
        number_of_failing_pull_requests ? number_of_failing_pull_requests->valuedouble : 0,
        number_of_successful_branches ? number_of_successful_branches->valuedouble : 0,
        number_of_successful_pull_requests ? number_of_successful_pull_requests->valuedouble : 0,
        total_number_of_branches ? total_number_of_branches->valuedouble : 0,
        total_number_of_pull_requests ? total_number_of_pull_requests->valuedouble : 0,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return multibranch_pipeline_local_var;
end:
    if (branch_namesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, branch_namesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(branch_namesList);
        branch_namesList = NULL;
    }
    return NULL;

}
