#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "branch_impl.h"



static branch_impl_t *branch_impl_create_internal(
    char *_class,
    char *display_name,
    int *estimated_duration_in_millis,
    char *full_display_name,
    char *full_name,
    char *name,
    char *organization,
    list_t *parameters,
    branch_implpermissions_t *permissions,
    int *weather_score,
    char *pull_request,
    branch_impllinks_t *_links,
    pipeline_run_impl_t *latest_run
    ) {
    branch_impl_t *branch_impl_local_var = malloc(sizeof(branch_impl_t));
    if (!branch_impl_local_var) {
        return NULL;
    }
    memset(branch_impl_local_var, 0, sizeof(branch_impl_t));
    branch_impl_local_var->_library_owned = 1;
    branch_impl_local_var->_class = _class;
    branch_impl_local_var->display_name = display_name;
    branch_impl_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    branch_impl_local_var->full_display_name = full_display_name;
    branch_impl_local_var->full_name = full_name;
    branch_impl_local_var->name = name;
    branch_impl_local_var->organization = organization;
    branch_impl_local_var->parameters = parameters;
    branch_impl_local_var->permissions = permissions;
    branch_impl_local_var->weather_score = weather_score;
    branch_impl_local_var->pull_request = pull_request;
    branch_impl_local_var->_links = _links;
    branch_impl_local_var->latest_run = latest_run;
    return branch_impl_local_var;
}

__attribute__((deprecated)) branch_impl_t *branch_impl_create(
    char *_class,
    char *display_name,
    int *estimated_duration_in_millis,
    char *full_display_name,
    char *full_name,
    char *name,
    char *organization,
    list_t *parameters,
    branch_implpermissions_t *permissions,
    int *weather_score,
    char *pull_request,
    branch_impllinks_t *_links,
    pipeline_run_impl_t *latest_run
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
    branch_impl_t *result = branch_impl_create_internal (
        _class,
        display_name,
        estimated_duration_in_millis_copy,
        full_display_name,
        full_name,
        name,
        organization,
        parameters,
        permissions,
        weather_score_copy,
        pull_request,
        _links,
        latest_run
        );
    if (!result) {
        free(estimated_duration_in_millis_copy);
        free(weather_score_copy);
    }
    return result;
}

void branch_impl_free(branch_impl_t *branch_impl) {
    if(NULL == branch_impl){
        return ;
    }
    if(branch_impl->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "branch_impl_free");
        return ;
    }
    listEntry_t *listEntry;
    if (branch_impl->_class) {
        free(branch_impl->_class);
        branch_impl->_class = NULL;
    }
    if (branch_impl->display_name) {
        free(branch_impl->display_name);
        branch_impl->display_name = NULL;
    }
    if (branch_impl->estimated_duration_in_millis) {
        free(branch_impl->estimated_duration_in_millis);
        branch_impl->estimated_duration_in_millis = NULL;
    }
    if (branch_impl->full_display_name) {
        free(branch_impl->full_display_name);
        branch_impl->full_display_name = NULL;
    }
    if (branch_impl->full_name) {
        free(branch_impl->full_name);
        branch_impl->full_name = NULL;
    }
    if (branch_impl->name) {
        free(branch_impl->name);
        branch_impl->name = NULL;
    }
    if (branch_impl->organization) {
        free(branch_impl->organization);
        branch_impl->organization = NULL;
    }
    if (branch_impl->parameters) {
        list_ForEach(listEntry, branch_impl->parameters) {
            string_parameter_definition_free(listEntry->data);
        }
        list_freeList(branch_impl->parameters);
        branch_impl->parameters = NULL;
    }
    if (branch_impl->permissions) {
        branch_implpermissions_free(branch_impl->permissions);
        branch_impl->permissions = NULL;
    }
    if (branch_impl->weather_score) {
        free(branch_impl->weather_score);
        branch_impl->weather_score = NULL;
    }
    if (branch_impl->pull_request) {
        free(branch_impl->pull_request);
        branch_impl->pull_request = NULL;
    }
    if (branch_impl->_links) {
        branch_impllinks_free(branch_impl->_links);
        branch_impl->_links = NULL;
    }
    if (branch_impl->latest_run) {
        pipeline_run_impl_free(branch_impl->latest_run);
        branch_impl->latest_run = NULL;
    }
    free(branch_impl);
}

