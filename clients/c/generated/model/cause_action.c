#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cause_action.h"



static cause_action_t *cause_action_create_internal(
    char *_class,
    list_t *causes
    ) {
    cause_action_t *cause_action_local_var = malloc(sizeof(cause_action_t));
    if (!cause_action_local_var) {
        return NULL;
    }
    cause_action_local_var->_class = _class;
    cause_action_local_var->causes = causes;

    cause_action_local_var->_library_owned = 1;
    return cause_action_local_var;
}

__attribute__((deprecated)) cause_action_t *cause_action_create(
    char *_class,
    list_t *causes
    ) {
    return cause_action_create_internal (
        _class,
        causes
        );
}

void cause_action_free(cause_action_t *cause_action) {
    if(NULL == cause_action){
        return ;
    }
    if(cause_action->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cause_action_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cause_action->_class) {
        free(cause_action->_class);
        cause_action->_class = NULL;
    }
    if (cause_action->causes) {
        list_ForEach(listEntry, cause_action->causes) {
            cause_user_id_cause_free(listEntry->data);
        }
        list_freeList(cause_action->causes);
        cause_action->causes = NULL;
    }
    free(cause_action);
}

cJSON *cause_action_convertToJSON(cause_action_t *cause_action) {
    cJSON *item = cJSON_CreateObject();

    // cause_action->_class
    if(cause_action->_class) {
    if(cJSON_AddStringToObject(item, "_class", cause_action->_class) == NULL) {
    goto fail; //String
    }
    }


    // cause_action->causes
    if(cause_action->causes) {
    cJSON *causes = cJSON_AddArrayToObject(item, "causes");
    if(causes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *causesListEntry;
    if (cause_action->causes) {
    list_ForEach(causesListEntry, cause_action->causes) {
    cJSON *itemLocal = cause_user_id_cause_convertToJSON(causesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(causes, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cause_action_t *cause_action_parseFromJSON(cJSON *cause_actionJSON){

    cause_action_t *cause_action_local_var = NULL;

    // define the local list for cause_action->causes
    list_t *causesList = NULL;

    // cause_action->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(cause_actionJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // cause_action->causes
    cJSON *causes = cJSON_GetObjectItemCaseSensitive(cause_actionJSON, "causes");
    if (cJSON_IsNull(causes)) {
        causes = NULL;
    }
    if (causes) { 
    cJSON *causes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(causes)){
        goto end; //nonprimitive container
    }

    causesList = list_createList();

    cJSON_ArrayForEach(causes_local_nonprimitive,causes )
    {
        if(!cJSON_IsObject(causes_local_nonprimitive)){
            goto end;
        }
        cause_user_id_cause_t *causesItem = cause_user_id_cause_parseFromJSON(causes_local_nonprimitive);

        list_addElement(causesList, causesItem);
    }
    }


    cause_action_local_var = cause_action_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        causes ? causesList : NULL
        );

    return cause_action_local_var;
end:
    if (causesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, causesList) {
            cause_user_id_cause_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(causesList);
        causesList = NULL;
    }
    return NULL;

}
