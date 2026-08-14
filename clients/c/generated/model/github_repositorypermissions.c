#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_repositorypermissions.h"



static github_repositorypermissions_t *github_repositorypermissions_create_internal(
    int *admin,
    int *push,
    int *pull,
    char *_class
    ) {
    github_repositorypermissions_t *github_repositorypermissions_local_var = malloc(sizeof(github_repositorypermissions_t));
    if (!github_repositorypermissions_local_var) {
        return NULL;
    }
    memset(github_repositorypermissions_local_var, 0, sizeof(github_repositorypermissions_t));
    github_repositorypermissions_local_var->_library_owned = 1;
    github_repositorypermissions_local_var->admin = admin;
    github_repositorypermissions_local_var->push = push;
    github_repositorypermissions_local_var->pull = pull;
    github_repositorypermissions_local_var->_class = _class;
    return github_repositorypermissions_local_var;
}

__attribute__((deprecated)) github_repositorypermissions_t *github_repositorypermissions_create(
    int *admin,
    int *push,
    int *pull,
    char *_class
    ) {
    int *admin_copy = NULL;
    if (admin) {
        admin_copy = malloc(sizeof(int));
        if (admin_copy) *admin_copy = *admin;
    }
    int *push_copy = NULL;
    if (push) {
        push_copy = malloc(sizeof(int));
        if (push_copy) *push_copy = *push;
    }
    int *pull_copy = NULL;
    if (pull) {
        pull_copy = malloc(sizeof(int));
        if (pull_copy) *pull_copy = *pull;
    }
    github_repositorypermissions_t *result = github_repositorypermissions_create_internal (
        admin_copy,
        push_copy,
        pull_copy,
        _class
        );
    if (!result) {
        free(admin_copy);
        free(push_copy);
        free(pull_copy);
    }
    return result;
}

void github_repositorypermissions_free(github_repositorypermissions_t *github_repositorypermissions) {
    if(NULL == github_repositorypermissions){
        return ;
    }
    if(github_repositorypermissions->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "github_repositorypermissions_free");
        return ;
    }
    listEntry_t *listEntry;
    if (github_repositorypermissions->admin) {
        free(github_repositorypermissions->admin);
        github_repositorypermissions->admin = NULL;
    }
    if (github_repositorypermissions->push) {
        free(github_repositorypermissions->push);
        github_repositorypermissions->push = NULL;
    }
    if (github_repositorypermissions->pull) {
        free(github_repositorypermissions->pull);
        github_repositorypermissions->pull = NULL;
    }
    if (github_repositorypermissions->_class) {
        free(github_repositorypermissions->_class);
        github_repositorypermissions->_class = NULL;
    }
    free(github_repositorypermissions);
}

cJSON *github_repositorypermissions_convertToJSON(github_repositorypermissions_t *github_repositorypermissions) {
    cJSON *item = cJSON_CreateObject();

    // github_repositorypermissions->admin
    if(github_repositorypermissions->admin) {
    if(cJSON_AddBoolToObject(item, "admin", *github_repositorypermissions->admin) == NULL) {
    goto fail; //Bool
    }
    }


    // github_repositorypermissions->push
    if(github_repositorypermissions->push) {
    if(cJSON_AddBoolToObject(item, "push", *github_repositorypermissions->push) == NULL) {
    goto fail; //Bool
    }
    }


    // github_repositorypermissions->pull
    if(github_repositorypermissions->pull) {
    if(cJSON_AddBoolToObject(item, "pull", *github_repositorypermissions->pull) == NULL) {
    goto fail; //Bool
    }
    }


    // github_repositorypermissions->_class
    if(github_repositorypermissions->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_repositorypermissions->_class) == NULL) {
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

github_repositorypermissions_t *github_repositorypermissions_parseFromJSON(cJSON *github_repositorypermissionsJSON){

    github_repositorypermissions_t *github_repositorypermissions_local_var = NULL;

    // define the local variable for github_repositorypermissions->admin
    int *admin_local_var = NULL;

    // define the local variable for github_repositorypermissions->push
    int *push_local_var = NULL;

    // define the local variable for github_repositorypermissions->pull
    int *pull_local_var = NULL;

    char *_class_local_str = NULL;

    // github_repositorypermissions->admin
    cJSON *admin = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "admin");
    if (cJSON_IsNull(admin)) {
        admin = NULL;
    }
    if (admin) { 
    if(!cJSON_IsBool(admin))
    {
    goto end; //Bool
    }
    admin_local_var = malloc(sizeof(int));
    if(!admin_local_var)
    {
        goto end;
    }
    *admin_local_var = admin->valueint;
    }

    // github_repositorypermissions->push
    cJSON *push = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "push");
    if (cJSON_IsNull(push)) {
        push = NULL;
    }
    if (push) { 
    if(!cJSON_IsBool(push))
    {
    goto end; //Bool
    }
    push_local_var = malloc(sizeof(int));
    if(!push_local_var)
    {
        goto end;
    }
    *push_local_var = push->valueint;
    }

    // github_repositorypermissions->pull
    cJSON *pull = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "pull");
    if (cJSON_IsNull(pull)) {
        pull = NULL;
    }
    if (pull) { 
    if(!cJSON_IsBool(pull))
    {
    goto end; //Bool
    }
    pull_local_var = malloc(sizeof(int));
    if(!pull_local_var)
    {
        goto end;
    }
    *pull_local_var = pull->valueint;
    }

    // github_repositorypermissions->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "_class");
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

    github_repositorypermissions_local_var = github_repositorypermissions_create_internal (
        admin_local_var,
        push_local_var,
        pull_local_var,
        _class_local_str
        );

    if (!github_repositorypermissions_local_var) {
        goto end;
    }

    return github_repositorypermissions_local_var;
end:
    if (admin_local_var) {
        free(admin_local_var);
        admin_local_var = NULL;
    }
    if (push_local_var) {
        free(push_local_var);
        push_local_var = NULL;
    }
    if (pull_local_var) {
        free(pull_local_var);
        pull_local_var = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
