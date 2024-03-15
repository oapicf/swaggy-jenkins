#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "swap_space_monitor_memory_usage2.h"



swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_create(
    char *_class,
    int available_physical_memory,
    int available_swap_space,
    int total_physical_memory,
    int total_swap_space
    ) {
    swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_local_var = malloc(sizeof(swap_space_monitor_memory_usage2_t));
    if (!swap_space_monitor_memory_usage2_local_var) {
        return NULL;
    }
    swap_space_monitor_memory_usage2_local_var->_class = _class;
    swap_space_monitor_memory_usage2_local_var->available_physical_memory = available_physical_memory;
    swap_space_monitor_memory_usage2_local_var->available_swap_space = available_swap_space;
    swap_space_monitor_memory_usage2_local_var->total_physical_memory = total_physical_memory;
    swap_space_monitor_memory_usage2_local_var->total_swap_space = total_swap_space;

    return swap_space_monitor_memory_usage2_local_var;
}


void swap_space_monitor_memory_usage2_free(swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2) {
    if(NULL == swap_space_monitor_memory_usage2){
        return ;
    }
    listEntry_t *listEntry;
    if (swap_space_monitor_memory_usage2->_class) {
        free(swap_space_monitor_memory_usage2->_class);
        swap_space_monitor_memory_usage2->_class = NULL;
    }
    free(swap_space_monitor_memory_usage2);
}

cJSON *swap_space_monitor_memory_usage2_convertToJSON(swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2) {
    cJSON *item = cJSON_CreateObject();

    // swap_space_monitor_memory_usage2->_class
    if(swap_space_monitor_memory_usage2->_class) {
    if(cJSON_AddStringToObject(item, "_class", swap_space_monitor_memory_usage2->_class) == NULL) {
    goto fail; //String
    }
    }


    // swap_space_monitor_memory_usage2->available_physical_memory
    if(swap_space_monitor_memory_usage2->available_physical_memory) {
    if(cJSON_AddNumberToObject(item, "availablePhysicalMemory", swap_space_monitor_memory_usage2->available_physical_memory) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_space_monitor_memory_usage2->available_swap_space
    if(swap_space_monitor_memory_usage2->available_swap_space) {
    if(cJSON_AddNumberToObject(item, "availableSwapSpace", swap_space_monitor_memory_usage2->available_swap_space) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_space_monitor_memory_usage2->total_physical_memory
    if(swap_space_monitor_memory_usage2->total_physical_memory) {
    if(cJSON_AddNumberToObject(item, "totalPhysicalMemory", swap_space_monitor_memory_usage2->total_physical_memory) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_space_monitor_memory_usage2->total_swap_space
    if(swap_space_monitor_memory_usage2->total_swap_space) {
    if(cJSON_AddNumberToObject(item, "totalSwapSpace", swap_space_monitor_memory_usage2->total_swap_space) == NULL) {
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

swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_parseFromJSON(cJSON *swap_space_monitor_memory_usage2JSON){

    swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_local_var = NULL;

    // swap_space_monitor_memory_usage2->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // swap_space_monitor_memory_usage2->available_physical_memory
    cJSON *available_physical_memory = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "availablePhysicalMemory");
    if (available_physical_memory) { 
    if(!cJSON_IsNumber(available_physical_memory))
    {
    goto end; //Numeric
    }
    }

    // swap_space_monitor_memory_usage2->available_swap_space
    cJSON *available_swap_space = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "availableSwapSpace");
    if (available_swap_space) { 
    if(!cJSON_IsNumber(available_swap_space))
    {
    goto end; //Numeric
    }
    }

    // swap_space_monitor_memory_usage2->total_physical_memory
    cJSON *total_physical_memory = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "totalPhysicalMemory");
    if (total_physical_memory) { 
    if(!cJSON_IsNumber(total_physical_memory))
    {
    goto end; //Numeric
    }
    }

    // swap_space_monitor_memory_usage2->total_swap_space
    cJSON *total_swap_space = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "totalSwapSpace");
    if (total_swap_space) { 
    if(!cJSON_IsNumber(total_swap_space))
    {
    goto end; //Numeric
    }
    }


    swap_space_monitor_memory_usage2_local_var = swap_space_monitor_memory_usage2_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        available_physical_memory ? available_physical_memory->valuedouble : 0,
        available_swap_space ? available_swap_space->valuedouble : 0,
        total_physical_memory ? total_physical_memory->valuedouble : 0,
        total_swap_space ? total_swap_space->valuedouble : 0
        );

    return swap_space_monitor_memory_usage2_local_var;
end:
    return NULL;

}
