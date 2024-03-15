#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cause_user_id_cause.h"



cause_user_id_cause_t *cause_user_id_cause_create(
    char *_class,
    char *short_description,
    char *user_id,
    char *user_name
    ) {
    cause_user_id_cause_t *cause_user_id_cause_local_var = malloc(sizeof(cause_user_id_cause_t));
    if (!cause_user_id_cause_local_var) {
        return NULL;
    }
    cause_user_id_cause_local_var->_class = _class;
    cause_user_id_cause_local_var->short_description = short_description;
    cause_user_id_cause_local_var->user_id = user_id;
    cause_user_id_cause_local_var->user_name = user_name;

    return cause_user_id_cause_local_var;
}


void cause_user_id_cause_free(cause_user_id_cause_t *cause_user_id_cause) {
    if(NULL == cause_user_id_cause){
        return ;
    }
    listEntry_t *listEntry;
    if (cause_user_id_cause->_class) {
        free(cause_user_id_cause->_class);
        cause_user_id_cause->_class = NULL;
    }
    if (cause_user_id_cause->short_description) {
        free(cause_user_id_cause->short_description);
        cause_user_id_cause->short_description = NULL;
    }
    if (cause_user_id_cause->user_id) {
        free(cause_user_id_cause->user_id);
        cause_user_id_cause->user_id = NULL;
    }
    if (cause_user_id_cause->user_name) {
        free(cause_user_id_cause->user_name);
        cause_user_id_cause->user_name = NULL;
    }
    free(cause_user_id_cause);
}

cJSON *cause_user_id_cause_convertToJSON(cause_user_id_cause_t *cause_user_id_cause) {
    cJSON *item = cJSON_CreateObject();

    // cause_user_id_cause->_class
    if(cause_user_id_cause->_class) {
    if(cJSON_AddStringToObject(item, "_class", cause_user_id_cause->_class) == NULL) {
    goto fail; //String
    }
    }


    // cause_user_id_cause->short_description
    if(cause_user_id_cause->short_description) {
    if(cJSON_AddStringToObject(item, "shortDescription", cause_user_id_cause->short_description) == NULL) {
    goto fail; //String
    }
    }


    // cause_user_id_cause->user_id
    if(cause_user_id_cause->user_id) {
    if(cJSON_AddStringToObject(item, "userId", cause_user_id_cause->user_id) == NULL) {
    goto fail; //String
    }
    }


    // cause_user_id_cause->user_name
    if(cause_user_id_cause->user_name) {
    if(cJSON_AddStringToObject(item, "userName", cause_user_id_cause->user_name) == NULL) {
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

cause_user_id_cause_t *cause_user_id_cause_parseFromJSON(cJSON *cause_user_id_causeJSON){

    cause_user_id_cause_t *cause_user_id_cause_local_var = NULL;

    // cause_user_id_cause->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // cause_user_id_cause->short_description
    cJSON *short_description = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "shortDescription");
    if (short_description) { 
    if(!cJSON_IsString(short_description) && !cJSON_IsNull(short_description))
    {
    goto end; //String
    }
    }

    // cause_user_id_cause->user_id
    cJSON *user_id = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "userId");
    if (user_id) { 
    if(!cJSON_IsString(user_id) && !cJSON_IsNull(user_id))
    {
    goto end; //String
    }
    }

    // cause_user_id_cause->user_name
    cJSON *user_name = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "userName");
    if (user_name) { 
    if(!cJSON_IsString(user_name) && !cJSON_IsNull(user_name))
    {
    goto end; //String
    }
    }


    cause_user_id_cause_local_var = cause_user_id_cause_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        short_description && !cJSON_IsNull(short_description) ? strdup(short_description->valuestring) : NULL,
        user_id && !cJSON_IsNull(user_id) ? strdup(user_id->valuestring) : NULL,
        user_name && !cJSON_IsNull(user_name) ? strdup(user_name->valuestring) : NULL
        );

    return cause_user_id_cause_local_var;
end:
    return NULL;

}
