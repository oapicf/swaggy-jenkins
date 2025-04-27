/*
 * disk_space_monitor_descriptor_disk_space.h
 *
 * 
 */

#ifndef _disk_space_monitor_descriptor_disk_space_H_
#define _disk_space_monitor_descriptor_disk_space_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct disk_space_monitor_descriptor_disk_space_t disk_space_monitor_descriptor_disk_space_t;




typedef struct disk_space_monitor_descriptor_disk_space_t {
    char *_class; // string
    int timestamp; //numeric
    char *path; // string
    int size; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} disk_space_monitor_descriptor_disk_space_t;

__attribute__((deprecated)) disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space_create(
    char *_class,
    int timestamp,
    char *path,
    int size
);

void disk_space_monitor_descriptor_disk_space_free(disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space);

disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space_parseFromJSON(cJSON *disk_space_monitor_descriptor_disk_spaceJSON);

cJSON *disk_space_monitor_descriptor_disk_space_convertToJSON(disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space);

#endif /* _disk_space_monitor_descriptor_disk_space_H_ */

