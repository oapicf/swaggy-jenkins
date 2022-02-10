#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "list_view.h"



list_view_t *list_view_create(
    char *_class,
    char *description,
    list_t *jobs,
    char *name,
    char *url
    ) {
    list_view_t *list_view_local_var = malloc(sizeof(list_view_t));
    if (!list_view_local_var) {
        return NULL;
    }
    list_view_local_var->_class = _class;
    list_view_local_var->description = description;
    list_view_local_var->jobs = jobs;
    list_view_local_var->name = name;
    list_view_local_var->url = url;

    return list_view_local_var;
}


void list_view_free(list_view_t *list_view) {
    if(NULL == list_view){
        return ;
    }
    listEntry_t *listEntry;
    if (list_view->_class) {
        free(list_view->_class);
        list_view->_class = NULL;
    }
    if (list_view->description) {
        free(list_view->description);
        list_view->description = NULL;
    }
    if (list_view->jobs) {
        list_ForEach(listEntry, list_view->jobs) {
            free_style_project_free(listEntry->data);
        }
        list_freeList(list_view->jobs);
        list_view->jobs = NULL;
    }
    if (list_view->name) {
        free(list_view->name);
        list_view->name = NULL;
    }
    if (list_view->url) {
        free(list_view->url);
        list_view->url = NULL;
    }
    free(list_view);
}

cJSON *list_view_convertToJSON(list_view_t *list_view) {
    cJSON *item = cJSON_CreateObject();

    // list_view->_class
    if(list_view->_class) { 
    if(cJSON_AddStringToObject(item, "_class", list_view->_class) == NULL) {
    goto fail; //String
    }
     } 


    // list_view->description
    if(list_view->description) { 
    if(cJSON_AddStringToObject(item, "description", list_view->description) == NULL) {
    goto fail; //String
    }
     } 


    // list_view->jobs
    if(list_view->jobs) { 
    cJSON *jobs = cJSON_AddArrayToObject(item, "jobs");
    if(jobs == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *jobsListEntry;
    if (list_view->jobs) {
    list_ForEach(jobsListEntry, list_view->jobs) {
    cJSON *itemLocal = free_style_project_convertToJSON(jobsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(jobs, itemLocal);
    }
    }
     } 


    // list_view->name
    if(list_view->name) { 
    if(cJSON_AddStringToObject(item, "name", list_view->name) == NULL) {
    goto fail; //String
    }
     } 


    // list_view->url
    if(list_view->url) { 
    if(cJSON_AddStringToObject(item, "url", list_view->url) == NULL) {
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

list_view_t *list_view_parseFromJSON(cJSON *list_viewJSON){

    list_view_t *list_view_local_var = NULL;

    // list_view->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(list_viewJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // list_view->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(list_viewJSON, "description");
    if (description) { 
    if(!cJSON_IsString(description))
    {
    goto end; //String
    }
    }

    // list_view->jobs
    cJSON *jobs = cJSON_GetObjectItemCaseSensitive(list_viewJSON, "jobs");
    list_t *jobsList;
    if (jobs) { 
    cJSON *jobs_local_nonprimitive;
    if(!cJSON_IsArray(jobs)){
        goto end; //nonprimitive container
    }

    jobsList = list_createList();

    cJSON_ArrayForEach(jobs_local_nonprimitive,jobs )
    {
        if(!cJSON_IsObject(jobs_local_nonprimitive)){
            goto end;
        }
        free_style_project_t *jobsItem = free_style_project_parseFromJSON(jobs_local_nonprimitive);

        list_addElement(jobsList, jobsItem);
    }
    }

    // list_view->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(list_viewJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // list_view->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(list_viewJSON, "url");
    if (url) { 
    if(!cJSON_IsString(url))
    {
    goto end; //String
    }
    }


    list_view_local_var = list_view_create (
        _class ? strdup(_class->valuestring) : NULL,
        description ? strdup(description->valuestring) : NULL,
        jobs ? jobsList : NULL,
        name ? strdup(name->valuestring) : NULL,
        url ? strdup(url->valuestring) : NULL
        );

    return list_view_local_var;
end:
    return NULL;

}
