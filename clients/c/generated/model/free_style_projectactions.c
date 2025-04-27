#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_projectactions.h"



static free_style_projectactions_t *free_style_projectactions_create_internal(
    char *_class
    ) {
    free_style_projectactions_t *free_style_projectactions_local_var = malloc(sizeof(free_style_projectactions_t));
    if (!free_style_projectactions_local_var) {
        return NULL;
    }
    free_style_projectactions_local_var->_class = _class;

    free_style_projectactions_local_var->_library_owned = 1;
    return free_style_projectactions_local_var;
}

__attribute__((deprecated)) free_style_projectactions_t *free_style_projectactions_create(
    char *_class
    ) {
    return free_style_projectactions_create_internal (
        _class
        );
}

void free_style_projectactions_free(free_style_projectactions_t *free_style_projectactions) {
    if(NULL == free_style_projectactions){
        return ;
    }
    if(free_style_projectactions->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "free_style_projectactions_free");
        return ;
    }
    listEntry_t *listEntry;
    if (free_style_projectactions->_class) {
        free(free_style_projectactions->_class);
        free_style_projectactions->_class = NULL;
    }
    free(free_style_projectactions);
}

cJSON *free_style_projectactions_convertToJSON(free_style_projectactions_t *free_style_projectactions) {
    cJSON *item = cJSON_CreateObject();

    // free_style_projectactions->_class
    if(free_style_projectactions->_class) {
    if(cJSON_AddStringToObject(item, "_class", free_style_projectactions->_class) == NULL) {
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

free_style_projectactions_t *free_style_projectactions_parseFromJSON(cJSON *free_style_projectactionsJSON){

    free_style_projectactions_t *free_style_projectactions_local_var = NULL;

    // free_style_projectactions->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(free_style_projectactionsJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    free_style_projectactions_local_var = free_style_projectactions_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return free_style_projectactions_local_var;
end:
    return NULL;

}
