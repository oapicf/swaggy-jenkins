#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_repositorylinks.h"



github_repositorylinks_t *github_repositorylinks_create(
    link_t *self,
    char *_class
    ) {
    github_repositorylinks_t *github_repositorylinks_local_var = malloc(sizeof(github_repositorylinks_t));
    if (!github_repositorylinks_local_var) {
        return NULL;
    }
    github_repositorylinks_local_var->self = self;
    github_repositorylinks_local_var->_class = _class;

    return github_repositorylinks_local_var;
}


void github_repositorylinks_free(github_repositorylinks_t *github_repositorylinks) {
    if(NULL == github_repositorylinks){
        return ;
    }
    listEntry_t *listEntry;
    if (github_repositorylinks->self) {
        link_free(github_repositorylinks->self);
        github_repositorylinks->self = NULL;
    }
    if (github_repositorylinks->_class) {
        free(github_repositorylinks->_class);
        github_repositorylinks->_class = NULL;
    }
    free(github_repositorylinks);
}

cJSON *github_repositorylinks_convertToJSON(github_repositorylinks_t *github_repositorylinks) {
    cJSON *item = cJSON_CreateObject();

    // github_repositorylinks->self
    if(github_repositorylinks->self) {
    cJSON *self_local_JSON = link_convertToJSON(github_repositorylinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_repositorylinks->_class
    if(github_repositorylinks->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_repositorylinks->_class) == NULL) {
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

github_repositorylinks_t *github_repositorylinks_parseFromJSON(cJSON *github_repositorylinksJSON){

    github_repositorylinks_t *github_repositorylinks_local_var = NULL;

    // define the local variable for github_repositorylinks->self
    link_t *self_local_nonprim = NULL;

    // github_repositorylinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(github_repositorylinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // github_repositorylinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_repositorylinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    github_repositorylinks_local_var = github_repositorylinks_create (
        self ? self_local_nonprim : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return github_repositorylinks_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
