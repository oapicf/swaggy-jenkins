#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "clock_difference.h"



clock_difference_t *clock_difference_create(
    char *_class,
    int diff
    ) {
    clock_difference_t *clock_difference_local_var = malloc(sizeof(clock_difference_t));
    if (!clock_difference_local_var) {
        return NULL;
    }
    clock_difference_local_var->_class = _class;
    clock_difference_local_var->diff = diff;

    return clock_difference_local_var;
}


void clock_difference_free(clock_difference_t *clock_difference) {
    if(NULL == clock_difference){
        return ;
    }
    listEntry_t *listEntry;
    if (clock_difference->_class) {
        free(clock_difference->_class);
        clock_difference->_class = NULL;
    }
    free(clock_difference);
}

cJSON *clock_difference_convertToJSON(clock_difference_t *clock_difference) {
    cJSON *item = cJSON_CreateObject();

    // clock_difference->_class
    if(clock_difference->_class) { 
    if(cJSON_AddStringToObject(item, "_class", clock_difference->_class) == NULL) {
    goto fail; //String
    }
     } 


    // clock_difference->diff
    if(clock_difference->diff) { 
    if(cJSON_AddNumberToObject(item, "diff", clock_difference->diff) == NULL) {
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

clock_difference_t *clock_difference_parseFromJSON(cJSON *clock_differenceJSON){

    clock_difference_t *clock_difference_local_var = NULL;

    // clock_difference->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(clock_differenceJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // clock_difference->diff
    cJSON *diff = cJSON_GetObjectItemCaseSensitive(clock_differenceJSON, "diff");
    if (diff) { 
    if(!cJSON_IsNumber(diff))
    {
    goto end; //Numeric
    }
    }


    clock_difference_local_var = clock_difference_create (
        _class ? strdup(_class->valuestring) : NULL,
        diff ? diff->valuedouble : 0
        );

    return clock_difference_local_var;
end:
    return NULL;

}
