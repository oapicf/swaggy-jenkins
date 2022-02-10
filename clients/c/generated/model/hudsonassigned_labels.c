#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "hudsonassigned_labels.h"



hudsonassigned_labels_t *hudsonassigned_labels_create(
    char *_class
    ) {
    hudsonassigned_labels_t *hudsonassigned_labels_local_var = malloc(sizeof(hudsonassigned_labels_t));
    if (!hudsonassigned_labels_local_var) {
        return NULL;
    }
    hudsonassigned_labels_local_var->_class = _class;

    return hudsonassigned_labels_local_var;
}


void hudsonassigned_labels_free(hudsonassigned_labels_t *hudsonassigned_labels) {
    if(NULL == hudsonassigned_labels){
        return ;
    }
    listEntry_t *listEntry;
    if (hudsonassigned_labels->_class) {
        free(hudsonassigned_labels->_class);
        hudsonassigned_labels->_class = NULL;
    }
    free(hudsonassigned_labels);
}

cJSON *hudsonassigned_labels_convertToJSON(hudsonassigned_labels_t *hudsonassigned_labels) {
    cJSON *item = cJSON_CreateObject();

    // hudsonassigned_labels->_class
    if(hudsonassigned_labels->_class) { 
    if(cJSON_AddStringToObject(item, "_class", hudsonassigned_labels->_class) == NULL) {
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

hudsonassigned_labels_t *hudsonassigned_labels_parseFromJSON(cJSON *hudsonassigned_labelsJSON){

    hudsonassigned_labels_t *hudsonassigned_labels_local_var = NULL;

    // hudsonassigned_labels->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(hudsonassigned_labelsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    hudsonassigned_labels_local_var = hudsonassigned_labels_create (
        _class ? strdup(_class->valuestring) : NULL
        );

    return hudsonassigned_labels_local_var;
end:
    return NULL;

}
