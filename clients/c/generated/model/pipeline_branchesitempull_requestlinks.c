#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_branchesitempull_requestlinks.h"



pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks_create(
    char *self,
    char *_class
    ) {
    pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks_local_var = malloc(sizeof(pipeline_branchesitempull_requestlinks_t));
    if (!pipeline_branchesitempull_requestlinks_local_var) {
        return NULL;
    }
    pipeline_branchesitempull_requestlinks_local_var->self = self;
    pipeline_branchesitempull_requestlinks_local_var->_class = _class;

    return pipeline_branchesitempull_requestlinks_local_var;
}


void pipeline_branchesitempull_requestlinks_free(pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks) {
    if(NULL == pipeline_branchesitempull_requestlinks){
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_branchesitempull_requestlinks->self) {
        free(pipeline_branchesitempull_requestlinks->self);
        pipeline_branchesitempull_requestlinks->self = NULL;
    }
    if (pipeline_branchesitempull_requestlinks->_class) {
        free(pipeline_branchesitempull_requestlinks->_class);
        pipeline_branchesitempull_requestlinks->_class = NULL;
    }
    free(pipeline_branchesitempull_requestlinks);
}

cJSON *pipeline_branchesitempull_requestlinks_convertToJSON(pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_branchesitempull_requestlinks->self
    if(pipeline_branchesitempull_requestlinks->self) { 
    if(cJSON_AddStringToObject(item, "self", pipeline_branchesitempull_requestlinks->self) == NULL) {
    goto fail; //String
    }
     } 


    // pipeline_branchesitempull_requestlinks->_class
    if(pipeline_branchesitempull_requestlinks->_class) { 
    if(cJSON_AddStringToObject(item, "_class", pipeline_branchesitempull_requestlinks->_class) == NULL) {
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

pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks_parseFromJSON(cJSON *pipeline_branchesitempull_requestlinksJSON){

    pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks_local_var = NULL;

    // pipeline_branchesitempull_requestlinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestlinksJSON, "self");
    if (self) { 
    if(!cJSON_IsString(self))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitempull_requestlinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestlinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    pipeline_branchesitempull_requestlinks_local_var = pipeline_branchesitempull_requestlinks_create (
        self ? strdup(self->valuestring) : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return pipeline_branchesitempull_requestlinks_local_var;
end:
    return NULL;

}
