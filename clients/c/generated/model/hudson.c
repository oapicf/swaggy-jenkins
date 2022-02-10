#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "hudson.h"



hudson_t *hudson_create(
    char *_class,
    list_t *assigned_labels,
    char *mode,
    char *node_description,
    char *node_name,
    int num_executors,
    char *description,
    list_t *jobs,
    all_view_t *primary_view,
    int quieting_down,
    int slave_agent_port,
    unlabeled_load_statistics_t *unlabeled_load,
    int use_crumbs,
    int use_security,
    list_t *views
    ) {
    hudson_t *hudson_local_var = malloc(sizeof(hudson_t));
    if (!hudson_local_var) {
        return NULL;
    }
    hudson_local_var->_class = _class;
    hudson_local_var->assigned_labels = assigned_labels;
    hudson_local_var->mode = mode;
    hudson_local_var->node_description = node_description;
    hudson_local_var->node_name = node_name;
    hudson_local_var->num_executors = num_executors;
    hudson_local_var->description = description;
    hudson_local_var->jobs = jobs;
    hudson_local_var->primary_view = primary_view;
    hudson_local_var->quieting_down = quieting_down;
    hudson_local_var->slave_agent_port = slave_agent_port;
    hudson_local_var->unlabeled_load = unlabeled_load;
    hudson_local_var->use_crumbs = use_crumbs;
    hudson_local_var->use_security = use_security;
    hudson_local_var->views = views;

    return hudson_local_var;
}


void hudson_free(hudson_t *hudson) {
    if(NULL == hudson){
        return ;
    }
    listEntry_t *listEntry;
    if (hudson->_class) {
        free(hudson->_class);
        hudson->_class = NULL;
    }
    if (hudson->assigned_labels) {
        list_ForEach(listEntry, hudson->assigned_labels) {
            hudsonassigned_labels_free(listEntry->data);
        }
        list_freeList(hudson->assigned_labels);
        hudson->assigned_labels = NULL;
    }
    if (hudson->mode) {
        free(hudson->mode);
        hudson->mode = NULL;
    }
    if (hudson->node_description) {
        free(hudson->node_description);
        hudson->node_description = NULL;
    }
    if (hudson->node_name) {
        free(hudson->node_name);
        hudson->node_name = NULL;
    }
    if (hudson->description) {
        free(hudson->description);
        hudson->description = NULL;
    }
    if (hudson->jobs) {
        list_ForEach(listEntry, hudson->jobs) {
            free_style_project_free(listEntry->data);
        }
        list_freeList(hudson->jobs);
        hudson->jobs = NULL;
    }
    if (hudson->primary_view) {
        all_view_free(hudson->primary_view);
        hudson->primary_view = NULL;
    }
    if (hudson->unlabeled_load) {
        unlabeled_load_statistics_free(hudson->unlabeled_load);
        hudson->unlabeled_load = NULL;
    }
    if (hudson->views) {
        list_ForEach(listEntry, hudson->views) {
            all_view_free(listEntry->data);
        }
        list_freeList(hudson->views);
        hudson->views = NULL;
    }
    free(hudson);
}

