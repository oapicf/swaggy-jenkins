#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_content.h"



static github_content_t *github_content_create_internal(
    char *name,
    char *sha,
    char *_class,
    char *repo,
    int *size,
    char *owner,
    char *path,
    char *base64_data
    ) {
    github_content_t *github_content_local_var = malloc(sizeof(github_content_t));
    if (!github_content_local_var) {
        return NULL;
    }
    memset(github_content_local_var, 0, sizeof(github_content_t));
    github_content_local_var->_library_owned = 1;
    github_content_local_var->name = name;
    github_content_local_var->sha = sha;
    github_content_local_var->_class = _class;
    github_content_local_var->repo = repo;
    github_content_local_var->size = size;
    github_content_local_var->owner = owner;
    github_content_local_var->path = path;
    github_content_local_var->base64_data = base64_data;
    return github_content_local_var;
}

__attribute__((deprecated)) github_content_t *github_content_create(
    char *name,
    char *sha,
    char *_class,
    char *repo,
    int *size,
    char *owner,
    char *path,
    char *base64_data
    ) {
    int *size_copy = NULL;
    if (size) {
        size_copy = malloc(sizeof(int));
        if (size_copy) *size_copy = *size;
    }
    github_content_t *result = github_content_create_internal (
        name,
        sha,
        _class,
        repo,
        size_copy,
        owner,
        path,
        base64_data
        );
    if (!result) {
        free(size_copy);
    }
    return result;
}

void github_content_free(github_content_t *github_content) {
    if(NULL == github_content){
        return ;
    }
    if(github_content->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "github_content_free");
        return ;
    }
    listEntry_t *listEntry;
    if (github_content->name) {
        free(github_content->name);
        github_content->name = NULL;
    }
    if (github_content->sha) {
        free(github_content->sha);
        github_content->sha = NULL;
    }
    if (github_content->_class) {
        free(github_content->_class);
        github_content->_class = NULL;
    }
    if (github_content->repo) {
        free(github_content->repo);
        github_content->repo = NULL;
    }
    if (github_content->size) {
        free(github_content->size);
        github_content->size = NULL;
    }
    if (github_content->owner) {
        free(github_content->owner);
        github_content->owner = NULL;
    }
    if (github_content->path) {
        free(github_content->path);
        github_content->path = NULL;
    }
    if (github_content->base64_data) {
        free(github_content->base64_data);
        github_content->base64_data = NULL;
    }
    free(github_content);
}

cJSON *github_content_convertToJSON(github_content_t *github_content) {
    cJSON *item = cJSON_CreateObject();

    // github_content->name
    if(github_content->name) {
    if(cJSON_AddStringToObject(item, "name", github_content->name) == NULL) {
    goto fail; //String
    }
    }


    // github_content->sha
    if(github_content->sha) {
    if(cJSON_AddStringToObject(item, "sha", github_content->sha) == NULL) {
    goto fail; //String
    }
    }


    // github_content->_class
    if(github_content->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_content->_class) == NULL) {
    goto fail; //String
    }
    }


    // github_content->repo
    if(github_content->repo) {
    if(cJSON_AddStringToObject(item, "repo", github_content->repo) == NULL) {
    goto fail; //String
    }
    }


    // github_content->size
    if(github_content->size) {
    if(cJSON_AddNumberToObject(item, "size", *github_content->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // github_content->owner
    if(github_content->owner) {
    if(cJSON_AddStringToObject(item, "owner", github_content->owner) == NULL) {
    goto fail; //String
    }
    }


    // github_content->path
    if(github_content->path) {
    if(cJSON_AddStringToObject(item, "path", github_content->path) == NULL) {
    goto fail; //String
    }
    }


    // github_content->base64_data
    if(github_content->base64_data) {
    if(cJSON_AddStringToObject(item, "base64Data", github_content->base64_data) == NULL) {
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

github_content_t *github_content_parseFromJSON(cJSON *github_contentJSON){

    github_content_t *github_content_local_var = NULL;

    char *name_local_str = NULL;

    char *sha_local_str = NULL;

    char *_class_local_str = NULL;

    char *repo_local_str = NULL;

    // define the local variable for github_content->size
    int *size_local_var = NULL;

    char *owner_local_str = NULL;

    char *path_local_str = NULL;

    char *base64_data_local_str = NULL;

    // github_content->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // github_content->sha
    cJSON *sha = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "sha");
    if (cJSON_IsNull(sha)) {
        sha = NULL;
    }
    if (sha) { 
    if(!cJSON_IsString(sha) && !cJSON_IsNull(sha))
    {
    goto end; //String
    }
    }

    // github_content->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // github_content->repo
    cJSON *repo = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "repo");
    if (cJSON_IsNull(repo)) {
        repo = NULL;
    }
    if (repo) { 
    if(!cJSON_IsString(repo) && !cJSON_IsNull(repo))
    {
    goto end; //String
    }
    }

    // github_content->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    size_local_var = malloc(sizeof(int));
    if(!size_local_var)
    {
        goto end;
    }
    *size_local_var = size->valuedouble;
    }

    // github_content->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    if(!cJSON_IsString(owner) && !cJSON_IsNull(owner))
    {
    goto end; //String
    }
    }

    // github_content->path
    cJSON *path = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "path");
    if (cJSON_IsNull(path)) {
        path = NULL;
    }
    if (path) { 
    if(!cJSON_IsString(path) && !cJSON_IsNull(path))
    {
    goto end; //String
    }
    }

    // github_content->base64_data
    cJSON *base64_data = cJSON_GetObjectItemCaseSensitive(github_contentJSON, "base64Data");
    if (cJSON_IsNull(base64_data)) {
        base64_data = NULL;
    }
    if (base64_data) { 
    if(!cJSON_IsString(base64_data) && !cJSON_IsNull(base64_data))
    {
    goto end; //String
    }
    }


    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (sha && !cJSON_IsNull(sha)) sha_local_str = strdup(sha->valuestring);
    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (repo && !cJSON_IsNull(repo)) repo_local_str = strdup(repo->valuestring);
    if (owner && !cJSON_IsNull(owner)) owner_local_str = strdup(owner->valuestring);
    if (path && !cJSON_IsNull(path)) path_local_str = strdup(path->valuestring);
    if (base64_data && !cJSON_IsNull(base64_data)) base64_data_local_str = strdup(base64_data->valuestring);

    github_content_local_var = github_content_create_internal (
        name_local_str,
        sha_local_str,
        _class_local_str,
        repo_local_str,
        size_local_var,
        owner_local_str,
        path_local_str,
        base64_data_local_str
        );

    if (!github_content_local_var) {
        goto end;
    }

    return github_content_local_var;
end:
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (sha_local_str) {
        free(sha_local_str);
        sha_local_str = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (repo_local_str) {
        free(repo_local_str);
        repo_local_str = NULL;
    }
    if (size_local_var) {
        free(size_local_var);
        size_local_var = NULL;
    }
    if (owner_local_str) {
        free(owner_local_str);
        owner_local_str = NULL;
    }
    if (path_local_str) {
        free(path_local_str);
        path_local_str = NULL;
    }
    if (base64_data_local_str) {
        free(base64_data_local_str);
        base64_data_local_str = NULL;
    }
    return NULL;

}
