#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_step_impllinks.h"



pipeline_step_impllinks_t *pipeline_step_impllinks_create(
    link_t *self,
    link_t *actions,
    char *_class
    ) {
    pipeline_step_impllinks_t *pipeline_step_impllinks_local_var = malloc(sizeof(pipeline_step_impllinks_t));
    if (!pipeline_step_impllinks_local_var) {
        return NULL;
    }
    pipeline_step_impllinks_local_var->self = self;
    pipeline_step_impllinks_local_var->actions = actions;
    pipeline_step_impllinks_local_var->_class = _class;

    return pipeline_step_impllinks_local_var;
}


void pipeline_step_impllinks_free(pipeline_step_impllinks_t *pipeline_step_impllinks) {
    if(NULL == pipeline_step_impllinks){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_step_impllinks->self) {
        link_free(pipeline_step_impllinks->self);
        pipeline_step_impllinks->self = NULL;
    }
    if (pipeline_step_impllinks->actions) {
        link_free(pipeline_step_impllinks->actions);
        pipeline_step_impllinks->actions = NULL;
    }
    if (pipeline_step_impllinks->_class) {
        free(pipeline_step_impllinks->_class);
        pipeline_step_impllinks->_class = NULL;
    }
    free(pipeline_step_impllinks);
}

cJSON *pipeline_step_impllinks_convertToJSON(pipeline_step_impllinks_t *pipeline_step_impllinks) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_step_impllinks->self
    if(pipeline_step_impllinks->self) { 
    cJSON *self_local_JSON = link_convertToJSON(pipeline_step_impllinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // pipeline_step_impllinks->actions
    if(pipeline_step_impllinks->actions) { 
    cJSON *actions_local_JSON = link_convertToJSON(pipeline_step_impllinks->actions);
    if(actions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "actions", actions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // pipeline_step_impllinks->_class
    if(pipeline_step_impllinks->_class) { 
    if(cJSON_AddStringToObject(item, "_class", pipeline_step_impllinks->_class) == NULL) {
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

pipeline_step_impllinks_t *pipeline_step_impllinks_parseFromJSON(cJSON *pipeline_step_impllinksJSON){

    pipeline_step_impllinks_t *pipeline_step_impllinks_local_var = NULL;

    // define the local variable for pipeline_step_impllinks->self
    link_t *self_local_nonprim = NULL;

    // define the local variable for pipeline_step_impllinks->actions
    link_t *actions_local_nonprim = NULL;

    // pipeline_step_impllinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(pipeline_step_impllinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // pipeline_step_impllinks->actions
    cJSON *actions = cJSON_GetObjectItemCaseSensitive(pipeline_step_impllinksJSON, "actions");
    if (actions) { 
    actions_local_nonprim = link_parseFromJSON(actions); //nonprimitive
    }

    // pipeline_step_impllinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_step_impllinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    pipeline_step_impllinks_local_var = pipeline_step_impllinks_create (
        self ? self_local_nonprim : NULL,
        actions ? actions_local_nonprim : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return pipeline_step_impllinks_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (actions_local_nonprim) {
        link_free(actions_local_nonprim);
        actions_local_nonprim = NULL;
    }
    return NULL;

}