cJSON *hudson_convertToJSON(hudson_t *hudson) {
    cJSON *item = cJSON_CreateObject();

    // hudson->_class
    if(hudson->_class) { 
    if(cJSON_AddStringToObject(item, "_class", hudson->_class) == NULL) {
    goto fail; //String
    }
     } 


    // hudson->assigned_labels
    if(hudson->assigned_labels) { 
    cJSON *assigned_labels = cJSON_AddArrayToObject(item, "assignedLabels");
    if(assigned_labels == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *assigned_labelsListEntry;
    if (hudson->assigned_labels) {
    list_ForEach(assigned_labelsListEntry, hudson->assigned_labels) {
    cJSON *itemLocal = hudsonassigned_labels_convertToJSON(assigned_labelsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(assigned_labels, itemLocal);
    }
    }
     } 


    // hudson->mode
    if(hudson->mode) { 
    if(cJSON_AddStringToObject(item, "mode", hudson->mode) == NULL) {
    goto fail; //String
    }
     } 


    // hudson->node_description
    if(hudson->node_description) { 
    if(cJSON_AddStringToObject(item, "nodeDescription", hudson->node_description) == NULL) {
    goto fail; //String
    }
     } 


    // hudson->node_name
    if(hudson->node_name) { 
    if(cJSON_AddStringToObject(item, "nodeName", hudson->node_name) == NULL) {
    goto fail; //String
    }
     } 


    // hudson->num_executors
    if(hudson->num_executors) { 
    if(cJSON_AddNumberToObject(item, "numExecutors", hudson->num_executors) == NULL) {
    goto fail; //Numeric
    }
     } 


    // hudson->description
    if(hudson->description) { 
    if(cJSON_AddStringToObject(item, "description", hudson->description) == NULL) {
    goto fail; //String
    }
     } 


    // hudson->jobs
    if(hudson->jobs) { 
    cJSON *jobs = cJSON_AddArrayToObject(item, "jobs");
    if(jobs == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *jobsListEntry;
    if (hudson->jobs) {
    list_ForEach(jobsListEntry, hudson->jobs) {
    cJSON *itemLocal = free_style_project_convertToJSON(jobsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(jobs, itemLocal);
    }
    }
     } 


    // hudson->primary_view
    if(hudson->primary_view) { 
    cJSON *primary_view_local_JSON = all_view_convertToJSON(hudson->primary_view);
    if(primary_view_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "primaryView", primary_view_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // hudson->quieting_down
    if(hudson->quieting_down) { 
    if(cJSON_AddBoolToObject(item, "quietingDown", hudson->quieting_down) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson->slave_agent_port
    if(hudson->slave_agent_port) { 
    if(cJSON_AddNumberToObject(item, "slaveAgentPort", hudson->slave_agent_port) == NULL) {
    goto fail; //Numeric
    }
     } 


    // hudson->unlabeled_load
    if(hudson->unlabeled_load) { 
    cJSON *unlabeled_load_local_JSON = unlabeled_load_statistics_convertToJSON(hudson->unlabeled_load);
    if(unlabeled_load_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "unlabeledLoad", unlabeled_load_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // hudson->use_crumbs
    if(hudson->use_crumbs) { 
    if(cJSON_AddBoolToObject(item, "useCrumbs", hudson->use_crumbs) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson->use_security
    if(hudson->use_security) { 
    if(cJSON_AddBoolToObject(item, "useSecurity", hudson->use_security) == NULL) {
    goto fail; //Bool
    }
     } 


    // hudson->views
    if(hudson->views) { 
    cJSON *views = cJSON_AddArrayToObject(item, "views");
    if(views == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *viewsListEntry;
    if (hudson->views) {
    list_ForEach(viewsListEntry, hudson->views) {
    cJSON *itemLocal = all_view_convertToJSON(viewsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(views, itemLocal);
    }
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

hudson_t *hudson_parseFromJSON(cJSON *hudsonJSON){

    hudson_t *hudson_local_var = NULL;

    // define the local variable for hudson->primary_view
    all_view_t *primary_view_local_nonprim = NULL;

    // define the local variable for hudson->unlabeled_load
    unlabeled_load_statistics_t *unlabeled_load_local_nonprim = NULL;

    // hudson->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // hudson->assigned_labels
    cJSON *assigned_labels = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "assignedLabels");
    list_t *assigned_labelsList;
    if (assigned_labels) { 
    cJSON *assigned_labels_local_nonprimitive;
    if(!cJSON_IsArray(assigned_labels)){
        goto end; //nonprimitive container
    }

    assigned_labelsList = list_createList();

    cJSON_ArrayForEach(assigned_labels_local_nonprimitive,assigned_labels )
    {
        if(!cJSON_IsObject(assigned_labels_local_nonprimitive)){
            goto end;
        }
        hudsonassigned_labels_t *assigned_labelsItem = hudsonassigned_labels_parseFromJSON(assigned_labels_local_nonprimitive);

        list_addElement(assigned_labelsList, assigned_labelsItem);
    }
    }

    // hudson->mode
    cJSON *mode = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "mode");
    if (mode) { 
    if(!cJSON_IsString(mode))
    {
    goto end; //String
    }
    }

    // hudson->node_description
    cJSON *node_description = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "nodeDescription");
    if (node_description) { 
    if(!cJSON_IsString(node_description))
    {
    goto end; //String
    }
    }

    // hudson->node_name
    cJSON *node_name = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "nodeName");
    if (node_name) { 
    if(!cJSON_IsString(node_name))
    {
    goto end; //String
    }
    }

    // hudson->num_executors
    cJSON *num_executors = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "numExecutors");
    if (num_executors) { 
    if(!cJSON_IsNumber(num_executors))
    {
    goto end; //Numeric
    }
    }

    // hudson->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "description");
    if (description) { 
    if(!cJSON_IsString(description))
    {
    goto end; //String
    }
    }

    // hudson->jobs
    cJSON *jobs = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "jobs");
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

    // hudson->primary_view
    cJSON *primary_view = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "primaryView");
    if (primary_view) { 
    primary_view_local_nonprim = all_view_parseFromJSON(primary_view); //nonprimitive
    }

    // hudson->quieting_down
    cJSON *quieting_down = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "quietingDown");
    if (quieting_down) { 
    if(!cJSON_IsBool(quieting_down))
    {
    goto end; //Bool
    }
    }

    // hudson->slave_agent_port
    cJSON *slave_agent_port = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "slaveAgentPort");
    if (slave_agent_port) { 
    if(!cJSON_IsNumber(slave_agent_port))
    {
    goto end; //Numeric
    }
    }

    // hudson->unlabeled_load
    cJSON *unlabeled_load = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "unlabeledLoad");
    if (unlabeled_load) { 
    unlabeled_load_local_nonprim = unlabeled_load_statistics_parseFromJSON(unlabeled_load); //nonprimitive
    }

    // hudson->use_crumbs
    cJSON *use_crumbs = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "useCrumbs");
    if (use_crumbs) { 
    if(!cJSON_IsBool(use_crumbs))
    {
    goto end; //Bool
    }
    }

    // hudson->use_security
    cJSON *use_security = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "useSecurity");
    if (use_security) { 
    if(!cJSON_IsBool(use_security))
    {
    goto end; //Bool
    }
    }

    // hudson->views
    cJSON *views = cJSON_GetObjectItemCaseSensitive(hudsonJSON, "views");
    list_t *viewsList;
    if (views) { 
    cJSON *views_local_nonprimitive;
    if(!cJSON_IsArray(views)){
        goto end; //nonprimitive container
    }

    viewsList = list_createList();

    cJSON_ArrayForEach(views_local_nonprimitive,views )
    {
        if(!cJSON_IsObject(views_local_nonprimitive)){
            goto end;
        }
        all_view_t *viewsItem = all_view_parseFromJSON(views_local_nonprimitive);

        list_addElement(viewsList, viewsItem);
    }
    }


    hudson_local_var = hudson_create (
        _class ? strdup(_class->valuestring) : NULL,
        assigned_labels ? assigned_labelsList : NULL,
        mode ? strdup(mode->valuestring) : NULL,
        node_description ? strdup(node_description->valuestring) : NULL,
        node_name ? strdup(node_name->valuestring) : NULL,
        num_executors ? num_executors->valuedouble : 0,
        description ? strdup(description->valuestring) : NULL,
        jobs ? jobsList : NULL,
        primary_view ? primary_view_local_nonprim : NULL,
        quieting_down ? quieting_down->valueint : 0,
        slave_agent_port ? slave_agent_port->valuedouble : 0,
        unlabeled_load ? unlabeled_load_local_nonprim : NULL,
        use_crumbs ? use_crumbs->valueint : 0,
        use_security ? use_security->valueint : 0,
        views ? viewsList : NULL
        );

    return hudson_local_var;
end:
    if (primary_view_local_nonprim) {
        all_view_free(primary_view_local_nonprim);
        primary_view_local_nonprim = NULL;
    }
    if (unlabeled_load_local_nonprim) {
        unlabeled_load_statistics_free(unlabeled_load_local_nonprim);
        unlabeled_load_local_nonprim = NULL;
    }
    return NULL;

}
