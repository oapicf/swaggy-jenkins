/*
 * pipeline_activityartifacts.h
 *
 * 
 */

#ifndef _pipeline_activityartifacts_H_
#define _pipeline_activityartifacts_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_activityartifacts_t pipeline_activityartifacts_t;




typedef struct pipeline_activityartifacts_t {
    char *name; // string
    int size; //numeric
    char *url; // string
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_activityartifacts_t;

__attribute__((deprecated)) pipeline_activityartifacts_t *pipeline_activityartifacts_create(
    char *name,
    int size,
    char *url,
    char *_class
);

void pipeline_activityartifacts_free(pipeline_activityartifacts_t *pipeline_activityartifacts);

pipeline_activityartifacts_t *pipeline_activityartifacts_parseFromJSON(cJSON *pipeline_activityartifactsJSON);

cJSON *pipeline_activityartifacts_convertToJSON(pipeline_activityartifacts_t *pipeline_activityartifacts);

#endif /* _pipeline_activityartifacts_H_ */

