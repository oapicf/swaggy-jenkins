#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_impllinks.h"



pipeline_impllinks_t *pipeline_impllinks_create(
    link_t *runs,
    link_t *self,
    link_t *queue,
    link_t *actions,
    char *_class
    ) {
    pipeline_impllinks_t *pipeline_impllinks_local_var = malloc(sizeof(pipeline_impllinks_t));
    if (!pipeline_impllinks_local_var) {
        return NULL;
    }
    pipeline_impllinks_local_var->runs = runs;
    pipeline_impllinks_local_var->self = self;
    pipeline_impllinks_local_var->queue = queue;
    pipeline_impllinks_local_var->actions = actions;
    pipeline_impllinks_local_var->_class = _class;

    return pipeline_impllinks_local_var;
}


void pipeline_impllinks_free(pipeline_impllinks_t *pipeline_impllinks) {
    if(NULL == pipeline_impllinks){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_impllinks->runs) {
        link_free(pipeline_impllinks->runs);
        pipeline_impllinks->runs = NULL;
    }
    if (pipeline_impllinks->self) {
        link_free(pipeline_impllinks->self);
        pipeline_impllinks->self = NULL;
    }
    if (pipeline_impllinks->queue) {
        link_free(pipeline_impllinks->queue);
        pipeline_impllinks->queue = NULL;
    }
    if (pipeline_impllinks->actions) {
        link_free(pipeline_impllinks->actions);
        pipeline_impllinks->actions = NULL;
    }
    if (pipeline_impllinks->_class) {
        free(pipeline_impllinks->_class);
        pipeline_impllinks->_class = NULL;
    }
    free(pipeline_impllinks);
}

cJSON *pipeline_impllinks_convertToJSON(pipeline_impllinks_t *pipeline_impllinks) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_impllinks->runs
    if(pipeline_impllinks->runs) {
    cJSON *runs_local_JSON = link_convertToJSON(pipeline_impllinks->runs);
    if(runs_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "runs", runs_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_impllinks->self
    if(pipeline_impllinks->self) {
    cJSON *self_local_JSON = link_convertToJSON(pipeline_impllinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_impllinks->queue
    if(pipeline_impllinks->queue) {
    cJSON *queue_local_JSON = link_convertToJSON(pipeline_impllinks->queue);
    if(queue_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "queue", queue_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_impllinks->actions
    if(pipeline_impllinks->actions) {
    cJSON *actions_local_JSON = link_convertToJSON(pipeline_impllinks->actions);
    if(actions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "actions", actions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_impllinks->_class
    if(pipeline_impllinks->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_impllinks->_class) == NULL) {
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

pipeline_impllinks_t *pipeline_impllinks_parseFromJSON(cJSON *pipeline_impllinksJSON){

    pipeline_impllinks_t *pipeline_impllinks_local_var = NULL;

    // define the local variable for pipeline_impllinks->runs
    link_t *runs_local_nonprim = NULL;

    // define the local variable for pipeline_impllinks->self
    link_t *self_local_nonprim = NULL;

    // define the local variable for pipeline_impllinks->queue
    link_t *queue_local_nonprim = NULL;

    // define the local variable for pipeline_impllinks->actions
    link_t *actions_local_nonprim = NULL;

    // pipeline_impllinks->runs
    cJSON *runs = cJSON_GetObjectItemCaseSensitive(pipeline_impllinksJSON, "runs");
    if (runs) { 
    runs_local_nonprim = link_parseFromJSON(runs); //nonprimitive
    }

    // pipeline_impllinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(pipeline_impllinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // pipeline_impllinks->queue
    cJSON *queue = cJSON_GetObjectItemCaseSensitive(pipeline_impllinksJSON, "queue");
    if (queue) { 
    queue_local_nonprim = link_parseFromJSON(queue); //nonprimitive
    }

    // pipeline_impllinks->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(pipeline_impllinksJSON, "actions");
    if (actions) { 
    actions_local_nonprim = link_parseFromJSON(actions); //nonprimitive
    }

    // pipeline_impllinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_impllinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    pipeline_impllinks_local_var = pipeline_impllinks_create (
        runs ? runs_local_nonprim : NULL,
        self ? self_local_nonprim : NULL,
        queue ? queue_local_nonprim : NULL,
        actions ? actions_local_nonprim : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return pipeline_impllinks_local_var;
end:
    if (runs_local_nonprim) {
        link_free(runs_local_nonprim);
        runs_local_nonprim = NULL;
    }
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (queue_local_nonprim) {
        link_free(queue_local_nonprim);
        queue_local_nonprim = NULL;
    }
    if (actions_local_nonprim) {
        link_free(actions_local_nonprim);
        actions_local_nonprim = NULL;
    }
    return NULL;

}
