#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_repositorypermissions.h"



github_repositorypermissions_t *github_repositorypermissions_create(
    int admin,
    int push,
    int pull,
    char *_class
    ) {
    github_repositorypermissions_t *github_repositorypermissions_local_var = malloc(sizeof(github_repositorypermissions_t));
    if (!github_repositorypermissions_local_var) {
        return NULL;
    }
    github_repositorypermissions_local_var->admin = admin;
    github_repositorypermissions_local_var->push = push;
    github_repositorypermissions_local_var->pull = pull;
    github_repositorypermissions_local_var->_class = _class;

    return github_repositorypermissions_local_var;
}


void github_repositorypermissions_free(github_repositorypermissions_t *github_repositorypermissions) {
    if(NULL == github_repositorypermissions){
        return ;
    }
    listEntry_t *listEntry;
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
    if(cJSON_AddBoolToObject(item, "admin", github_repositorypermissions->admin) == NULL) {
    goto fail; //Bool
    }
    }


    // github_repositorypermissions->push
    if(github_repositorypermissions->push) {
    if(cJSON_AddBoolToObject(item, "push", github_repositorypermissions->push) == NULL) {
    goto fail; //Bool
    }
    }


    // github_repositorypermissions->pull
    if(github_repositorypermissions->pull) {
    if(cJSON_AddBoolToObject(item, "pull", github_repositorypermissions->pull) == NULL) {
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

    // github_repositorypermissions->admin
    cJSON *admin = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "admin");
    if (admin) { 
    if(!cJSON_IsBool(admin))
    {
    goto end; //Bool
    }
    }

    // github_repositorypermissions->push
    cJSON *push = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "push");
    if (push) { 
    if(!cJSON_IsBool(push))
    {
    goto end; //Bool
    }
    }

    // github_repositorypermissions->pull
    cJSON *pull = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "pull");
    if (pull) { 
    if(!cJSON_IsBool(pull))
    {
    goto end; //Bool
    }
    }

    // github_repositorypermissions->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_repositorypermissionsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    github_repositorypermissions_local_var = github_repositorypermissions_create (
        admin ? admin->valueint : 0,
        push ? push->valueint : 0,
        pull ? pull->valueint : 0,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return github_repositorypermissions_local_var;
end:
    return NULL;

}
