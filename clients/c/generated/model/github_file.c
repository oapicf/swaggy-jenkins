#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_file.h"



static github_file_t *github_file_create_internal(
    github_content_t *content,
    char *_class
    ) {
    github_file_t *github_file_local_var = malloc(sizeof(github_file_t));
    if (!github_file_local_var) {
        return NULL;
    }
    github_file_local_var->content = content;
    github_file_local_var->_class = _class;

    github_file_local_var->_library_owned = 1;
    return github_file_local_var;
}

__attribute__((deprecated)) github_file_t *github_file_create(
    github_content_t *content,
    char *_class
    ) {
    return github_file_create_internal (
        content,
        _class
        );
}

void github_file_free(github_file_t *github_file) {
    if(NULL == github_file){
        return ;
    }
    if(github_file->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "github_file_free");
        return ;
    }
    listEntry_t *listEntry;
    if (github_file->content) {
        github_content_free(github_file->content);
        github_file->content = NULL;
    }
    if (github_file->_class) {
        free(github_file->_class);
        github_file->_class = NULL;
    }
    free(github_file);
}

cJSON *github_file_convertToJSON(github_file_t *github_file) {
    cJSON *item = cJSON_CreateObject();

    // github_file->content
    if(github_file->content) {
    cJSON *content_local_JSON = github_content_convertToJSON(github_file->content);
    if(content_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "content", content_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_file->_class
    if(github_file->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_file->_class) == NULL) {
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

github_file_t *github_file_parseFromJSON(cJSON *github_fileJSON){

    github_file_t *github_file_local_var = NULL;

    // define the local variable for github_file->content
    github_content_t *content_local_nonprim = NULL;

    // github_file->content
    cJSON *content = cJSON_GetObjectItemCaseSensitive(github_fileJSON, "content");
    if (cJSON_IsNull(content)) {
        content = NULL;
    }
    if (content) { 
    content_local_nonprim = github_content_parseFromJSON(content); //nonprimitive
    }

    // github_file->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_fileJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    github_file_local_var = github_file_create_internal (
        content ? content_local_nonprim : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return github_file_local_var;
end:
    if (content_local_nonprim) {
        github_content_free(content_local_nonprim);
        content_local_nonprim = NULL;
    }
    return NULL;

}
