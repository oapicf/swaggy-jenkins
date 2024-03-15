#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "branch_impllinks.h"



branch_impllinks_t *branch_impllinks_create(
    link_t *self,
    link_t *actions,
    link_t *runs,
    link_t *queue,
    char *_class
    ) {
    branch_impllinks_t *branch_impllinks_local_var = malloc(sizeof(branch_impllinks_t));
    if (!branch_impllinks_local_var) {
        return NULL;
    }
    branch_impllinks_local_var->self = self;
    branch_impllinks_local_var->actions = actions;
    branch_impllinks_local_var->runs = runs;
    branch_impllinks_local_var->queue = queue;
    branch_impllinks_local_var->_class = _class;

    return branch_impllinks_local_var;
}


void branch_impllinks_free(branch_impllinks_t *branch_impllinks) {
    if(NULL == branch_impllinks){
        return ;
    }
    listEntry_t *listEntry;
    if (branch_impllinks->self) {
        link_free(branch_impllinks->self);
        branch_impllinks->self = NULL;
    }
    if (branch_impllinks->actions) {
        link_free(branch_impllinks->actions);
        branch_impllinks->actions = NULL;
    }
    if (branch_impllinks->runs) {
        link_free(branch_impllinks->runs);
        branch_impllinks->runs = NULL;
    }
    if (branch_impllinks->queue) {
        link_free(branch_impllinks->queue);
        branch_impllinks->queue = NULL;
    }
    if (branch_impllinks->_class) {
        free(branch_impllinks->_class);
        branch_impllinks->_class = NULL;
    }
    free(branch_impllinks);
}

cJSON *branch_impllinks_convertToJSON(branch_impllinks_t *branch_impllinks) {
    cJSON *item = cJSON_CreateObject();

    // branch_impllinks->self
    if(branch_impllinks->self) {
    cJSON *self_local_JSON = link_convertToJSON(branch_impllinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // branch_impllinks->actions
    if(branch_impllinks->actions) {
    cJSON *actions_local_JSON = link_convertToJSON(branch_impllinks->actions);
    if(actions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "actions", actions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // branch_impllinks->runs
    if(branch_impllinks->runs) {
    cJSON *runs_local_JSON = link_convertToJSON(branch_impllinks->runs);
    if(runs_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "runs", runs_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // branch_impllinks->queue
    if(branch_impllinks->queue) {
    cJSON *queue_local_JSON = link_convertToJSON(branch_impllinks->queue);
    if(queue_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "queue", queue_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // branch_impllinks->_class
    if(branch_impllinks->_class) {
    if(cJSON_AddStringToObject(item, "_class", branch_impllinks->_class) == NULL) {
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

branch_impllinks_t *branch_impllinks_parseFromJSON(cJSON *branch_impllinksJSON){

    branch_impllinks_t *branch_impllinks_local_var = NULL;

    // define the local variable for branch_impllinks->self
    link_t *self_local_nonprim = NULL;

    // define the local variable for branch_impllinks->actions
    link_t *actions_local_nonprim = NULL;

    // define the local variable for branch_impllinks->runs
    link_t *runs_local_nonprim = NULL;

    // define the local variable for branch_impllinks->queue
    link_t *queue_local_nonprim = NULL;

    // branch_impllinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(branch_impllinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // branch_impllinks->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(branch_impllinksJSON, "actions");
    if (actions) { 
    actions_local_nonprim = link_parseFromJSON(actions); //nonprimitive
    }

    // branch_impllinks->runs
    cJSON *runs = cJSON_GetObjectItemCaseSensitive(branch_impllinksJSON, "runs");
    if (runs) { 
    runs_local_nonprim = link_parseFromJSON(runs); //nonprimitive
    }

    // branch_impllinks->queue
    cJSON *queue = cJSON_GetObjectItemCaseSensitive(branch_impllinksJSON, "queue");
    if (queue) { 
    queue_local_nonprim = link_parseFromJSON(queue); //nonprimitive
    }

    // branch_impllinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(branch_impllinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    branch_impllinks_local_var = branch_impllinks_create (
        self ? self_local_nonprim : NULL,
        actions ? actions_local_nonprim : NULL,
        runs ? runs_local_nonprim : NULL,
        queue ? queue_local_nonprim : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return branch_impllinks_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (actions_local_nonprim) {
        link_free(actions_local_nonprim);
        actions_local_nonprim = NULL;
    }
    if (runs_local_nonprim) {
        link_free(runs_local_nonprim);
        runs_local_nonprim = NULL;
    }
    if (queue_local_nonprim) {
        link_free(queue_local_nonprim);
        queue_local_nonprim = NULL;
    }
    return NULL;

}
