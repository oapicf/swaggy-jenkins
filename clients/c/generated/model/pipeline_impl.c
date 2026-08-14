#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_impl.h"



static pipeline_impl_t *pipeline_impl_create_internal(
    char *_class,
    char *display_name,
    int *estimated_duration_in_millis,
    char *full_name,
    char *latest_run,
    char *name,
    char *organization,
    int *weather_score,
    pipeline_impllinks_t *_links
    ) {
    pipeline_impl_t *pipeline_impl_local_var = malloc(sizeof(pipeline_impl_t));
    if (!pipeline_impl_local_var) {
        return NULL;
    }
    memset(pipeline_impl_local_var, 0, sizeof(pipeline_impl_t));
    pipeline_impl_local_var->_library_owned = 1;
    pipeline_impl_local_var->_class = _class;
    pipeline_impl_local_var->display_name = display_name;
    pipeline_impl_local_var->estimated_duration_in_millis = estimated_duration_in_millis;
    pipeline_impl_local_var->full_name = full_name;
    pipeline_impl_local_var->latest_run = latest_run;
    pipeline_impl_local_var->name = name;
    pipeline_impl_local_var->organization = organization;
    pipeline_impl_local_var->weather_score = weather_score;
    pipeline_impl_local_var->_links = _links;
    return pipeline_impl_local_var;
}

__attribute__((deprecated)) pipeline_impl_t *pipeline_impl_create(
    char *_class,
    char *display_name,
    int *estimated_duration_in_millis,
    char *full_name,
    char *latest_run,
    char *name,
    char *organization,
    int *weather_score,
    pipeline_impllinks_t *_links
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
    pipeline_impl_t *result = pipeline_impl_create_internal (
        _class,
        display_name,
        estimated_duration_in_millis_copy,
        full_name,
        latest_run,
        name,
        organization,
        weather_score_copy,
        _links
        );
    if (!result) {
        free(estimated_duration_in_millis_copy);
        free(weather_score_copy);
    }
    return result;
}

void pipeline_impl_free(pipeline_impl_t *pipeline_impl) {
    if(NULL == pipeline_impl){
        return ;
    }
    if(pipeline_impl->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_impl_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_impl->_class) {
        free(pipeline_impl->_class);
        pipeline_impl->_class = NULL;
    }
    if (pipeline_impl->display_name) {
        free(pipeline_impl->display_name);
        pipeline_impl->display_name = NULL;
    }
    if (pipeline_impl->estimated_duration_in_millis) {
        free(pipeline_impl->estimated_duration_in_millis);
        pipeline_impl->estimated_duration_in_millis = NULL;
    }
    if (pipeline_impl->full_name) {
        free(pipeline_impl->full_name);
        pipeline_impl->full_name = NULL;
    }
    if (pipeline_impl->latest_run) {
        free(pipeline_impl->latest_run);
        pipeline_impl->latest_run = NULL;
    }
    if (pipeline_impl->name) {
        free(pipeline_impl->name);
        pipeline_impl->name = NULL;
    }
    if (pipeline_impl->organization) {
        free(pipeline_impl->organization);
        pipeline_impl->organization = NULL;
    }
    if (pipeline_impl->weather_score) {
        free(pipeline_impl->weather_score);
        pipeline_impl->weather_score = NULL;
    }
    if (pipeline_impl->_links) {
        pipeline_impllinks_free(pipeline_impl->_links);
        pipeline_impl->_links = NULL;
    }
    free(pipeline_impl);
}

cJSON *pipeline_impl_convertToJSON(pipeline_impl_t *pipeline_impl) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_impl->_class
    if(pipeline_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_impl->display_name
    if(pipeline_impl->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", pipeline_impl->display_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_impl->estimated_duration_in_millis
    if(pipeline_impl->estimated_duration_in_millis) {
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", *pipeline_impl->estimated_duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_impl->full_name
    if(pipeline_impl->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", pipeline_impl->full_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_impl->latest_run
    if(pipeline_impl->latest_run) {
    if(cJSON_AddStringToObject(item, "latestRun", pipeline_impl->latest_run) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_impl->name
    if(pipeline_impl->name) {
    if(cJSON_AddStringToObject(item, "name", pipeline_impl->name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_impl->organization
    if(pipeline_impl->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipeline_impl->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_impl->weather_score
    if(pipeline_impl->weather_score) {
    if(cJSON_AddNumberToObject(item, "weatherScore", *pipeline_impl->weather_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_impl->_links
    if(pipeline_impl->_links) {
    cJSON *_links_local_JSON = pipeline_impllinks_convertToJSON(pipeline_impl->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
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

pipeline_impl_t *pipeline_impl_parseFromJSON(cJSON *pipeline_implJSON){

    pipeline_impl_t *pipeline_impl_local_var = NULL;

    char *_class_local_str = NULL;

    char *display_name_local_str = NULL;

    // define the local variable for pipeline_impl->estimated_duration_in_millis
    int *estimated_duration_in_millis_local_var = NULL;

    char *full_name_local_str = NULL;

    char *latest_run_local_str = NULL;

    char *name_local_str = NULL;

    char *organization_local_str = NULL;

    // define the local variable for pipeline_impl->weather_score
    int *weather_score_local_var = NULL;

    // define the local variable for pipeline_impl->_links
    pipeline_impllinks_t *_links_local_nonprim = NULL;

    // pipeline_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // pipeline_impl->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_impl->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "estimatedDurationInMillis");
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

    // pipeline_impl->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // pipeline_impl->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "latestRun");
    if (cJSON_IsNull(latest_run)) {
        latest_run = NULL;
    }
    if (latest_run) { 
    if(!cJSON_IsString(latest_run) && !cJSON_IsNull(latest_run))
    {
    goto end; //String
    }
    }

    // pipeline_impl->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline_impl->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline_impl->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "weatherScore");
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

    // pipeline_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = pipeline_impllinks_parseFromJSON(_links); //nonprimitive
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (display_name && !cJSON_IsNull(display_name)) display_name_local_str = strdup(display_name->valuestring);
    if (full_name && !cJSON_IsNull(full_name)) full_name_local_str = strdup(full_name->valuestring);
    if (latest_run && !cJSON_IsNull(latest_run)) latest_run_local_str = strdup(latest_run->valuestring);
    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (organization && !cJSON_IsNull(organization)) organization_local_str = strdup(organization->valuestring);

    pipeline_impl_local_var = pipeline_impl_create_internal (
        _class_local_str,
        display_name_local_str,
        estimated_duration_in_millis_local_var,
        full_name_local_str,
        latest_run_local_str,
        name_local_str,
        organization_local_str,
        weather_score_local_var,
        _links ? _links_local_nonprim : NULL
        );

    if (!pipeline_impl_local_var) {
        goto end;
    }

    return pipeline_impl_local_var;
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
    if (full_name_local_str) {
        free(full_name_local_str);
        full_name_local_str = NULL;
    }
    if (latest_run_local_str) {
        free(latest_run_local_str);
        latest_run_local_str = NULL;
    }
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (organization_local_str) {
        free(organization_local_str);
        organization_local_str = NULL;
    }
    if (weather_score_local_var) {
        free(weather_score_local_var);
        weather_score_local_var = NULL;
    }
    if (_links_local_nonprim) {
        pipeline_impllinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
