/*
 * pipeline_runartifacts.h
 *
 * 
 */

#ifndef _pipeline_runartifacts_H_
#define _pipeline_runartifacts_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_runartifacts_t pipeline_runartifacts_t;




typedef struct pipeline_runartifacts_t {
    char *name; // string
    int size; //numeric
    char *url; // string
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_runartifacts_t;

__attribute__((deprecated)) pipeline_runartifacts_t *pipeline_runartifacts_create(
    char *name,
    int size,
    char *url,
    char *_class
);

void pipeline_runartifacts_free(pipeline_runartifacts_t *pipeline_runartifacts);

pipeline_runartifacts_t *pipeline_runartifacts_parseFromJSON(cJSON *pipeline_runartifactsJSON);

cJSON *pipeline_runartifacts_convertToJSON(pipeline_runartifacts_t *pipeline_runartifacts);

#endif /* _pipeline_runartifacts_H_ */

