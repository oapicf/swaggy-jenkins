#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "null_scm.h"



static null_scm_t *null_scm_create_internal(
    char *_class
    ) {
    null_scm_t *null_scm_local_var = malloc(sizeof(null_scm_t));
    if (!null_scm_local_var) {
        return NULL;
    }
    memset(null_scm_local_var, 0, sizeof(null_scm_t));
    null_scm_local_var->_library_owned = 1;
    null_scm_local_var->_class = _class;
    return null_scm_local_var;
}

__attribute__((deprecated)) null_scm_t *null_scm_create(
    char *_class
    ) {
    null_scm_t *result = null_scm_create_internal (
        _class
        );
    if (!result) {
    }
    return result;
}

void null_scm_free(null_scm_t *null_scm) {
    if(NULL == null_scm){
        return ;
    }
    if(null_scm->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "null_scm_free");
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

    char *_class_local_str = NULL;

    // null_scm->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(null_scmJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    null_scm_local_var = null_scm_create_internal (
        _class_local_str
        );

    if (!null_scm_local_var) {
        goto end;
    }

    return null_scm_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
