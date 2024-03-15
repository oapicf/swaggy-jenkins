#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "null_scm.h"



null_scm_t *null_scm_create(
    char *_class
    ) {
    null_scm_t *null_scm_local_var = malloc(sizeof(null_scm_t));
    if (!null_scm_local_var) {
        return NULL;
    }
    null_scm_local_var->_class = _class;

    return null_scm_local_var;
}


void null_scm_free(null_scm_t *null_scm) {
    if(NULL == null_scm){
        return ;
    }
    listEntry_t *listEntry;
    if (null_scm->_class) {
        free(null_scm->_class);
        null_scm->_class = NULL;
    }
    free(null_scm);
}

cJSON *null_scm_convertToJSON(null_scm_t *null_scm) {
    cJSON *item = cJSON_CreateObject();

    // null_scm->_class
    if(null_scm->_class) {
    if(cJSON_AddStringToObject(item, "_class", null_scm->_class) == NULL) {
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

null_scm_t *null_scm_parseFromJSON(cJSON *null_scmJSON){

    null_scm_t *null_scm_local_var = NULL;

    // null_scm->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(null_scmJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    null_scm_local_var = null_scm_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return null_scm_local_var;
end:
    return NULL;

}
