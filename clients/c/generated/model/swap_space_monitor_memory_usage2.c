#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "swap_space_monitor_memory_usage2.h"



static swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_create_internal(
    char *_class,
    int *available_physical_memory,
    int *available_swap_space,
    int *total_physical_memory,
    int *total_swap_space
    ) {
    swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_local_var = malloc(sizeof(swap_space_monitor_memory_usage2_t));
    if (!swap_space_monitor_memory_usage2_local_var) {
        return NULL;
    }
    memset(swap_space_monitor_memory_usage2_local_var, 0, sizeof(swap_space_monitor_memory_usage2_t));
    swap_space_monitor_memory_usage2_local_var->_library_owned = 1;
    swap_space_monitor_memory_usage2_local_var->_class = _class;
    swap_space_monitor_memory_usage2_local_var->available_physical_memory = available_physical_memory;
    swap_space_monitor_memory_usage2_local_var->available_swap_space = available_swap_space;
    swap_space_monitor_memory_usage2_local_var->total_physical_memory = total_physical_memory;
    swap_space_monitor_memory_usage2_local_var->total_swap_space = total_swap_space;
    return swap_space_monitor_memory_usage2_local_var;
}

__attribute__((deprecated)) swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_create(
    char *_class,
    int *available_physical_memory,
    int *available_swap_space,
    int *total_physical_memory,
    int *total_swap_space
    ) {
    int *available_physical_memory_copy = NULL;
    if (available_physical_memory) {
        available_physical_memory_copy = malloc(sizeof(int));
        if (available_physical_memory_copy) *available_physical_memory_copy = *available_physical_memory;
    }
    int *available_swap_space_copy = NULL;
    if (available_swap_space) {
        available_swap_space_copy = malloc(sizeof(int));
        if (available_swap_space_copy) *available_swap_space_copy = *available_swap_space;
    }
    int *total_physical_memory_copy = NULL;
    if (total_physical_memory) {
        total_physical_memory_copy = malloc(sizeof(int));
        if (total_physical_memory_copy) *total_physical_memory_copy = *total_physical_memory;
    }
    int *total_swap_space_copy = NULL;
    if (total_swap_space) {
        total_swap_space_copy = malloc(sizeof(int));
        if (total_swap_space_copy) *total_swap_space_copy = *total_swap_space;
    }
    swap_space_monitor_memory_usage2_t *result = swap_space_monitor_memory_usage2_create_internal (
        _class,
        available_physical_memory_copy,
        available_swap_space_copy,
        total_physical_memory_copy,
        total_swap_space_copy
        );
    if (!result) {
        free(available_physical_memory_copy);
        free(available_swap_space_copy);
        free(total_physical_memory_copy);
        free(total_swap_space_copy);
    }
    return result;
}

