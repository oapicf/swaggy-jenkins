#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_folder_impl.h"



pipeline_folder_impl_t *pipeline_folder_impl_create(
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

    return pipeline_folder_impl_local_var;
}


void pipeline_folder_impl_free(pipeline_folder_impl_t *pipeline_folder_impl) {
    if(NULL == pipeline_folder_impl){
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
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "fullName");
    if (full_name) { 
    if(!cJSON_IsString(full_name))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->organization
    cJSON *organization = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "organization");
    if (organization) { 
    if(!cJSON_IsString(organization))
    {
    goto end; //String
    }
    }

    // pipeline_folder_impl->number_of_folders
    cJSON *number_of_folders = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "numberOfFolders");
    if (number_of_folders) { 
    if(!cJSON_IsNumber(number_of_folders))
    {
    goto end; //Numeric
    }
    }

    // pipeline_folder_impl->number_of_pipelines
    cJSON *number_of_pipelines = cJSON_GetObjectItemCaseSensitive(pipeline_folder_implJSON, "numberOfPipelines");
    if (number_of_pipelines) { 
    if(!cJSON_IsNumber(number_of_pipelines))
    {
    goto end; //Numeric
    }
    }


    pipeline_folder_impl_local_var = pipeline_folder_impl_create (
        _class ? strdup(_class->valuestring) : NULL,
        display_name ? strdup(display_name->valuestring) : NULL,
        full_name ? strdup(full_name->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        organization ? strdup(organization->valuestring) : NULL,
        number_of_folders ? number_of_folders->valuedouble : 0,
        number_of_pipelines ? number_of_pipelines->valuedouble : 0
        );

    return pipeline_folder_impl_local_var;
end:
    return NULL;

}
