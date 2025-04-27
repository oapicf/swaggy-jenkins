#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "clock_difference.h"



static clock_difference_t *clock_difference_create_internal(
    char *_class,
    int diff
    ) {
    clock_difference_t *clock_difference_local_var = malloc(sizeof(clock_difference_t));
    if (!clock_difference_local_var) {
        return NULL;
    }
    clock_difference_local_var->_class = _class;
    clock_difference_local_var->diff = diff;

    clock_difference_local_var->_library_owned = 1;
    return clock_difference_local_var;
}

__attribute__((deprecated)) clock_difference_t *clock_difference_create(
    char *_class,
    int diff
    ) {
    return clock_difference_create_internal (
        _class,
        diff
        );
}

void clock_difference_free(clock_difference_t *clock_difference) {
    if(NULL == clock_difference){
        return ;
    }
    if(clock_difference->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "clock_difference_free");
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
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // clock_difference->diff
    cJSON *diff = cJSON_GetObjectItemCaseSensitive(clock_differenceJSON, "diff");
    if (cJSON_IsNull(diff)) {
        diff = NULL;
    }
    if (diff) { 
    if(!cJSON_IsNumber(diff))
    {
    goto end; //Numeric
    }
    }


    clock_difference_local_var = clock_difference_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        diff ? diff->valuedouble : 0
        );

    return clock_difference_local_var;
end:
    return NULL;

}
