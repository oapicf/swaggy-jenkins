#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_impl.h"



pipeline_impl_t *pipeline_impl_create(
    char *_class,
    char *display_name,
    int estimated_duration_in_millis,
    char *full_name,
    char *latest_run,
    char *name,
    char *organization,
    int weather_score,
    pipeline_impllinks_t *_links
    ) {
    pipeline_impl_t *pipeline_impl_local_var = malloc(sizeof(pipeline_impl_t));
    if (!pipeline_impl_local_var) {
        return NULL;
    }
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


void pipeline_impl_free(pipeline_impl_t *pipeline_impl) {
    if(NULL == pipeline_impl){
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
    if(cJSON_AddNumberToObject(item, "estimatedDurationInMillis", pipeline_impl->estimated_duration_in_millis) == NULL) {
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
    if(cJSON_AddNumberToObject(item, "weatherScore", pipeline_impl->weather_score) == NULL) {
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

    // define the local variable for pipeline_impl->_links
    pipeline_impllinks_t *_links_local_nonprim = NULL;

    // pipeline_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // pipeline_impl->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_impl->estimated_duration_in_millis
    cJSON *estimated_duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "estimatedDurationInMillis");
    if (estimated_duration_in_millis) { 
    if(!cJSON_IsNumber(estimated_duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_impl->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "fullName");
    if (full_name) { 
    if(!cJSON_IsString(full_name))
    {
    goto end; //String
    }
    }

    // pipeline_impl->latest_run
    cJSON *latest_run = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "latestRun");
    if (latest_run) { 
    if(!cJSON_IsString(latest_run))
    {
    goto end; //String
    }
    }

    // pipeline_impl->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // pipeline_impl->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "organization");
    if (organization) { 
    if(!cJSON_IsString(organization))
    {
    goto end; //String
    }
    }

    // pipeline_impl->weather_score
    cJSON *weather_score = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "weatherScore");
    if (weather_score) { 
    if(!cJSON_IsNumber(weather_score))
    {
    goto end; //Numeric
    }
    }

    // pipeline_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(pipeline_implJSON, "_links");
    if (_links) { 
    _links_local_nonprim = pipeline_impllinks_parseFromJSON(_links); //nonprimitive
    }


    pipeline_impl_local_var = pipeline_impl_create (
        _class ? strdup(_class->valuestring) : NULL,
        display_name ? strdup(display_name->valuestring) : NULL,
        estimated_duration_in_millis ? estimated_duration_in_millis->valuedouble : 0,
        full_name ? strdup(full_name->valuestring) : NULL,
        latest_run ? strdup(latest_run->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        organization ? strdup(organization->valuestring) : NULL,
        weather_score ? weather_score->valuedouble : 0,
        _links ? _links_local_nonprim : NULL
        );

    return pipeline_impl_local_var;
end:
    if (_links_local_nonprim) {
        pipeline_impllinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
