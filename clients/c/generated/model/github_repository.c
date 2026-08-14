#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_repository.h"



static github_repository_t *github_repository_create_internal(
    char *_class,
    github_repositorylinks_t *_links,
    char *default_branch,
    char *description,
    char *name,
    github_repositorypermissions_t *permissions,
    int *_private,
    char *full_name
    ) {
    github_repository_t *github_repository_local_var = malloc(sizeof(github_repository_t));
    if (!github_repository_local_var) {
        return NULL;
    }
    memset(github_repository_local_var, 0, sizeof(github_repository_t));
    github_repository_local_var->_library_owned = 1;
    github_repository_local_var->_class = _class;
    github_repository_local_var->_links = _links;
    github_repository_local_var->default_branch = default_branch;
    github_repository_local_var->description = description;
    github_repository_local_var->name = name;
    github_repository_local_var->permissions = permissions;
    github_repository_local_var->_private = _private;
    github_repository_local_var->full_name = full_name;
    return github_repository_local_var;
}

__attribute__((deprecated)) github_repository_t *github_repository_create(
    char *_class,
    github_repositorylinks_t *_links,
    char *default_branch,
    char *description,
    char *name,
    github_repositorypermissions_t *permissions,
    int *_private,
    char *full_name
    ) {
    int *_private_copy = NULL;
    if (_private) {
        _private_copy = malloc(sizeof(int));
        if (_private_copy) *_private_copy = *_private;
    }
    github_repository_t *result = github_repository_create_internal (
        _class,
        _links,
        default_branch,
        description,
        name,
        permissions,
        _private_copy,
        full_name
        );
    if (!result) {
        free(_private_copy);
    }
    return result;
}

void github_repository_free(github_repository_t *github_repository) {
    if(NULL == github_repository){
        return ;
    }
    if(github_repository->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "github_repository_free");
        return ;
    }
    listEntry_t *listEntry;
    if (github_repository->_class) {
        free(github_repository->_class);
        github_repository->_class = NULL;
    }
    if (github_repository->_links) {
        github_repositorylinks_free(github_repository->_links);
        github_repository->_links = NULL;
    }
    if (github_repository->default_branch) {
        free(github_repository->default_branch);
        github_repository->default_branch = NULL;
    }
    if (github_repository->description) {
        free(github_repository->description);
        github_repository->description = NULL;
    }
    if (github_repository->name) {
        free(github_repository->name);
        github_repository->name = NULL;
    }
    if (github_repository->permissions) {
        github_repositorypermissions_free(github_repository->permissions);
        github_repository->permissions = NULL;
    }
    if (github_repository->_private) {
        free(github_repository->_private);
        github_repository->_private = NULL;
    }
    if (github_repository->full_name) {
        free(github_repository->full_name);
        github_repository->full_name = NULL;
    }
    free(github_repository);
}

cJSON *github_repository_convertToJSON(github_repository_t *github_repository) {
    cJSON *item = cJSON_CreateObject();

    // github_repository->_class
    if(github_repository->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_repository->_class) == NULL) {
    goto fail; //String
    }
    }


    // github_repository->_links
    if(github_repository->_links) {
    cJSON *_links_local_JSON = github_repositorylinks_convertToJSON(github_repository->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_repository->default_branch
    if(github_repository->default_branch) {
    if(cJSON_AddStringToObject(item, "defaultBranch", github_repository->default_branch) == NULL) {
    goto fail; //String
    }
    }


    // github_repository->description
    if(github_repository->description) {
    if(cJSON_AddStringToObject(item, "description", github_repository->description) == NULL) {
    goto fail; //String
    }
    }


    // github_repository->name
    if(github_repository->name) {
    if(cJSON_AddStringToObject(item, "name", github_repository->name) == NULL) {
    goto fail; //String
    }
    }


    // github_repository->permissions
    if(github_repository->permissions) {
    cJSON *permissions_local_JSON = github_repositorypermissions_convertToJSON(github_repository->permissions);
    if(permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "permissions", permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_repository->_private
    if(github_repository->_private) {
    if(cJSON_AddBoolToObject(item, "private", *github_repository->_private) == NULL) {
    goto fail; //Bool
    }
    }


    // github_repository->full_name
    if(github_repository->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", github_repository->full_name) == NULL) {
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

github_repository_t *github_repository_parseFromJSON(cJSON *github_repositoryJSON){

    github_repository_t *github_repository_local_var = NULL;

    char *_class_local_str = NULL;

    // define the local variable for github_repository->_links
    github_repositorylinks_t *_links_local_nonprim = NULL;

    char *default_branch_local_str = NULL;

    char *description_local_str = NULL;

    char *name_local_str = NULL;

    // define the local variable for github_repository->permissions
    github_repositorypermissions_t *permissions_local_nonprim = NULL;

    // define the local variable for github_repository->_private
    int *_private_local_var = NULL;

    char *full_name_local_str = NULL;

    // github_repository->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // github_repository->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = github_repositorylinks_parseFromJSON(_links); //nonprimitive
    }

    // github_repository->default_branch
    cJSON *default_branch = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "defaultBranch");
    if (cJSON_IsNull(default_branch)) {
        default_branch = NULL;
    }
    if (default_branch) { 
    if(!cJSON_IsString(default_branch) && !cJSON_IsNull(default_branch))
    {
    goto end; //String
    }
    }

    // github_repository->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // github_repository->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // github_repository->permissions
    cJSON *permissions = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "permissions");
    if (cJSON_IsNull(permissions)) {
        permissions = NULL;
    }
    if (permissions) { 
    permissions_local_nonprim = github_repositorypermissions_parseFromJSON(permissions); //nonprimitive
    }

    // github_repository->_private
    cJSON *_private = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "private");
    if (cJSON_IsNull(_private)) {
        _private = NULL;
    }
    if (_private) { 
    if(!cJSON_IsBool(_private))
    {
    goto end; //Bool
    }
    _private_local_var = malloc(sizeof(int));
    if(!_private_local_var)
    {
        goto end;
    }
    *_private_local_var = _private->valueint;
    }

    // github_repository->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(github_repositoryJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (default_branch && !cJSON_IsNull(default_branch)) default_branch_local_str = strdup(default_branch->valuestring);
    if (description && !cJSON_IsNull(description)) description_local_str = strdup(description->valuestring);
    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (full_name && !cJSON_IsNull(full_name)) full_name_local_str = strdup(full_name->valuestring);

    github_repository_local_var = github_repository_create_internal (
        _class_local_str,
        _links ? _links_local_nonprim : NULL,
        default_branch_local_str,
        description_local_str,
        name_local_str,
        permissions ? permissions_local_nonprim : NULL,
        _private_local_var,
        full_name_local_str
        );

    if (!github_repository_local_var) {
        goto end;
    }

    return github_repository_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (_links_local_nonprim) {
        github_repositorylinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (default_branch_local_str) {
        free(default_branch_local_str);
        default_branch_local_str = NULL;
    }
    if (description_local_str) {
        free(description_local_str);
        description_local_str = NULL;
    }
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (permissions_local_nonprim) {
        github_repositorypermissions_free(permissions_local_nonprim);
        permissions_local_nonprim = NULL;
    }
    if (_private_local_var) {
        free(_private_local_var);
        _private_local_var = NULL;
    }
    if (full_name_local_str) {
        free(full_name_local_str);
        full_name_local_str = NULL;
    }
    return NULL;

}
