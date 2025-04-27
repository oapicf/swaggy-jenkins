#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "link.h"



static link_t *link_create_internal(
    char *_class,
    char *href
    ) {
    link_t *link_local_var = malloc(sizeof(link_t));
    if (!link_local_var) {
        return NULL;
    }
    link_local_var->_class = _class;
    link_local_var->href = href;

    link_local_var->_library_owned = 1;
    return link_local_var;
}

__attribute__((deprecated)) link_t *link_create(
    char *_class,
    char *href
    ) {
    return link_create_internal (
        _class,
        href
        );
}

void link_free(link_t *link) {
    if(NULL == link){
        return ;
    }
    if(link->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "link_free");
        return ;
    }
    listEntry_t *listEntry;
    if (link->_class) {
        free(link->_class);
        link->_class = NULL;
    }
    if (link->href) {
        free(link->href);
        link->href = NULL;
    }
    free(link);
}

cJSON *link_convertToJSON(link_t *link) {
    cJSON *item = cJSON_CreateObject();

    // link->_class
    if(link->_class) {
    if(cJSON_AddStringToObject(item, "_class", link->_class) == NULL) {
    goto fail; //String
    }
    }


    // link->href
    if(link->href) {
    if(cJSON_AddStringToObject(item, "href", link->href) == NULL) {
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

link_t *link_parseFromJSON(cJSON *linkJSON){

    link_t *link_local_var = NULL;

    // link->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(linkJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // link->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(linkJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }


    link_local_var = link_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL
        );

    return link_local_var;
end:
    return NULL;

}
