#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "unlabeled_load_statistics.h"



static unlabeled_load_statistics_t *unlabeled_load_statistics_create_internal(
    char *_class
    ) {
    unlabeled_load_statistics_t *unlabeled_load_statistics_local_var = malloc(sizeof(unlabeled_load_statistics_t));
    if (!unlabeled_load_statistics_local_var) {
        return NULL;
    }
    memset(unlabeled_load_statistics_local_var, 0, sizeof(unlabeled_load_statistics_t));
    unlabeled_load_statistics_local_var->_library_owned = 1;
    unlabeled_load_statistics_local_var->_class = _class;
    return unlabeled_load_statistics_local_var;
}

__attribute__((deprecated)) unlabeled_load_statistics_t *unlabeled_load_statistics_create(
    char *_class
    ) {
    unlabeled_load_statistics_t *result = unlabeled_load_statistics_create_internal (
        _class
        );
    if (!result) {
    }
    return result;
}

void unlabeled_load_statistics_free(unlabeled_load_statistics_t *unlabeled_load_statistics) {
    if(NULL == unlabeled_load_statistics){
        return ;
    }
    if(unlabeled_load_statistics->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "unlabeled_load_statistics_free");
        return ;
    }
    listEntry_t *listEntry;
    if (unlabeled_load_statistics->_class) {
        free(unlabeled_load_statistics->_class);
        unlabeled_load_statistics->_class = NULL;
    }
    free(unlabeled_load_statistics);
}

cJSON *unlabeled_load_statistics_convertToJSON(unlabeled_load_statistics_t *unlabeled_load_statistics) {
    cJSON *item = cJSON_CreateObject();

    // unlabeled_load_statistics->_class
    if(unlabeled_load_statistics->_class) {
    if(cJSON_AddStringToObject(item, "_class", unlabeled_load_statistics->_class) == NULL) {
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

unlabeled_load_statistics_t *unlabeled_load_statistics_parseFromJSON(cJSON *unlabeled_load_statisticsJSON){

    unlabeled_load_statistics_t *unlabeled_load_statistics_local_var = NULL;

    char *_class_local_str = NULL;

    // unlabeled_load_statistics->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(unlabeled_load_statisticsJSON, "_class");
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

    unlabeled_load_statistics_local_var = unlabeled_load_statistics_create_internal (
        _class_local_str
        );

    if (!unlabeled_load_statistics_local_var) {
        goto end;
    }

    return unlabeled_load_statistics_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