cJSON *branch_impl_convertToJSON(branch_impl_t *branch_impl) {
    cJSON *item = cJSON_CreateObject();

    // branch_impl->_class
    if(branch_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", branch_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // branch_impl->display_name
    if(branch_impl->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", branch_impl->display_name) == NULL) {
    goto fail; //String
    }
    }


    // branch_impl->estimated_duration_in_millis
    if(branch_impl->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", *branch_impl->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // branch_impl->full_display_name
    if(branch_impl->full_display_name) {
    if(cJSON_AddStringToObject(item, "fullDisplayName", branch_impl->full_display_name) == NULL) {
    goto fail; //String
    }
    }


    // branch_impl->full_name
    if(branch_impl->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", branch_impl->full_name) == NULL) {
    goto fail; //String
    }
    }


    // branch_impl->name
    if(branch_impl->name) {
    if(cJSON_AddStringToObject(item, "name", branch_impl->name) == NULL) {
    goto fail; //String
    }
    }


    // branch_impl->organization
    if(branch_impl->organization) {
    if(cJSON_AddStringToObject(item, "organization", branch_impl->organization) == NULL) {
    goto fail; //String
    }
    }


    // branch_impl->parameters
    if(branch_impl->parameters) {
    cJSON *parameters = cJSON_AddArrayToObject(item, "parameters");
    if(parameters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *parametersListEntry;
    if (branch_impl->parameters) {
    list_ForEach(parametersListEntry, branch_impl->parameters) {
    cJSON *itemLocal = string_parameter_definition_convertToJSON(parametersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(parameters, itemLocal);
    }
    }
    }


    // branch_impl->permissions
    if(branch_impl->permissions) {
    cJSON *permissions_local_JSON = branch_implpermissions_convertToJSON(branch_impl->permissions);
    if(permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "permissions", permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // branch_impl->weather_score
    if(branch_impl->weather_score) {
    if(cJSON_AddNumberToObject(item, "weatherScore", *branch_impl->weather_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // branch_impl->pull_request
    if(branch_impl->pull_request) {
    if(cJSON_AddStringToObject(item, "pullRequest", branch_impl->pull_request) == NULL) {
    goto fail; //String
    }
    }


    // branch_impl->_links
    if(branch_impl->_links) {
    cJSON *_links_local_JSON = branch_impllinks_convertToJSON(branch_impl->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // branch_impl->latest_run
    if(branch_impl->latest_run) {
    cJSON *latest_run_local_JSON = pipeline_run_impl_convertToJSON(branch_impl->latest_run);
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

branch_impl_t *branch_impl_parseFromJSON(cJSON *branch_implJSON){

    branch_impl_t *branch_impl_local_var = NULL;

    char *_class_local_str = NULL;

    char *display_name_local_str = NULL;

    // define the local variable for branch_impl->estimated_duration_in_millis
    int *estimated_duration_in_millis_local_var = NULL;

    char *full_display_name_local_str = NULL;

    char *full_name_local_str = NULL;

    char *name_local_str = NULL;

    char *organization_local_str = NULL;

    // define the local list for branch_impl->parameters
    list_t *parametersList = NULL;

    // define the local variable for branch_impl->permissions
    branch_implpermissions_t *permissions_local_nonprim = NULL;

    // define the local variable for branch_impl->weather_score
    int *weather_score_local_var = NULL;

    char *pull_request_local_str = NULL;

    // define the local variable for branch_impl->_links
    branch_impllinks_t *_links_local_nonprim = NULL;

    // define the local variable for branch_impl->latest_run
    pipeline_run_impl_t *latest_run_local_nonprim = NULL;

    // branch_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // branch_impl->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // branch_impl->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "estimatedDurationInMillis");
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

    // branch_impl->full_display_name
    cJSON *full_display_name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "fullDisplayName");
    if (cJSON_IsNull(full_display_name)) {
        full_display_name = NULL;
    }
    if (full_display_name) { 
    if(!cJSON_IsString(full_display_name) && !cJSON_IsNull(full_display_name))
    {
    goto end; //String
    }
    }

    // branch_impl->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // branch_impl->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // branch_impl->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // branch_impl->parameters
    cJSON *parameters = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "parameters");
    if (cJSON_IsNull(parameters)) {
        parameters = NULL;
    }
    if (parameters) { 
    cJSON *parameters_local_nonprimitive = NULL;
    if(!cJSON_IsArray(parameters)){
        goto end; //nonprimitive container
    }

    parametersList = list_createList();

    cJSON_ArrayForEach(parameters_local_nonprimitive,parameters )
    {
        if(!cJSON_IsObject(parameters_local_nonprimitive)){
            goto end;
        }
        string_parameter_definition_t *parametersItem = string_parameter_definition_parseFromJSON(parameters_local_nonprimitive);

        list_addElement(parametersList, parametersItem);
    }
    }

    // branch_impl->permissions
    cJSON *permissions = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "permissions");
    if (cJSON_IsNull(permissions)) {
        permissions = NULL;
    }
    if (permissions) { 
    permissions_local_nonprim = branch_implpermissions_parseFromJSON(permissions); //nonprimitive
    }

    // branch_impl->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "weatherScore");
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

    // branch_impl->pull_request
    cJSON *pull_request = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "pullRequest");
    if (cJSON_IsNull(pull_request)) {
        pull_request = NULL;
    }
    if (pull_request) { 
    if(!cJSON_IsString(pull_request) && !cJSON_IsNull(pull_request))
    {
    goto end; //String
    }
    }

    // branch_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = branch_impllinks_parseFromJSON(_links); //nonprimitive
    }

    // branch_impl->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "latestRun");
    if (cJSON_IsNull(latest_run)) {
        latest_run = NULL;
    }
    if (latest_run) { 
    latest_run_local_nonprim = pipeline_run_impl_parseFromJSON(latest_run); //nonprimitive
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (display_name && !cJSON_IsNull(display_name)) display_name_local_str = strdup(display_name->valuestring);
    if (full_display_name && !cJSON_IsNull(full_display_name)) full_display_name_local_str = strdup(full_display_name->valuestring);
    if (full_name && !cJSON_IsNull(full_name)) full_name_local_str = strdup(full_name->valuestring);
    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (organization && !cJSON_IsNull(organization)) organization_local_str = strdup(organization->valuestring);
    if (pull_request && !cJSON_IsNull(pull_request)) pull_request_local_str = strdup(pull_request->valuestring);

    branch_impl_local_var = branch_impl_create_internal (
        _class_local_str,
        display_name_local_str,
        estimated_duration_in_millis_local_var,
        full_display_name_local_str,
        full_name_local_str,
        name_local_str,
        organization_local_str,
        parameters ? parametersList : NULL,
        permissions ? permissions_local_nonprim : NULL,
        weather_score_local_var,
        pull_request_local_str,
        _links ? _links_local_nonprim : NULL,
        latest_run ? latest_run_local_nonprim : NULL
        );

    if (!branch_impl_local_var) {
        goto end;
    }

    return branch_impl_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (display_name_local_str) {
        free(display_name_local_str);
        display_name_local_str = NULL;
    }
    if (estimated_duration_in_millis_local_var) {
        free(estimated_duration_in_millis_local_var);
        estimated_duration_in_millis_local_var = NULL;
    }
    if (full_display_name_local_str) {
        free(full_display_name_local_str);
        full_display_name_local_str = NULL;
    }
    if (full_name_local_str) {
        free(full_name_local_str);
        full_name_local_str = NULL;
    }
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (organization_local_str) {
        free(organization_local_str);
        organization_local_str = NULL;
    }
    if (parametersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, parametersList) {
            string_parameter_definition_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(parametersList);
        parametersList = NULL;
    }
    if (permissions_local_nonprim) {
        branch_implpermissions_free(permissions_local_nonprim);
        permissions_local_nonprim = NULL;
    }
    if (weather_score_local_var) {
        free(weather_score_local_var);
        weather_score_local_var = NULL;
    }
    if (pull_request_local_str) {
        free(pull_request_local_str);
        pull_request_local_str = NULL;
    }
    if (_links_local_nonprim) {
        branch_impllinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (latest_run_local_nonprim) {
        pipeline_run_impl_free(latest_run_local_nonprim);
        latest_run_local_nonprim = NULL;
    }
    return NULL;

}
