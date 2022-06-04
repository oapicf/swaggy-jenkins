#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "unlabeled_load_statistics.h"



unlabeled_load_statistics_t *unlabeled_load_statistics_create(
    char *_class
    ) {
    unlabeled_load_statistics_t *unlabeled_load_statistics_local_var = malloc(sizeof(unlabeled_load_statistics_t));
    if (!unlabeled_load_statistics_local_var) {
        return NULL;
    }
    unlabeled_load_statistics_local_var->_class = _class;

    return unlabeled_load_statistics_local_var;
}


void unlabeled_load_statistics_free(unlabeled_load_statistics_t *unlabeled_load_statistics) {
    if(NULL == unlabeled_load_statistics){
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

    // unlabeled_load_statistics->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(unlabeled_load_statisticsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    unlabeled_load_statistics_local_var = unlabeled_load_statistics_create (
        _class ? strdup(_class->valuestring) : NULL
        );

    return unlabeled_load_statistics_local_var;
end:
    return NULL;

}
