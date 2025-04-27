#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_run_impllinks.h"



static pipeline_run_impllinks_t *pipeline_run_impllinks_create_internal(
    link_t *nodes,
    link_t *log,
    link_t *self,
    link_t *actions,
    link_t *steps,
    char *_class
    ) {
    pipeline_run_impllinks_t *pipeline_run_impllinks_local_var = malloc(sizeof(pipeline_run_impllinks_t));
    if (!pipeline_run_impllinks_local_var) {
        return NULL;
    }
    pipeline_run_impllinks_local_var->nodes = nodes;
    pipeline_run_impllinks_local_var->log = log;
    pipeline_run_impllinks_local_var->self = self;
    pipeline_run_impllinks_local_var->actions = actions;
    pipeline_run_impllinks_local_var->steps = steps;
    pipeline_run_impllinks_local_var->_class = _class;

    pipeline_run_impllinks_local_var->_library_owned = 1;
    return pipeline_run_impllinks_local_var;
}

__attribute__((deprecated)) pipeline_run_impllinks_t *pipeline_run_impllinks_create(
    link_t *nodes,
    link_t *log,
    link_t *self,
    link_t *actions,
    link_t *steps,
    char *_class
    ) {
    return pipeline_run_impllinks_create_internal (
        nodes,
        log,
        self,
        actions,
        steps,
        _class
        );
}

void pipeline_run_impllinks_free(pipeline_run_impllinks_t *pipeline_run_impllinks) {
    if(NULL == pipeline_run_impllinks){
        return ;
    }
    if(pipeline_run_impllinks->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_run_impllinks_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_run_impllinks->nodes) {
        link_free(pipeline_run_impllinks->nodes);
        pipeline_run_impllinks->nodes = NULL;
    }
    if (pipeline_run_impllinks->log) {
        link_free(pipeline_run_impllinks->log);
        pipeline_run_impllinks->log = NULL;
    }
    if (pipeline_run_impllinks->self) {
        link_free(pipeline_run_impllinks->self);
        pipeline_run_impllinks->self = NULL;
    }
    if (pipeline_run_impllinks->actions) {
        link_free(pipeline_run_impllinks->actions);
        pipeline_run_impllinks->actions = NULL;
    }
    if (pipeline_run_impllinks->steps) {
        link_free(pipeline_run_impllinks->steps);
        pipeline_run_impllinks->steps = NULL;
    }
    if (pipeline_run_impllinks->_class) {
        free(pipeline_run_impllinks->_class);
        pipeline_run_impllinks->_class = NULL;
    }
    free(pipeline_run_impllinks);
}

cJSON *pipeline_run_impllinks_convertToJSON(pipeline_run_impllinks_t *pipeline_run_impllinks) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_run_impllinks->nodes
    if(pipeline_run_impllinks->nodes) {
    cJSON *nodes_local_JSON = link_convertToJSON(pipeline_run_impllinks->nodes);
    if(nodes_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "nodes", nodes_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_run_impllinks->log
    if(pipeline_run_impllinks->log) {
    cJSON *log_local_JSON = link_convertToJSON(pipeline_run_impllinks->log);
    if(log_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "log", log_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_run_impllinks->self
    if(pipeline_run_impllinks->self) {
    cJSON *self_local_JSON = link_convertToJSON(pipeline_run_impllinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_run_impllinks->actions
    if(pipeline_run_impllinks->actions) {
    cJSON *actions_local_JSON = link_convertToJSON(pipeline_run_impllinks->actions);
    if(actions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "actions", actions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_run_impllinks->steps
    if(pipeline_run_impllinks->steps) {
    cJSON *steps_local_JSON = link_convertToJSON(pipeline_run_impllinks->steps);
    if(steps_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "steps", steps_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_run_impllinks->_class
    if(pipeline_run_impllinks->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_run_impllinks->_class) == NULL) {
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

pipeline_run_impllinks_t *pipeline_run_impllinks_parseFromJSON(cJSON *pipeline_run_impllinksJSON){

    pipeline_run_impllinks_t *pipeline_run_impllinks_local_var = NULL;

    // define the local variable for pipeline_run_impllinks->nodes
    link_t *nodes_local_nonprim = NULL;

    // define the local variable for pipeline_run_impllinks->log
    link_t *log_local_nonprim = NULL;

    // define the local variable for pipeline_run_impllinks->self
    link_t *self_local_nonprim = NULL;

    // define the local variable for pipeline_run_impllinks->actions
    link_t *actions_local_nonprim = NULL;

    // define the local variable for pipeline_run_impllinks->steps
    link_t *steps_local_nonprim = NULL;

    // pipeline_run_impllinks->nodes
    cJSON *nodes = cJSON_GetObjectItemCaseSensitive(pipeline_run_impllinksJSON, "nodes");
    if (cJSON_IsNull(nodes)) {
        nodes = NULL;
    }
    if (nodes) { 
    nodes_local_nonprim = link_parseFromJSON(nodes); //nonprimitive
    }

    // pipeline_run_impllinks->log
    cJSON *log = cJSON_GetObjectItemCaseSensitive(pipeline_run_impllinksJSON, "log");
    if (cJSON_IsNull(log)) {
        log = NULL;
    }
    if (log) { 
    log_local_nonprim = link_parseFromJSON(log); //nonprimitive
    }

    // pipeline_run_impllinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(pipeline_run_impllinksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // pipeline_run_impllinks->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(pipeline_run_impllinksJSON, "actions");
    if (cJSON_IsNull(actions)) {
        actions = NULL;
    }
    if (actions) { 
    actions_local_nonprim = link_parseFromJSON(actions); //nonprimitive
    }

    // pipeline_run_impllinks->steps
    cJSON *steps = cJSON_GetObjectItemCaseSensitive(pipeline_run_impllinksJSON, "steps");
    if (cJSON_IsNull(steps)) {
        steps = NULL;
    }
    if (steps) { 
    steps_local_nonprim = link_parseFromJSON(steps); //nonprimitive
    }

    // pipeline_run_impllinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_run_impllinksJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    pipeline_run_impllinks_local_var = pipeline_run_impllinks_create_internal (
        nodes ? nodes_local_nonprim : NULL,
        log ? log_local_nonprim : NULL,
        self ? self_local_nonprim : NULL,
        actions ? actions_local_nonprim : NULL,
        steps ? steps_local_nonprim : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return pipeline_run_impllinks_local_var;
end:
    if (nodes_local_nonprim) {
        link_free(nodes_local_nonprim);
        nodes_local_nonprim = NULL;
    }
    if (log_local_nonprim) {
        link_free(log_local_nonprim);
        log_local_nonprim = NULL;
    }
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (actions_local_nonprim) {
        link_free(actions_local_nonprim);
        actions_local_nonprim = NULL;
    }
    if (steps_local_nonprim) {
        link_free(steps_local_nonprim);
        steps_local_nonprim = NULL;
    }
    return NULL;

}
