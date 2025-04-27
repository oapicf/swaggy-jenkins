#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_respository_container.h"



static github_respository_container_t *github_respository_container_create_internal(
    char *_class,
    github_respository_containerlinks_t *_links,
    github_repositories_t *repositories
    ) {
    github_respository_container_t *github_respository_container_local_var = malloc(sizeof(github_respository_container_t));
    if (!github_respository_container_local_var) {
        return NULL;
    }
    github_respository_container_local_var->_class = _class;
    github_respository_container_local_var->_links = _links;
    github_respository_container_local_var->repositories = repositories;

    github_respository_container_local_var->_library_owned = 1;
    return github_respository_container_local_var;
}

__attribute__((deprecated)) github_respository_container_t *github_respository_container_create(
    char *_class,
    github_respository_containerlinks_t *_links,
    github_repositories_t *repositories
    ) {
    return github_respository_container_create_internal (
        _class,
        _links,
        repositories
        );
}

void github_respository_container_free(github_respository_container_t *github_respository_container) {
    if(NULL == github_respository_container){
        return ;
    }
    if(github_respository_container->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "github_respository_container_free");
        return ;
    }
    listEntry_t *listEntry;
    if (github_respository_container->_class) {
        free(github_respository_container->_class);
        github_respository_container->_class = NULL;
    }
    if (github_respository_container->_links) {
        github_respository_containerlinks_free(github_respository_container->_links);
        github_respository_container->_links = NULL;
    }
    if (github_respository_container->repositories) {
        github_repositories_free(github_respository_container->repositories);
        github_respository_container->repositories = NULL;
    }
    free(github_respository_container);
}

cJSON *github_respository_container_convertToJSON(github_respository_container_t *github_respository_container) {
    cJSON *item = cJSON_CreateObject();

    // github_respository_container->_class
    if(github_respository_container->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_respository_container->_class) == NULL) {
    goto fail; //String
    }
    }


    // github_respository_container->_links
    if(github_respository_container->_links) {
    cJSON *_links_local_JSON = github_respository_containerlinks_convertToJSON(github_respository_container->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_respository_container->repositories
    if(github_respository_container->repositories) {
    cJSON *repositories_local_JSON = github_repositories_convertToJSON(github_respository_container->repositories);
    if(repositories_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "repositories", repositories_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

github_respository_container_t *github_respository_container_parseFromJSON(cJSON *github_respository_containerJSON){

    github_respository_container_t *github_respository_container_local_var = NULL;

    // define the local variable for github_respository_container->_links
    github_respository_containerlinks_t *_links_local_nonprim = NULL;

    // define the local variable for github_respository_container->repositories
    github_repositories_t *repositories_local_nonprim = NULL;

    // github_respository_container->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_respository_containerJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // github_respository_container->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(github_respository_containerJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = github_respository_containerlinks_parseFromJSON(_links); //nonprimitive
    }

    // github_respository_container->repositories
    cJSON *repositories = cJSON_GetObjectItemCaseSensitive(github_respository_containerJSON, "repositories");
    if (cJSON_IsNull(repositories)) {
        repositories = NULL;
    }
    if (repositories) { 
    repositories_local_nonprim = github_repositories_parseFromJSON(repositories); //nonprimitive
    }


    github_respository_container_local_var = github_respository_container_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        repositories ? repositories_local_nonprim : NULL
        );

    return github_respository_container_local_var;
end:
    if (_links_local_nonprim) {
        github_respository_containerlinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (repositories_local_nonprim) {
        github_repositories_free(repositories_local_nonprim);
        repositories_local_nonprim = NULL;
    }
    return NULL;

}
