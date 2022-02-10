/*
 * swap_space_monitor_memory_usage2.h
 *
 * 
 */

#ifndef _swap_space_monitor_memory_usage2_H_
#define _swap_space_monitor_memory_usage2_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct swap_space_monitor_memory_usage2_t swap_space_monitor_memory_usage2_t;




typedef struct swap_space_monitor_memory_usage2_t {
    char *_class; // string
    int available_physical_memory; //numeric
    int available_swap_space; //numeric
    int total_physical_memory; //numeric
    int total_swap_space; //numeric

} swap_space_monitor_memory_usage2_t;

swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_create(
    char *_class,
    int available_physical_memory,
    int available_swap_space,
    int total_physical_memory,
    int total_swap_space
);

void swap_space_monitor_memory_usage2_free(swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2);

swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2_parseFromJSON(cJSON *swap_space_monitor_memory_usage2JSON);

cJSON *swap_space_monitor_memory_usage2_convertToJSON(swap_space_monitor_memory_usage2_t *swap_space_monitor_memory_usage2);

#endif /* _swap_space_monitor_memory_usage2_H_ */

