#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user.h"



static user_t *user_create_internal(
    char *_class,
    char *id,
    char *full_name,
    char *email,
    char *name
    ) {
    user_t *user_local_var = malloc(sizeof(user_t));
    if (!user_local_var) {
        return NULL;
    }
    memset(user_local_var, 0, sizeof(user_t));
    user_local_var->_library_owned = 1;
    user_local_var->_class = _class;
    user_local_var->id = id;
    user_local_var->full_name = full_name;
    user_local_var->email = email;
    user_local_var->name = name;
    return user_local_var;
}

__attribute__((deprecated)) user_t *user_create(
    char *_class,
    char *id,
    char *full_name,
    char *email,
    char *name
    ) {
    user_t *result = user_create_internal (
        _class,
        id,
        full_name,
        email,
        name
        );
    if (!result) {
    }
    return result;
}

void user_free(user_t *user) {
    if(NULL == user){
        return ;
    }
    if(user->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "user_free");
        return ;
    }
    listEntry_t *listEntry;
    if (user->_class) {
        free(user->_class);
        user->_class = NULL;
    }
    if (user->id) {
        free(user->id);
        user->id = NULL;
    }
    if (user->full_name) {
        free(user->full_name);
        user->full_name = NULL;
    }
    if (user->email) {
        free(user->email);
        user->email = NULL;
    }
    if (user->name) {
        free(user->name);
        user->name = NULL;
    }
    free(user);
}

cJSON *user_convertToJSON(user_t *user) {
    cJSON *item = cJSON_CreateObject();

    // user->_class
    if(user->_class) {
    if(cJSON_AddStringToObject(item, "_class", user->_class) == NULL) {
    goto fail; //String
    }
    }


    // user->id
    if(user->id) {
    if(cJSON_AddStringToObject(item, "id", user->id) == NULL) {
    goto fail; //String
    }
    }


    // user->full_name
    if(user->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", user->full_name) == NULL) {
    goto fail; //String
    }
    }


    // user->email
    if(user->email) {
    if(cJSON_AddStringToObject(item, "email", user->email) == NULL) {
    goto fail; //String
    }
    }


    // user->name
    if(user->name) {
    if(cJSON_AddStringToObject(item, "name", user->name) == NULL) {
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

user_t *user_parseFromJSON(cJSON *userJSON){

    user_t *user_local_var = NULL;

    char *_class_local_str = NULL;

    char *id_local_str = NULL;

    char *full_name_local_str = NULL;

    char *email_local_str = NULL;

    char *name_local_str = NULL;

    // user->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(userJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // user->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(userJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // user->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(userJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // user->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(userJSON, "email");
    if (cJSON_IsNull(email)) {
        email = NULL;
    }
    if (email) { 
    if(!cJSON_IsString(email) && !cJSON_IsNull(email))
    {
    goto end; //String
    }
    }

    // user->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(userJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (id && !cJSON_IsNull(id)) id_local_str = strdup(id->valuestring);
    if (full_name && !cJSON_IsNull(full_name)) full_name_local_str = strdup(full_name->valuestring);
    if (email && !cJSON_IsNull(email)) email_local_str = strdup(email->valuestring);
    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);

    user_local_var = user_create_internal (
        _class_local_str,
        id_local_str,
        full_name_local_str,
        email_local_str,
        name_local_str
        );

    if (!user_local_var) {
        goto end;
    }

    return user_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (id_local_str) {
        free(id_local_str);
        id_local_str = NULL;
    }
    if (full_name_local_str) {
        free(full_name_local_str);
        full_name_local_str = NULL;
    }
    if (email_local_str) {
        free(email_local_str);
        email_local_str = NULL;
    }
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    return NULL;

}
