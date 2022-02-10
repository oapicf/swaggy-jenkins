/*
 * generic_resource.h
 *
 * 
 */

#ifndef _generic_resource_H_
#define _generic_resource_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct generic_resource_t generic_resource_t;




typedef struct generic_resource_t {
    char *_class; // string
    char *display_name; // string
    int duration_in_millis; //numeric
    char *id; // string
    char *result; // string
    char *start_time; // string

} generic_resource_t;

generic_resource_t *generic_resource_create(
    char *_class,
    char *display_name,
    int duration_in_millis,
    char *id,
    char *result,
    char *start_time
);

void generic_resource_free(generic_resource_t *generic_resource);

generic_resource_t *generic_resource_parseFromJSON(cJSON *generic_resourceJSON);

cJSON *generic_resource_convertToJSON(generic_resource_t *generic_resource);

#endif /* _generic_resource_H_ */

