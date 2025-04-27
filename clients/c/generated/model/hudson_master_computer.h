/*
 * hudson_master_computer.h
 *
 * 
 */

#ifndef _hudson_master_computer_H_
#define _hudson_master_computer_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct hudson_master_computer_t hudson_master_computer_t;

#include "hudson_master_computerexecutors.h"
#include "hudson_master_computermonitor_data.h"
#include "label1.h"



typedef struct hudson_master_computer_t {
    char *_class; // string
    char *display_name; // string
    list_t *executors; //nonprimitive container
    char *icon; // string
    char *icon_class_name; // string
    int idle; //boolean
    int jnlp_agent; //boolean
    int launch_supported; //boolean
    struct label1_t *load_statistics; //model
    int manual_launch_allowed; //boolean
    struct hudson_master_computermonitor_data_t *monitor_data; //model
    int num_executors; //numeric
    int offline; //boolean
    char *offline_cause; // string
    char *offline_cause_reason; // string
    int temporarily_offline; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} hudson_master_computer_t;

__attribute__((deprecated)) hudson_master_computer_t *hudson_master_computer_create(
    char *_class,
    char *display_name,
    list_t *executors,
    char *icon,
    char *icon_class_name,
    int idle,
    int jnlp_agent,
    int launch_supported,
    label1_t *load_statistics,
    int manual_launch_allowed,
    hudson_master_computermonitor_data_t *monitor_data,
    int num_executors,
    int offline,
    char *offline_cause,
    char *offline_cause_reason,
    int temporarily_offline
);

void hudson_master_computer_free(hudson_master_computer_t *hudson_master_computer);

hudson_master_computer_t *hudson_master_computer_parseFromJSON(cJSON *hudson_master_computerJSON);

cJSON *hudson_master_computer_convertToJSON(hudson_master_computer_t *hudson_master_computer);

#endif /* _hudson_master_computer_H_ */

