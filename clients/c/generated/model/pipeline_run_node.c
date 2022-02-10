#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_run_node.h"



pipeline_run_node_t *pipeline_run_node_create(
    char *_class,
    char *display_name,
    int duration_in_millis,
    list_t *edges,
    char *id,
    char *result,
    char *start_time,
    char *state
    ) {
    pipeline_run_node_t *pipeline_run_node_local_var = malloc(sizeof(pipeline_run_node_t));
    if (!pipeline_run_node_local_var) {
        return NULL;
    }
    pipeline_run_node_local_var->_class = _class;
    pipeline_run_node_local_var->display_name = display_name;
    pipeline_run_node_local_var->duration_in_millis = duration_in_millis;
    pipeline_run_node_local_var->edges = edges;
    pipeline_run_node_local_var->id = id;
    pipeline_run_node_local_var->result = result;
    pipeline_run_node_local_var->start_time = start_time;
    pipeline_run_node_local_var->state = state;

    return pipeline_run_node_local_var;
}


void pipeline_run_node_free(pipeline_run_node_t *pipeline_run_node) {
    if(NULL == pipeline_run_node){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_run_node->_class) {
        free(pipeline_run_node->_class);
        pipeline_run_node->_class = NULL;
    }
    if (pipeline_run_node->display_name) {
        free(pipeline_run_node->display_name);
        pipeline_run_node->display_name = NULL;
    }
    if (pipeline_run_node->edges) {
        list_ForEach(listEntry, pipeline_run_node->edges) {
            pipeline_run_nodeedges_free(listEntry->data);
        }
        list_freeList(pipeline_run_node->edges);
        pipeline_run_node->edges = NULL;
    }
    if (pipeline_run_node->id) {
        free(pipeline_run_node->id);
        pipeline_run_node->id = NULL;
    }
    if (pipeline_run_node->result) {
        free(pipeline_run_node->result);
        pipeline_run_node->result = NULL;
    }
    if (pipeline_run_node->start_time) {
        free(pipeline_run_node->start_time);
        pipeline_run_node->start_time = NULL;
    }
    if (pipeline_run_node->state) {
        free(pipeline_run_node->state);
        pipeline_run_node->state = NULL;
    }
    free(pipeline_run_node);
}

cJSON *pipeline_run_node_convertToJSON(pipeline_run_node_t *pipeline_run_node) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_run_node->_class
    if(pipeline_run_node->_class) { 
    if(cJSON_AddStringToObject(item, "_class", pipeline_run_node->_class) == NULL) {
    goto fail; //String
    }
     } 


    // pipeline_run_node->display_name
    if(pipeline_run_node->display_name) { 
    if(cJSON_AddStringToObject(item, "displayName", pipeline_run_node->display_name) == NULL) {
    goto fail; //String
    }
     } 


    // pipeline_run_node->duration_in_millis
    if(pipeline_run_node->duration_in_millis) { 
    if(cJSON_AddNumberToObject(item, "durationInMillis", pipeline_run_node->duration_in_millis) == NULL) {
    goto fail; //Numeric
    }
     } 


    // pipeline_run_node->edges
    if(pipeline_run_node->edges) { 
    cJSON *edges = cJSON_AddArrayToObject(item, "edges");
    if(edges == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *edgesListEntry;
    if (pipeline_run_node->edges) {
    list_ForEach(edgesListEntry, pipeline_run_node->edges) {
    cJSON *itemLocal = pipeline_run_nodeedges_convertToJSON(edgesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(edges, itemLocal);
    }
    }
     } 


    // pipeline_run_node->id
    if(pipeline_run_node->id) { 
    if(cJSON_AddStringToObject(item, "id", pipeline_run_node->id) == NULL) {
    goto fail; //String
    }
     } 


    // pipeline_run_node->result
    if(pipeline_run_node->result) { 
    if(cJSON_AddStringToObject(item, "result", pipeline_run_node->result) == NULL) {
    goto fail; //String
    }
     } 


    // pipeline_run_node->start_time
    if(pipeline_run_node->start_time) { 
    if(cJSON_AddStringToObject(item, "startTime", pipeline_run_node->start_time) == NULL) {
    goto fail; //String
    }
     } 


    // pipeline_run_node->state
    if(pipeline_run_node->state) { 
    if(cJSON_AddStringToObject(item, "state", pipeline_run_node->state) == NULL) {
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

pipeline_run_node_t *pipeline_run_node_parseFromJSON(cJSON *pipeline_run_nodeJSON){

    pipeline_run_node_t *pipeline_run_node_local_var = NULL;

    // pipeline_run_node->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // pipeline_run_node->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name))
    {
    goto end; //String
    }
    }

    // pipeline_run_node->duration_in_millis
    cJSON *duration_in_millis = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "durationInMillis");
    if (duration_in_millis) { 
    if(!cJSON_IsNumber(duration_in_millis))
    {
    goto end; //Numeric
    }
    }

    // pipeline_run_node->edges
    cJSON *edges = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "edges");
    list_t *edgesList;
    if (edges) { 
    cJSON *edges_local_nonprimitive;
    if(!cJSON_IsArray(edges)){
        goto end; //nonprimitive container
    }

    edgesList = list_createList();

    cJSON_ArrayForEach(edges_local_nonprimitive,edges )
    {
        if(!cJSON_IsObject(edges_local_nonprimitive)){
            goto end;
        }
        pipeline_run_nodeedges_t *edgesItem = pipeline_run_nodeedges_parseFromJSON(edges_local_nonprimitive);

        list_addElement(edgesList, edgesItem);
    }
    }

    // pipeline_run_node->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // pipeline_run_node->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "result");
    if (result) { 
    if(!cJSON_IsString(result))
    {
    goto end; //String
    }
    }

    // pipeline_run_node->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "startTime");
    if (start_time) { 
    if(!cJSON_IsString(start_time))
    {
    goto end; //String
    }
    }

    // pipeline_run_node->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(pipeline_run_nodeJSON, "state");
    if (state) { 
    if(!cJSON_IsString(state))
    {
    goto end; //String
    }
    }


    pipeline_run_node_local_var = pipeline_run_node_create (
        _class ? strdup(_class->valuestring) : NULL,
        display_name ? strdup(display_name->valuestring) : NULL,
        duration_in_millis ? duration_in_millis->valuedouble : 0,
        edges ? edgesList : NULL,
        id ? strdup(id->valuestring) : NULL,
        result ? strdup(result->valuestring) : NULL,
        start_time ? strdup(start_time->valuestring) : NULL,
        state ? strdup(state->valuestring) : NULL
        );

    return pipeline_run_node_local_var;
end:
    return NULL;

}
