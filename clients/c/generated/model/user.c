#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user.h"



user_t *user_create(
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
    user_local_var->_class = _class;
    user_local_var->id = id;
    user_local_var->full_name = full_name;
    user_local_var->email = email;
    user_local_var->name = name;

    return user_local_var;
}


void user_free(user_t *user) {
    if(NULL == user){
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

    // user->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(userJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // user->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(userJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // user->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(userJSON, "fullName");
    if (full_name) { 
    if(!cJSON_IsString(full_name))
    {
    goto end; //String
    }
    }

    // user->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(userJSON, "email");
    if (email) { 
    if(!cJSON_IsString(email))
    {
    goto end; //String
    }
    }

    // user->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(userJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }


    user_local_var = user_create (
        _class ? strdup(_class->valuestring) : NULL,
        id ? strdup(id->valuestring) : NULL,
        full_name ? strdup(full_name->valuestring) : NULL,
        email ? strdup(email->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL
        );

    return user_local_var;
end:
    return NULL;

}
