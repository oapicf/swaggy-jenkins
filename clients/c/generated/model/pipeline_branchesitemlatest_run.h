/*
 * pipeline_branchesitemlatest_run.h
 *
 * 
 */

#ifndef _pipeline_branchesitemlatest_run_H_
#define _pipeline_branchesitemlatest_run_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_branchesitemlatest_run_t pipeline_branchesitemlatest_run_t;




typedef struct pipeline_branchesitemlatest_run_t {
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
} pipeline_branchesitemlatest_run_t;

__attribute__((deprecated)) pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run_create(
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

void pipeline_branchesitemlatest_run_free(pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run);

pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run_parseFromJSON(cJSON *pipeline_branchesitemlatest_runJSON);

cJSON *pipeline_branchesitemlatest_run_convertToJSON(pipeline_branchesitemlatest_run_t *pipeline_branchesitemlatest_run);

#endif /* _pipeline_branchesitemlatest_run_H_ */

