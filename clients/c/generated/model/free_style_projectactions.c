#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_projectactions.h"



free_style_projectactions_t *free_style_projectactions_create(
    char *_class
    ) {
    free_style_projectactions_t *free_style_projectactions_local_var = malloc(sizeof(free_style_projectactions_t));
    if (!free_style_projectactions_local_var) {
        return NULL;
    }
    free_style_projectactions_local_var->_class = _class;

    return free_style_projectactions_local_var;
}


void free_style_projectactions_free(free_style_projectactions_t *free_style_projectactions) {
    if(NULL == free_style_projectactions){
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
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    free_style_projectactions_local_var = free_style_projectactions_create (
        _class ? strdup(_class->valuestring) : NULL
        );

    return free_style_projectactions_local_var;
end:
    return NULL;

}