void swap_space_monitor_memory_usage2_free(swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2) {
    if(NULL == swap_space_monitor_memory_usage2){
        return ;
    }
    if(swap_space_monitor_memory_usage2->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "swap_space_monitor_memory_usage2_free");
        return ;
    }
    listEntry_t *listEntry;
    if (swap_space_monitor_memory_usage2->_class) {
        free(swap_space_monitor_memory_usage2->_class);
        swap_space_monitor_memory_usage2->_class = NULL;
    }
    if (swap_space_monitor_memory_usage2->available_physical_memory) {
        free(swap_space_monitor_memory_usage2->available_physical_memory);
        swap_space_monitor_memory_usage2->available_physical_memory = NULL;
    }
    if (swap_space_monitor_memory_usage2->available_swap_space) {
        free(swap_space_monitor_memory_usage2->available_swap_space);
        swap_space_monitor_memory_usage2->available_swap_space = NULL;
    }
    if (swap_space_monitor_memory_usage2->total_physical_memory) {
        free(swap_space_monitor_memory_usage2->total_physical_memory);
        swap_space_monitor_memory_usage2->total_physical_memory = NULL;
    }
    if (swap_space_monitor_memory_usage2->total_swap_space) {
        free(swap_space_monitor_memory_usage2->total_swap_space);
        swap_space_monitor_memory_usage2->total_swap_space = NULL;
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
    if(cJSON_AddNumberToObject(item, "availablePhysicalMemory", *swap_space_monitor_memory_usage2->available_physical_memory) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_space_monitor_memory_usage2->available_swap_space
    if(swap_space_monitor_memory_usage2->available_swap_space) {
    if(cJSON_AddNumberToObject(item, "availableSwapSpace", *swap_space_monitor_memory_usage2->available_swap_space) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_space_monitor_memory_usage2->total_physical_memory
    if(swap_space_monitor_memory_usage2->total_physical_memory) {
    if(cJSON_AddNumberToObject(item, "totalPhysicalMemory", *swap_space_monitor_memory_usage2->total_physical_memory) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_space_monitor_memory_usage2->total_swap_space
    if(swap_space_monitor_memory_usage2->total_swap_space) {
    if(cJSON_AddNumberToObject(item, "totalSwapSpace", *swap_space_monitor_memory_usage2->total_swap_space) == NULL) {
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

    char *_class_local_str = NULL;

    // define the local variable for swap_space_monitor_memory_usage2->available_physical_memory
    int *available_physical_memory_local_var = NULL;

    // define the local variable for swap_space_monitor_memory_usage2->available_swap_space
    int *available_swap_space_local_var = NULL;

    // define the local variable for swap_space_monitor_memory_usage2->total_physical_memory
    int *total_physical_memory_local_var = NULL;

    // define the local variable for swap_space_monitor_memory_usage2->total_swap_space
    int *total_swap_space_local_var = NULL;

    // swap_space_monitor_memory_usage2->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // swap_space_monitor_memory_usage2->available_physical_memory
    cJSON *available_physical_memory = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "availablePhysicalMemory");
    if (cJSON_IsNull(available_physical_memory)) {
        available_physical_memory = NULL;
    }
    if (available_physical_memory) { 
    if(!cJSON_IsNumber(available_physical_memory))
    {
    goto end; //Numeric
    }
    available_physical_memory_local_var = malloc(sizeof(int));
    if(!available_physical_memory_local_var)
    {
        goto end;
    }
    *available_physical_memory_local_var = available_physical_memory->valuedouble;
    }

    // swap_space_monitor_memory_usage2->available_swap_space
    cJSON *available_swap_space = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "availableSwapSpace");
    if (cJSON_IsNull(available_swap_space)) {
        available_swap_space = NULL;
    }
    if (available_swap_space) { 
    if(!cJSON_IsNumber(available_swap_space))
    {
    goto end; //Numeric
    }
    available_swap_space_local_var = malloc(sizeof(int));
    if(!available_swap_space_local_var)
    {
        goto end;
    }
    *available_swap_space_local_var = available_swap_space->valuedouble;
    }

    // swap_space_monitor_memory_usage2->total_physical_memory
    cJSON *total_physical_memory = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "totalPhysicalMemory");
    if (cJSON_IsNull(total_physical_memory)) {
        total_physical_memory = NULL;
    }
    if (total_physical_memory) { 
    if(!cJSON_IsNumber(total_physical_memory))
    {
    goto end; //Numeric
    }
    total_physical_memory_local_var = malloc(sizeof(int));
    if(!total_physical_memory_local_var)
    {
        goto end;
    }
    *total_physical_memory_local_var = total_physical_memory->valuedouble;
    }

    // swap_space_monitor_memory_usage2->total_swap_space
    cJSON *total_swap_space = cJSON_GetObjectItemCaseSensitive(swap_space_monitor_memory_usage2JSON, "totalSwapSpace");
    if (cJSON_IsNull(total_swap_space)) {
        total_swap_space = NULL;
    }
    if (total_swap_space) { 
    if(!cJSON_IsNumber(total_swap_space))
    {
    goto end; //Numeric
    }
    total_swap_space_local_var = malloc(sizeof(int));
    if(!total_swap_space_local_var)
    {
        goto end;
    }
    *total_swap_space_local_var = total_swap_space->valuedouble;
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    swap_space_monitor_memory_usage2_local_var = swap_space_monitor_memory_usage2_create_internal (
        _class_local_str,
        available_physical_memory_local_var,
        available_swap_space_local_var,
        total_physical_memory_local_var,
        total_swap_space_local_var
        );

    if (!swap_space_monitor_memory_usage2_local_var) {
        goto end;
    }

    return swap_space_monitor_memory_usage2_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (available_physical_memory_local_var) {
        free(available_physical_memory_local_var);
        available_physical_memory_local_var = NULL;
    }
    if (available_swap_space_local_var) {
        free(available_swap_space_local_var);
        available_swap_space_local_var = NULL;
    }
    if (total_physical_memory_local_var) {
        free(total_physical_memory_local_var);
        total_physical_memory_local_var = NULL;
    }
    if (total_swap_space_local_var) {
        free(total_swap_space_local_var);
        total_swap_space_local_var = NULL;
    }
    return NULL;

}
