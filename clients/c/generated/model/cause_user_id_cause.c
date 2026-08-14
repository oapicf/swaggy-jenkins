#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cause_user_id_cause.h"



static cause_user_id_cause_t *cause_user_id_cause_create_internal(
    char *_class,
    char *short_description,
    char *user_id,
    char *user_name
    ) {
    cause_user_id_cause_t *cause_user_id_cause_local_var = malloc(sizeof(cause_user_id_cause_t));
    if (!cause_user_id_cause_local_var) {
        return NULL;
    }
    memset(cause_user_id_cause_local_var, 0, sizeof(cause_user_id_cause_t));
    cause_user_id_cause_local_var->_library_owned = 1;
    cause_user_id_cause_local_var->_class = _class;
    cause_user_id_cause_local_var->short_description = short_description;
    cause_user_id_cause_local_var->user_id = user_id;
    cause_user_id_cause_local_var->user_name = user_name;
    return cause_user_id_cause_local_var;
}

__attribute__((deprecated)) cause_user_id_cause_t *cause_user_id_cause_create(
    char *_class,
    char *short_description,
    char *user_id,
    char *user_name
    ) {
    cause_user_id_cause_t *result = cause_user_id_cause_create_internal (
        _class,
        short_description,
        user_id,
        user_name
        );
    if (!result) {
    }
    return result;
}

void cause_user_id_cause_free(cause_user_id_cause_t *cause_user_id_cause) {
    if(NULL == cause_user_id_cause){
        return ;
    }
    if(cause_user_id_cause->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cause_user_id_cause_free");
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

    char *_class_local_str = NULL;

    char *short_description_local_str = NULL;

    char *user_id_local_str = NULL;

    char *user_name_local_str = NULL;

    // cause_user_id_cause->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // cause_user_id_cause->short_description
    cJSON *short_description = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "shortDescription");
    if (cJSON_IsNull(short_description)) {
        short_description = NULL;
    }
    if (short_description) { 
    if(!cJSON_IsString(short_description) && !cJSON_IsNull(short_description))
    {
    goto end; //String
    }
    }

    // cause_user_id_cause->user_id
    cJSON *user_id = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "userId");
    if (cJSON_IsNull(user_id)) {
        user_id = NULL;
    }
    if (user_id) { 
    if(!cJSON_IsString(user_id) && !cJSON_IsNull(user_id))
    {
    goto end; //String
    }
    }

    // cause_user_id_cause->user_name
    cJSON *user_name = cJSON_GetObjectItemCaseSensitive(cause_user_id_causeJSON, "userName");
    if (cJSON_IsNull(user_name)) {
        user_name = NULL;
    }
    if (user_name) { 
    if(!cJSON_IsString(user_name) && !cJSON_IsNull(user_name))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (short_description && !cJSON_IsNull(short_description)) short_description_local_str = strdup(short_description->valuestring);
    if (user_id && !cJSON_IsNull(user_id)) user_id_local_str = strdup(user_id->valuestring);
    if (user_name && !cJSON_IsNull(user_name)) user_name_local_str = strdup(user_name->valuestring);

    cause_user_id_cause_local_var = cause_user_id_cause_create_internal (
        _class_local_str,
        short_description_local_str,
        user_id_local_str,
        user_name_local_str
        );

    if (!cause_user_id_cause_local_var) {
        goto end;
    }

    return cause_user_id_cause_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (short_description_local_str) {
        free(short_description_local_str);
        short_description_local_str = NULL;
    }
    if (user_id_local_str) {
        free(user_id_local_str);
        user_id_local_str = NULL;
    }
    if (user_name_local_str) {
        free(user_name_local_str);
        user_name_local_str = NULL;
    }
    return NULL;

}
