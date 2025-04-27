/*
 * pipeline_run_node.h
 *
 * 
 */

#ifndef _pipeline_run_node_H_
#define _pipeline_run_node_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_run_node_t pipeline_run_node_t;

#include "pipeline_run_nodeedges.h"



typedef struct pipeline_run_node_t {
    char *_class; // string
    char *display_name; // string
    int duration_in_millis; //numeric
    list_t *edges; //nonprimitive container
    char *id; // string
    char *result; // string
    char *start_time; // string
    char *state; // string

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_run_node_t;

__attribute__((deprecated)) pipeline_run_node_t *pipeline_run_node_create(
    char *_class,
    char *display_name,
    int duration_in_millis,
    list_t *edges,
    char *id,
    char *result,
    char *start_time,
    char *state
);

void pipeline_run_node_free(pipeline_run_node_t *pipeline_run_node);

pipeline_run_node_t *pipeline_run_node_parseFromJSON(cJSON *pipeline_run_nodeJSON);

cJSON *pipeline_run_node_convertToJSON(pipeline_run_node_t *pipeline_run_node);

#endif /* _pipeline_run_node_H_ */

