/*
 * hudson_master_computermonitor_data.h
 *
 * 
 */

#ifndef _hudson_master_computermonitor_data_H_
#define _hudson_master_computermonitor_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct hudson_master_computermonitor_data_t hudson_master_computermonitor_data_t;

#include "clock_difference.h"
#include "disk_space_monitor_descriptor_disk_space.h"
#include "response_time_monitor_data.h"
#include "swap_space_monitor_memory_usage2.h"



typedef struct hudson_master_computermonitor_data_t {
    struct swap_space_monitor_memory_usage2_t *hudson_node_monitors_swap_space_monitor; //model
    struct disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_temporary_space_monitor; //model
    struct disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_disk_space_monitor; //model
    char *hudson_node_monitors_architecture_monitor; // string
    struct response_time_monitor_data_t *hudson_node_monitors_response_time_monitor; //model
    struct clock_difference_t *hudson_node_monitors_clock_monitor; //model
    char *_class; // string

} hudson_master_computermonitor_data_t;

hudson_master_computermonitor_data_t *hudson_master_computermonitor_data_create(
    swap_space_monitor_memory_usage2_t *hudson_node_monitors_swap_space_monitor,
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_temporary_space_monitor,
    disk_space_monitor_descriptor_disk_space_t *hudson_node_monitors_disk_space_monitor,
    char *hudson_node_monitors_architecture_monitor,
    response_time_monitor_data_t *hudson_node_monitors_response_time_monitor,
    clock_difference_t *hudson_node_monitors_clock_monitor,
    char *_class
);

void hudson_master_computermonitor_data_free(hudson_master_computermonitor_data_t *hudson_master_computermonitor_data);

hudson_master_computermonitor_data_t *hudson_master_computermonitor_data_parseFromJSON(cJSON *hudson_master_computermonitor_dataJSON);

cJSON *hudson_master_computermonitor_data_convertToJSON(hudson_master_computermonitor_data_t *hudson_master_computermonitor_data);

#endif /* _hudson_master_computermonitor_data_H_ */

