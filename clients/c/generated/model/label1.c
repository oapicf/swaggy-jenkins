#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "label1.h"



static label1_t *label1_create_internal(
    char *_class
    ) {
    label1_t *label1_local_var = malloc(sizeof(label1_t));
    if (!label1_local_var) {
        return NULL;
    }
    label1_local_var->_class = _class;

    label1_local_var->_library_owned = 1;
    return label1_local_var;
}

__attribute__((deprecated)) label1_t *label1_create(
    char *_class
    ) {
    return label1_create_internal (
        _class
        );
}

void label1_free(label1_t *label1) {
    if(NULL == label1){
        return ;
    }
    if(label1->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "label1_free");
        return ;
    }
    listEntry_t *listEntry;
    if (label1->_class) {
        free(label1->_class);
        label1->_class = NULL;
    }
    free(label1);
}

cJSON *label1_convertToJSON(label1_t *label1) {
    cJSON *item = cJSON_CreateObject();

    // label1->_class
    if(label1->_class) {
    if(cJSON_AddStringToObject(item, "_class", label1->_class) == NULL) {
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

label1_t *label1_parseFromJSON(cJSON *label1JSON){

    label1_t *label1_local_var = NULL;

    // label1->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(label1JSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    label1_local_var = label1_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return label1_local_var;
end:
    return NULL;

}
