#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_organizationlinks.h"



github_organizationlinks_t *github_organizationlinks_create(
    link_t *repositories,
    link_t *self,
    char *_class
    ) {
    github_organizationlinks_t *github_organizationlinks_local_var = malloc(sizeof(github_organizationlinks_t));
    if (!github_organizationlinks_local_var) {
        return NULL;
    }
    github_organizationlinks_local_var->repositories = repositories;
    github_organizationlinks_local_var->self = self;
    github_organizationlinks_local_var->_class = _class;

    return github_organizationlinks_local_var;
}


void github_organizationlinks_free(github_organizationlinks_t *github_organizationlinks) {
    if(NULL == github_organizationlinks){
        return ;
    }
    listEntry_t *listEntry;
    if (github_organizationlinks->repositories) {
        link_free(github_organizationlinks->repositories);
        github_organizationlinks->repositories = NULL;
    }
    if (github_organizationlinks->self) {
        link_free(github_organizationlinks->self);
        github_organizationlinks->self = NULL;
    }
    if (github_organizationlinks->_class) {
        free(github_organizationlinks->_class);
        github_organizationlinks->_class = NULL;
    }
    free(github_organizationlinks);
}

cJSON *github_organizationlinks_convertToJSON(github_organizationlinks_t *github_organizationlinks) {
    cJSON *item = cJSON_CreateObject();

    // github_organizationlinks->repositories
    if(github_organizationlinks->repositories) { 
    cJSON *repositories_local_JSON = link_convertToJSON(github_organizationlinks->repositories);
    if(repositories_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "repositories", repositories_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // github_organizationlinks->self
    if(github_organizationlinks->self) { 
    cJSON *self_local_JSON = link_convertToJSON(github_organizationlinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // github_organizationlinks->_class
    if(github_organizationlinks->_class) { 
    if(cJSON_AddStringToObject(item, "_class", github_organizationlinks->_class) == NULL) {
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

github_organizationlinks_t *github_organizationlinks_parseFromJSON(cJSON *github_organizationlinksJSON){

    github_organizationlinks_t *github_organizationlinks_local_var = NULL;

    // define the local variable for github_organizationlinks->repositories
    link_t *repositories_local_nonprim = NULL;

    // define the local variable for github_organizationlinks->self
    link_t *self_local_nonprim = NULL;

    // github_organizationlinks->repositories
    cJSON *repositories = cJSON_GetObjectItemCaseSensitive(github_organizationlinksJSON, "repositories");
    if (repositories) { 
    repositories_local_nonprim = link_parseFromJSON(repositories); //nonprimitive
    }

    // github_organizationlinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(github_organizationlinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // github_organizationlinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_organizationlinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    github_organizationlinks_local_var = github_organizationlinks_create (
        repositories ? repositories_local_nonprim : NULL,
        self ? self_local_nonprim : NULL,
        _class ? strdup(_class->valuestring) : NULL
        );

    return github_organizationlinks_local_var;
end:
    if (repositories_local_nonprim) {
        link_free(repositories_local_nonprim);
        repositories_local_nonprim = NULL;
    }
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
