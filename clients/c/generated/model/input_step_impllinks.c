#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "input_step_impllinks.h"



input_step_impllinks_t *input_step_impllinks_create(
    link_t *self,
    char *_class
    ) {
    input_step_impllinks_t *input_step_impllinks_local_var = malloc(sizeof(input_step_impllinks_t));
    if (!input_step_impllinks_local_var) {
        return NULL;
    }
    input_step_impllinks_local_var->self = self;
    input_step_impllinks_local_var->_class = _class;

    return input_step_impllinks_local_var;
}


void input_step_impllinks_free(input_step_impllinks_t *input_step_impllinks) {
    if(NULL == input_step_impllinks){
        return ;
    }
    listEntry_t *listEntry;
    if (input_step_impllinks->self) {
        link_free(input_step_impllinks->self);
        input_step_impllinks->self = NULL;
    }
    if (input_step_impllinks->_class) {
        free(input_step_impllinks->_class);
        input_step_impllinks->_class = NULL;
    }
    free(input_step_impllinks);
}

cJSON *input_step_impllinks_convertToJSON(input_step_impllinks_t *input_step_impllinks) {
    cJSON *item = cJSON_CreateObject();

    // input_step_impllinks->self
    if(input_step_impllinks->self) { 
    cJSON *self_local_JSON = link_convertToJSON(input_step_impllinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // input_step_impllinks->_class
    if(input_step_impllinks->_class) { 
    if(cJSON_AddStringToObject(item, "_class", input_step_impllinks->_class) == NULL) {
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

input_step_impllinks_t *input_step_impllinks_parseFromJSON(cJSON *input_step_impllinksJSON){

    input_step_impllinks_t *input_step_impllinks_local_var = NULL;

    // define the local variable for input_step_impllinks->self
    link_t *self_local_nonprim = NULL;

    // input_step_impllinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(input_step_impllinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // input_step_impllinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(input_step_impllinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    input_step_impllinks_local_var = input_step_impllinks_create (
        self ? self_local_nonprim : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return input_step_impllinks_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
