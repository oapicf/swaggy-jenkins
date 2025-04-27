#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_folder_impl.h"



static pipeline_folder_impl_t *pipeline_folder_impl_create_internal(
    char *_class,
    char *display_name,
    char *full_name,
    char *name,
    char *organization,
    int number_of_folders,
    int number_of_pipelines
    ) {
    pipeline_folder_impl_t *pipeline_folder_impl_local_var = malloc(sizeof(pipeline_folder_impl_t));
    if (!pipeline_folder_impl_local_var) {
        return NULL;
    }
    pipeline_folder_impl_local_var->_class = _class;
    pipeline_folder_impl_local_var->display_name = display_name;
    pipeline_folder_impl_local_var->full_name = full_name;
    pipeline_folder_impl_local_var->name = name;
    pipeline_folder_impl_local_var->organization = organization;
    pipeline_folder_impl_local_var->number_of_folders = number_of_folders;
    pipeline_folder_impl_local_var->number_of_pipelines = number_of_pipelines;

    pipeline_folder_impl_local_var->_library_owned = 1;
    return pipeline_folder_impl_local_var;
}

__attribute__((deprecated)) pipeline_folder_impl_t *pipeline_folder_impl_create(
    char *_class,
    char *display_name,
    char *full_name,
    char *name,
    char *organization,
    int number_of_folders,
    int number_of_pipelines
    ) {
    return pipeline_folder_impl_create_internal (
        _class,
        display_name,
        full_name,
        name,
        organization,
        number_of_folders,
        number_of_pipelines
        );
}

void pipeline_folder_impl_free(pipeline_folder_impl_t *pipeline_folder_impl) {
    if(NULL == pipeline_folder_impl){
        return ;
    }
    if(pipeline_folder_impl->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_folder_impl_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_folder_impl->_class) {
        free(pipeline_folder_impl->_class);
        pipeline_folder_impl->_class = NULL;
    }
    if (pipeline_folder_impl->display_name) {
        free(pipeline_folder_impl->display_name);
        pipeline_folder_impl->display_name = NULL;
    }
    if (pipeline_folder_impl->full_name) {
        free(pipeline_folder_impl->full_name);
        pipeline_folder_impl->full_name = NULL;
    }
    if (pipeline_folder_impl->name) {
        free(pipeline_folder_impl->name);
        pipeline_folder_impl->name = NULL;
    }
    if (pipeline_folder_impl->organization) {
        free(pipeline_folder_impl->organization);
        pipeline_folder_impl->organization = NULL;
    }
    free(pipeline_folder_impl);
}

cJSON *pipeline_folder_impl_convertToJSON(pipeline_folder_impl_t *pipeline_folder_impl) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_folder_impl->_class
    if(pipeline_folder_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_folder_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_folder_impl->display_name
    if(pipeline_folder_impl->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", pipeline_folder_impl->display_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_folder_impl->full_name
    if(pipeline_folder_impl->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", pipeline_folder_impl->full_name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_folder_impl->name
    if(pipeline_folder_impl->name) {
    if(cJSON_AddStringToObject(item, "name", pipeline_folder_impl->name) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_folder_impl->organization
    if(pipeline_folder_impl->organization) {
    if(cJSON_AddStringToObject(item, "organization", pipeline_folder_impl->organization) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_folder_impl->number_of_folders
    if(pipeline_folder_impl->number_of_folders) {
    if(cJSON_AddNumberToObject(item, "numberOfFolders", pipeline_folder_impl->number_of_folders) == NULL) {
    goto fail; //Numeric
    }
    }


    // pipeline_folder_impl->number_of_pipelines
    if(pipeline_folder_impl->number_of_pipelines) {
    if(cJSON_AddNumberToObject(item, "numberOfPipelines", pipeline_folder_impl->number_of_pipelines) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

pipeline_folder_impl_t *pipeline_folder_impl_parseFromJSON(cJSON *pipeline_folder_implJSON){

    pipeline_folder_impl_t *pipeline_folder_impl_local_var = NULL;

    // pipeline_folder_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "organization");
    if (cJSON_IsNull(organization)) {
        organization = NULL;
    }
    if (organization) { 
    if(!cJSON_IsString(organization) && !cJSON_IsNull(organization))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->number_of_folders
    cJSON *number_of_folders = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "numberOfFolders");
    if (cJSON_IsNull(number_of_folders)) {
        number_of_folders = NULL;
    }
    if (number_of_folders) { 
    if(!cJSON_IsNumber(number_of_folders))
    {
    goto end; //Numeric
    }
    }

    // pipeline_folder_impl->number_of_pipelines
    cJSON *number_of_pipelines = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "numberOfPipelines");
    if (cJSON_IsNull(number_of_pipelines)) {
        number_of_pipelines = NULL;
    }
    if (number_of_pipelines) { 
    if(!cJSON_IsNumber(number_of_pipelines))
    {
    goto end; //Numeric
    }
    }


    pipeline_folder_impl_local_var = pipeline_folder_impl_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        full_name && !cJSON_IsNull(full_name) ? strdup(full_name->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        organization && !cJSON_IsNull(organization) ? strdup(organization->valuestring) : NULL,
        number_of_folders ? number_of_folders->valuedouble : 0,
        number_of_pipelines ? number_of_pipelines->valuedouble : 0
        );

    return pipeline_folder_impl_local_var;
end:
    return NULL;

}
