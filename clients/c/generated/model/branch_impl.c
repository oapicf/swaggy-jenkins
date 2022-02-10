#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "branch_impl.h"



branch_impl_t *branch_impl_create(
    char *_class,
    char *display_name,
    int estimated_duration_in_millis,
    char *full_display_name,
    char *full_name,
    char *name,
    char *organization,
    list_t *parameters,
    branch_implpermissions_t *permissions,
    int weather_score,
    char *pull_request,
    branch_impllinks_t *_links,
    pipeline_run_impl_t *latest_run
    ) {
    branch_impl_t *branch_impl_local_var = malloc(sizeof(branch_impl_t));
    if (!branch_impl_local_var) {
        return NULL;
    }
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


void branch_impl_free(branch_impl_t *branch_impl) {
    if(NULL == branch_impl){
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
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", branch_impl->estimated_duration_in_millis) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "weatherScore", branch_impl->weather_score) == NULL) {
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

    // define the local variable for branch_impl->permissions
    branch_implpermissions_t *permissions_local_nonprim = NULL;

    // define the local variable for branch_impl->_links
    branch_impllinks_t *_links_local_nonprim = NULL;

    // define the local variable for branch_impl->latest_run
    pipeline_run_impl_t *latest_run_local_nonprim = NULL;

    // branch_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // branch_impl->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name))
    {
    goto end; //String
    }
    }

    // branch_impl->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "estimatedDurationInMillis");
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // branch_impl->full_display_name
    cJSON *full_display_name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "fullDisplayName");
    if (full_display_name) { 
    if(!cJSON_IsString(full_display_name))
    {
    goto end; //String
    }
    }

    // branch_impl->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "fullName");
    if (full_name) { 
    if(!cJSON_IsString(full_name))
    {
    goto end; //String
    }
    }

    // branch_impl->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // branch_impl->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "organization");
    if (organization) { 
    if(!cJSON_IsString(organization))
    {
    goto end; //String
    }
    }

    // branch_impl->parameters
    cJSON *parameters = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "parameters");
    list_t *parametersList;
    if (parameters) { 
    cJSON *parameters_local_nonprimitive;
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
    if (permissions) { 
    permissions_local_nonprim = branch_implpermissions_parseFromJSON(permissions); //nonprimitive
    }

    // branch_impl->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "weatherScore");
    if (weather_score) { 
    if(!cJSON_IsNumber(weather_score))
    {
    goto end; //Numeric
    }
    }

    // branch_impl->pull_request
    cJSON *pull_request = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "pullRequest");
    if (pull_request) { 
    if(!cJSON_IsString(pull_request))
    {
    goto end; //String
    }
    }

    // branch_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "_links");
    if (_links) { 
    _links_local_nonprim = branch_impllinks_parseFromJSON(_links); //nonprimitive
    }

    // branch_impl->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(branch_implJSON, "latestRun");
    if (latest_run) { 
    latest_run_local_nonprim = pipeline_run_impl_parseFromJSON(latest_run); //nonprimitive
    }


    branch_impl_local_var = branch_impl_create (
        _class ? strdup(_class->valuestring) : NULL,
        display_name ? strdup(display_name->valuestring) : NULL,
        estimated_duration_in_millis ? estimated_duration_in_millis->valuedouble : 0,
        full_display_name ? strdup(full_display_name->valuestring) : NULL,
        full_name ? strdup(full_name->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        organization ? strdup(organization->valuestring) : NULL,
        parameters ? parametersList : NULL,
        permissions ? permissions_local_nonprim : NULL,
        weather_score ? weather_score->valuedouble : 0,
        pull_request ? strdup(pull_request->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        latest_run ? latest_run_local_nonprim : NULL
        );

    return branch_impl_local_var;
end:
    if (permissions_local_nonprim) {
        branch_implpermissions_free(permissions_local_nonprim);
        permissions_local_nonprim = NULL;
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
