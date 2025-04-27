/*
 * pipelinelatest_run.h
 *
 * 
 */

#ifndef _pipelinelatest_run_H_
#define _pipelinelatest_run_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipelinelatest_run_t pipelinelatest_run_t;

#include "pipelinelatest_runartifacts.h"



typedef struct pipelinelatest_run_t {
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
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} pipelinelatest_run_t;

__attribute__((deprecated)) pipelinelatest_run_t *pipelinelatest_run_create(
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
    char *commit_id,
    char *_class
);

void pipelinelatest_run_free(pipelinelatest_run_t *pipelinelatest_run);

pipelinelatest_run_t *pipelinelatest_run_parseFromJSON(cJSON *pipelinelatest_runJSON);

cJSON *pipelinelatest_run_convertToJSON(pipelinelatest_run_t *pipelinelatest_run);

#endif /* _pipelinelatest_run_H_ */

