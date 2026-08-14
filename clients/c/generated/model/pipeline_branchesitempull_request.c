#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pipeline_branchesitempull_request.h"



static pipeline_branchesitempull_request_t *pipeline_branchesitempull_request_create_internal(
    pipeline_branchesitempull_requestlinks_t *_links,
    char *author,
    char *id,
    char *title,
    char *url,
    char *_class
    ) {
    pipeline_branchesitempull_request_t *pipeline_branchesitempull_request_local_var = malloc(sizeof(pipeline_branchesitempull_request_t));
    if (!pipeline_branchesitempull_request_local_var) {
        return NULL;
    }
    memset(pipeline_branchesitempull_request_local_var, 0, sizeof(pipeline_branchesitempull_request_t));
    pipeline_branchesitempull_request_local_var->_library_owned = 1;
    pipeline_branchesitempull_request_local_var->_links = _links;
    pipeline_branchesitempull_request_local_var->author = author;
    pipeline_branchesitempull_request_local_var->id = id;
    pipeline_branchesitempull_request_local_var->title = title;
    pipeline_branchesitempull_request_local_var->url = url;
    pipeline_branchesitempull_request_local_var->_class = _class;
    return pipeline_branchesitempull_request_local_var;
}

__attribute__((deprecated)) pipeline_branchesitempull_request_t *pipeline_branchesitempull_request_create(
    pipeline_branchesitempull_requestlinks_t *_links,
    char *author,
    char *id,
    char *title,
    char *url,
    char *_class
    ) {
    pipeline_branchesitempull_request_t *result = pipeline_branchesitempull_request_create_internal (
        _links,
        author,
        id,
        title,
        url,
        _class
        );
    if (!result) {
    }
    return result;
}

void pipeline_branchesitempull_request_free(pipeline_branchesitempull_request_t *pipeline_branchesitempull_request) {
    if(NULL == pipeline_branchesitempull_request){
        return ;
    }
    if(pipeline_branchesitempull_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pipeline_branchesitempull_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pipeline_branchesitempull_request->_links) {
        pipeline_branchesitempull_requestlinks_free(pipeline_branchesitempull_request->_links);
        pipeline_branchesitempull_request->_links = NULL;
    }
    if (pipeline_branchesitempull_request->author) {
        free(pipeline_branchesitempull_request->author);
        pipeline_branchesitempull_request->author = NULL;
    }
    if (pipeline_branchesitempull_request->id) {
        free(pipeline_branchesitempull_request->id);
        pipeline_branchesitempull_request->id = NULL;
    }
    if (pipeline_branchesitempull_request->title) {
        free(pipeline_branchesitempull_request->title);
        pipeline_branchesitempull_request->title = NULL;
    }
    if (pipeline_branchesitempull_request->url) {
        free(pipeline_branchesitempull_request->url);
        pipeline_branchesitempull_request->url = NULL;
    }
    if (pipeline_branchesitempull_request->_class) {
        free(pipeline_branchesitempull_request->_class);
        pipeline_branchesitempull_request->_class = NULL;
    }
    free(pipeline_branchesitempull_request);
}

cJSON *pipeline_branchesitempull_request_convertToJSON(pipeline_branchesitempull_request_t *pipeline_branchesitempull_request) {
    cJSON *item = cJSON_CreateObject();

    // pipeline_branchesitempull_request->_links
    if(pipeline_branchesitempull_request->_links) {
    cJSON *_links_local_JSON = pipeline_branchesitempull_requestlinks_convertToJSON(pipeline_branchesitempull_request->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pipeline_branchesitempull_request->author
    if(pipeline_branchesitempull_request->author) {
    if(cJSON_AddStringToObject(item, "author", pipeline_branchesitempull_request->author) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitempull_request->id
    if(pipeline_branchesitempull_request->id) {
    if(cJSON_AddStringToObject(item, "id", pipeline_branchesitempull_request->id) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitempull_request->title
    if(pipeline_branchesitempull_request->title) {
    if(cJSON_AddStringToObject(item, "title", pipeline_branchesitempull_request->title) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitempull_request->url
    if(pipeline_branchesitempull_request->url) {
    if(cJSON_AddStringToObject(item, "url", pipeline_branchesitempull_request->url) == NULL) {
    goto fail; //String
    }
    }


    // pipeline_branchesitempull_request->_class
    if(pipeline_branchesitempull_request->_class) {
    if(cJSON_AddStringToObject(item, "_class", pipeline_branchesitempull_request->_class) == NULL) {
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

pipeline_branchesitempull_request_t *pipeline_branchesitempull_request_parseFromJSON(cJSON *pipeline_branchesitempull_requestJSON){

    pipeline_branchesitempull_request_t *pipeline_branchesitempull_request_local_var = NULL;

    // define the local variable for pipeline_branchesitempull_request->_links
    pipeline_branchesitempull_requestlinks_t *_links_local_nonprim = NULL;

    char *author_local_str = NULL;

    char *id_local_str = NULL;

    char *title_local_str = NULL;

    char *url_local_str = NULL;

    char *_class_local_str = NULL;

    // pipeline_branchesitempull_request->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = pipeline_branchesitempull_requestlinks_parseFromJSON(_links); //nonprimitive
    }

    // pipeline_branchesitempull_request->author
    cJSON *author = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestJSON, "author");
    if (cJSON_IsNull(author)) {
        author = NULL;
    }
    if (author) { 
    if(!cJSON_IsString(author) && !cJSON_IsNull(author))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitempull_request->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitempull_request->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitempull_request->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // pipeline_branchesitempull_request->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(pipeline_branchesitempull_requestJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (author && !cJSON_IsNull(author)) author_local_str = strdup(author->valuestring);
    if (id && !cJSON_IsNull(id)) id_local_str = strdup(id->valuestring);
    if (title && !cJSON_IsNull(title)) title_local_str = strdup(title->valuestring);
    if (url && !cJSON_IsNull(url)) url_local_str = strdup(url->valuestring);
    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    pipeline_branchesitempull_request_local_var = pipeline_branchesitempull_request_create_internal (
        _links ? _links_local_nonprim : NULL,
        author_local_str,
        id_local_str,
        title_local_str,
        url_local_str,
        _class_local_str
        );

    if (!pipeline_branchesitempull_request_local_var) {
        goto end;
    }

    return pipeline_branchesitempull_request_local_var;
end:
    if (_links_local_nonprim) {
        pipeline_branchesitempull_requestlinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (author_local_str) {
        free(author_local_str);
        author_local_str = NULL;
    }
    if (id_local_str) {
        free(id_local_str);
        id_local_str = NULL;
    }
    if (title_local_str) {
        free(title_local_str);
        title_local_str = NULL;
    }
    if (url_local_str) {
        free(url_local_str);
        url_local_str = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
