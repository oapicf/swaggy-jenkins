#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_respository_containerlinks.h"



github_respository_containerlinks_t *github_respository_containerlinks_create(
    link_t *self,
    char *_class
    ) {
    github_respository_containerlinks_t *github_respository_containerlinks_local_var = malloc(sizeof(github_respository_containerlinks_t));
    if (!github_respository_containerlinks_local_var) {
        return NULL;
    }
    github_respository_containerlinks_local_var->self = self;
    github_respository_containerlinks_local_var->_class = _class;

    return github_respository_containerlinks_local_var;
}


void github_respository_containerlinks_free(github_respository_containerlinks_t *github_respository_containerlinks) {
    if(NULL == github_respository_containerlinks){
        return ;
    }
    listEntry_t *listEntry;
    if (github_respository_containerlinks->self) {
        link_free(github_respository_containerlinks->self);
        github_respository_containerlinks->self = NULL;
    }
    if (github_respository_containerlinks->_class) {
        free(github_respository_containerlinks->_class);
        github_respository_containerlinks->_class = NULL;
    }
    free(github_respository_containerlinks);
}

cJSON *github_respository_containerlinks_convertToJSON(github_respository_containerlinks_t *github_respository_containerlinks) {
    cJSON *item = cJSON_CreateObject();

    // github_respository_containerlinks->self
    if(github_respository_containerlinks->self) {
    cJSON *self_local_JSON = link_convertToJSON(github_respository_containerlinks->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_respository_containerlinks->_class
    if(github_respository_containerlinks->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_respository_containerlinks->_class) == NULL) {
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

github_respository_containerlinks_t *github_respository_containerlinks_parseFromJSON(cJSON *github_respository_containerlinksJSON){

    github_respository_containerlinks_t *github_respository_containerlinks_local_var = NULL;

    // define the local variable for github_respository_containerlinks->self
    link_t *self_local_nonprim = NULL;

    // github_respository_containerlinks->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(github_respository_containerlinksJSON, "self");
    if (self) { 
    self_local_nonprim = link_parseFromJSON(self); //nonprimitive
    }

    // github_respository_containerlinks->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_respository_containerlinksJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    github_respository_containerlinks_local_var = github_respository_containerlinks_create (
        self ? self_local_nonprim : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return github_respository_containerlinks_local_var;
end:
    if (self_local_nonprim) {
        link_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
