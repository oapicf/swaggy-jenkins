#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_repositories.h"



static github_repositories_t *github_repositories_create_internal(
    char *_class,
    github_repositorieslinks_t *_links,
    list_t *items,
    int *last_page,
    int *next_page,
    int *page_size
    ) {
    github_repositories_t *github_repositories_local_var = malloc(sizeof(github_repositories_t));
    if (!github_repositories_local_var) {
        return NULL;
    }
    memset(github_repositories_local_var, 0, sizeof(github_repositories_t));
    github_repositories_local_var->_library_owned = 1;
    github_repositories_local_var->_class = _class;
    github_repositories_local_var->_links = _links;
    github_repositories_local_var->items = items;
    github_repositories_local_var->last_page = last_page;
    github_repositories_local_var->next_page = next_page;
    github_repositories_local_var->page_size = page_size;
    return github_repositories_local_var;
}

__attribute__((deprecated)) github_repositories_t *github_repositories_create(
    char *_class,
    github_repositorieslinks_t *_links,
    list_t *items,
    int *last_page,
    int *next_page,
    int *page_size
    ) {
    int *last_page_copy = NULL;
    if (last_page) {
        last_page_copy = malloc(sizeof(int));
        if (last_page_copy) *last_page_copy = *last_page;
    }
    int *next_page_copy = NULL;
    if (next_page) {
        next_page_copy = malloc(sizeof(int));
        if (next_page_copy) *next_page_copy = *next_page;
    }
    int *page_size_copy = NULL;
    if (page_size) {
        page_size_copy = malloc(sizeof(int));
        if (page_size_copy) *page_size_copy = *page_size;
    }
    github_repositories_t *result = github_repositories_create_internal (
        _class,
        _links,
        items,
        last_page_copy,
        next_page_copy,
        page_size_copy
        );
    if (!result) {
        free(last_page_copy);
        free(next_page_copy);
        free(page_size_copy);
    }
    return result;
}

void github_repositories_free(github_repositories_t *github_repositories) {
    if(NULL == github_repositories){
        return ;
    }
    if(github_repositories->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "github_repositories_free");
        return ;
    }
    listEntry_t *listEntry;
    if (github_repositories->_class) {
        free(github_repositories->_class);
        github_repositories->_class = NULL;
    }
    if (github_repositories->_links) {
        github_repositorieslinks_free(github_repositories->_links);
        github_repositories->_links = NULL;
    }
    if (github_repositories->items) {
        list_ForEach(listEntry, github_repositories->items) {
            github_repository_free(listEntry->data);
        }
        list_freeList(github_repositories->items);
        github_repositories->items = NULL;
    }
    if (github_repositories->last_page) {
        free(github_repositories->last_page);
        github_repositories->last_page = NULL;
    }
    if (github_repositories->next_page) {
        free(github_repositories->next_page);
        github_repositories->next_page = NULL;
    }
    if (github_repositories->page_size) {
        free(github_repositories->page_size);
        github_repositories->page_size = NULL;
    }
    free(github_repositories);
}

cJSON *github_repositories_convertToJSON(github_repositories_t *github_repositories) {
    cJSON *item = cJSON_CreateObject();

    // github_repositories->_class
    if(github_repositories->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_repositories->_class) == NULL) {
    goto fail; //String
    }
    }


    // github_repositories->_links
    if(github_repositories->_links) {
    cJSON *_links_local_JSON = github_repositorieslinks_convertToJSON(github_repositories->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_repositories->items
    if(github_repositories->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (github_repositories->items) {
    list_ForEach(itemsListEntry, github_repositories->items) {
    cJSON *itemLocal = github_repository_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // github_repositories->last_page
    if(github_repositories->last_page) {
    if(cJSON_AddNumberToObject(item, "lastPage", *github_repositories->last_page) == NULL) {
    goto fail; //Numeric
    }
    }


    // github_repositories->next_page
    if(github_repositories->next_page) {
    if(cJSON_AddNumberToObject(item, "nextPage", *github_repositories->next_page) == NULL) {
    goto fail; //Numeric
    }
    }


    // github_repositories->page_size
    if(github_repositories->page_size) {
    if(cJSON_AddNumberToObject(item, "pageSize", *github_repositories->page_size) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

github_repositories_t *github_repositories_parseFromJSON(cJSON *github_repositoriesJSON){

    github_repositories_t *github_repositories_local_var = NULL;

    char *_class_local_str = NULL;

    // define the local variable for github_repositories->_links
    github_repositorieslinks_t *_links_local_nonprim = NULL;

    // define the local list for github_repositories->items
    list_t *itemsList = NULL;

    // define the local variable for github_repositories->last_page
    int *last_page_local_var = NULL;

    // define the local variable for github_repositories->next_page
    int *next_page_local_var = NULL;

    // define the local variable for github_repositories->page_size
    int *page_size_local_var = NULL;

    // github_repositories->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_repositoriesJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // github_repositories->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(github_repositoriesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = github_repositorieslinks_parseFromJSON(_links); //nonprimitive
    }

    // github_repositories->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(github_repositoriesJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        github_repository_t *itemsItem = github_repository_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // github_repositories->last_page
    cJSON *last_page = cJSON_GetObjectItemCaseSensitive(github_repositoriesJSON, "lastPage");
    if (cJSON_IsNull(last_page)) {
        last_page = NULL;
    }
    if (last_page) { 
    if(!cJSON_IsNumber(last_page))
    {
    goto end; //Numeric
    }
    last_page_local_var = malloc(sizeof(int));
    if(!last_page_local_var)
    {
        goto end;
    }
    *last_page_local_var = last_page->valuedouble;
    }

    // github_repositories->next_page
    cJSON *next_page = cJSON_GetObjectItemCaseSensitive(github_repositoriesJSON, "nextPage");
    if (cJSON_IsNull(next_page)) {
        next_page = NULL;
    }
    if (next_page) { 
    if(!cJSON_IsNumber(next_page))
    {
    goto end; //Numeric
    }
    next_page_local_var = malloc(sizeof(int));
    if(!next_page_local_var)
    {
        goto end;
    }
    *next_page_local_var = next_page->valuedouble;
    }

    // github_repositories->page_size
    cJSON *page_size = cJSON_GetObjectItemCaseSensitive(github_repositoriesJSON, "pageSize");
    if (cJSON_IsNull(page_size)) {
        page_size = NULL;
    }
    if (page_size) { 
    if(!cJSON_IsNumber(page_size))
    {
    goto end; //Numeric
    }
    page_size_local_var = malloc(sizeof(int));
    if(!page_size_local_var)
    {
        goto end;
    }
    *page_size_local_var = page_size->valuedouble;
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    github_repositories_local_var = github_repositories_create_internal (
        _class_local_str,
        _links ? _links_local_nonprim : NULL,
        items ? itemsList : NULL,
        last_page_local_var,
        next_page_local_var,
        page_size_local_var
        );

    if (!github_repositories_local_var) {
        goto end;
    }

    return github_repositories_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (_links_local_nonprim) {
        github_repositorieslinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            github_repository_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    if (last_page_local_var) {
        free(last_page_local_var);
        last_page_local_var = NULL;
    }
    if (next_page_local_var) {
        free(next_page_local_var);
        next_page_local_var = NULL;
    }
    if (page_size_local_var) {
        free(page_size_local_var);
        page_size_local_var = NULL;
    }
    return NULL;

}
