/*
 * pipeline_run.h
 *
 * 
 */

#ifndef _pipeline_run_H_
#define _pipeline_run_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_run_t pipeline_run_t;

#include "pipeline_runartifacts.h"



typedef struct pipeline_run_t {
    char *_class; // string
    list_t *artifacts; //nonprimitive container
    int duration_in_millis; //numeric
    int estimated_duration_in_millis; //numeric
    char *en_queue_time; // string
    char *end_time; // string
    char *id; // string
    char *organization; // string
    char *pipeline; // string
    char *result; // string
    char *run_summary; // string
    char *start_time; // string
    char *state; // string
    char *type; // string
    char *commit_id; // string

} pipeline_run_t;

pipeline_run_t *pipeline_run_create(
    char *_class,
    list_t *artifacts,
    int duration_in_millis,
    int estimated_duration_in_millis,
    char *en_queue_time,
    char *end_time,
    char *id,
    char *organization,
    char *pipeline,
    char *result,
    char *run_summary,
    char *start_time,
    char *state,
    char *type,
    char *commit_id
);

void pipeline_run_free(pipeline_run_t *pipeline_run);

pipeline_run_t *pipeline_run_parseFromJSON(cJSON *pipeline_runJSON);

cJSON *pipeline_run_convertToJSON(pipeline_run_t *pipeline_run);

#endif /* _pipeline_run_H_ */

