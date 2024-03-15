#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "empty_change_log_set.h"



empty_change_log_set_t *empty_change_log_set_create(
    char *_class,
    char *kind
    ) {
    empty_change_log_set_t *empty_change_log_set_local_var = malloc(sizeof(empty_change_log_set_t));
    if (!empty_change_log_set_local_var) {
        return NULL;
    }
    empty_change_log_set_local_var->_class = _class;
    empty_change_log_set_local_var->kind = kind;

    return empty_change_log_set_local_var;
}


void empty_change_log_set_free(empty_change_log_set_t *empty_change_log_set) {
    if(NULL == empty_change_log_set){
        return ;
    }
    listEntry_t *listEntry;
    if (empty_change_log_set->_class) {
        free(empty_change_log_set->_class);
        empty_change_log_set->_class = NULL;
    }
    if (empty_change_log_set->kind) {
        free(empty_change_log_set->kind);
        empty_change_log_set->kind = NULL;
    }
    free(empty_change_log_set);
}

cJSON *empty_change_log_set_convertToJSON(empty_change_log_set_t *empty_change_log_set) {
    cJSON *item = cJSON_CreateObject();

    // empty_change_log_set->_class
    if(empty_change_log_set->_class) {
    if(cJSON_AddStringToObject(item, "_class", empty_change_log_set->_class) == NULL) {
    goto fail; //String
    }
    }


    // empty_change_log_set->kind
    if(empty_change_log_set->kind) {
    if(cJSON_AddStringToObject(item, "kind", empty_change_log_set->kind) == NULL) {
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

empty_change_log_set_t *empty_change_log_set_parseFromJSON(cJSON *empty_change_log_setJSON){

    empty_change_log_set_t *empty_change_log_set_local_var = NULL;

    // empty_change_log_set->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(empty_change_log_setJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // empty_change_log_set->kind
    cJSON *kind = cJSON_GetObjectItemCaseSensitive(empty_change_log_setJSON, "kind");
    if (kind) { 
    if(!cJSON_IsString(kind) && !cJSON_IsNull(kind))
    {
    goto end; //String
    }
    }


    empty_change_log_set_local_var = empty_change_log_set_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        kind && !cJSON_IsNull(kind) ? strdup(kind->valuestring) : NULL
        );

    return empty_change_log_set_local_var;
end:
    return NULL;

}
