#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "link.h"



link_t *link_create(
    char *_class,
    char *href
    ) {
    link_t *link_local_var = malloc(sizeof(link_t));
    if (!link_local_var) {
        return NULL;
    }
    link_local_var->_class = _class;
    link_local_var->href = href;

    return link_local_var;
}


void link_free(link_t *link) {
    if(NULL == link){
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
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // link->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(linkJSON, "href");
    if (href) { 
    if(!cJSON_IsString(href))
    {
    goto end; //String
    }
    }


    link_local_var = link_create (
        _class ? strdup(_class->valuestring) : NULL,
        href ? strdup(href->valuestring) : NULL
        );

    return link_local_var;
end:
    return NULL;

}
