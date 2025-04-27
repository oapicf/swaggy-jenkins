/*
 * response_time_monitor_data.h
 *
 * 
 */

#ifndef _response_time_monitor_data_H_
#define _response_time_monitor_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct response_time_monitor_data_t response_time_monitor_data_t;




typedef struct response_time_monitor_data_t {
    char *_class; // string
    int timestamp; //numeric
    int average; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} response_time_monitor_data_t;

__attribute__((deprecated)) response_time_monitor_data_t *response_time_monitor_data_create(
    char *_class,
    int timestamp,
    int average
);

void response_time_monitor_data_free(response_time_monitor_data_t *response_time_monitor_data);

response_time_monitor_data_t *response_time_monitor_data_parseFromJSON(cJSON *response_time_monitor_dataJSON);

cJSON *response_time_monitor_data_convertToJSON(response_time_monitor_data_t *response_time_monitor_data);

#endif /* _response_time_monitor_data_H_ */

