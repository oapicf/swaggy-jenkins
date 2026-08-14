#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "empty_change_log_set.h"



static empty_change_log_set_t *empty_change_log_set_create_internal(
    char *_class,
    char *kind
    ) {
    empty_change_log_set_t *empty_change_log_set_local_var = malloc(sizeof(empty_change_log_set_t));
    if (!empty_change_log_set_local_var) {
        return NULL;
    }
    memset(empty_change_log_set_local_var, 0, sizeof(empty_change_log_set_t));
    empty_change_log_set_local_var->_library_owned = 1;
    empty_change_log_set_local_var->_class = _class;
    empty_change_log_set_local_var->kind = kind;
    return empty_change_log_set_local_var;
}

__attribute__((deprecated)) empty_change_log_set_t *empty_change_log_set_create(
    char *_class,
    char *kind
    ) {
    empty_change_log_set_t *result = empty_change_log_set_create_internal (
        _class,
        kind
        );
    if (!result) {
    }
    return result;
}

void empty_change_log_set_free(empty_change_log_set_t *empty_change_log_set) {
    if(NULL == empty_change_log_set){
        return ;
    }
    if(empty_change_log_set->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "empty_change_log_set_free");
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

    char *_class_local_str = NULL;

    char *kind_local_str = NULL;

    // empty_change_log_set->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(empty_change_log_setJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // empty_change_log_set->kind
    cJSON *kind = cJSON_GetObjectItemCaseSensitive(empty_change_log_setJSON, "kind");
    if (cJSON_IsNull(kind)) {
        kind = NULL;
    }
    if (kind) { 
    if(!cJSON_IsString(kind) && !cJSON_IsNull(kind))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (kind && !cJSON_IsNull(kind)) kind_local_str = strdup(kind->valuestring);

    empty_change_log_set_local_var = empty_change_log_set_create_internal (
        _class_local_str,
        kind_local_str
        );

    if (!empty_change_log_set_local_var) {
        goto end;
    }

    return empty_change_log_set_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (kind_local_str) {
        free(kind_local_str);
        kind_local_str = NULL;
    }
    return NULL;

}
