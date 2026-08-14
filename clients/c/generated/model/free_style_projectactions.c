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
    memset(free_style_projectactions_local_var, 0, sizeof(free_style_projectactions_t));
    free_style_projectactions_local_var->_library_owned = 1;
    free_style_projectactions_local_var->_class = _class;
    return free_style_projectactions_local_var;
}

__attribute__((deprecated)) free_style_projectactions_t *free_style_projectactions_create(
    char *_class
    ) {
    free_style_projectactions_t *result = free_style_projectactions_create_internal (
        _class
        );
    if (!result) {
    }
    return result;
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

    char *_class_local_str = NULL;

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


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    free_style_projectactions_local_var = free_style_projectactions_create_internal (
        _class_local_str
        );

    if (!free_style_projectactions_local_var) {
        goto end;
    }

    return free_style_projectactions_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
