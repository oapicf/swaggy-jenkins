/*
 * pipeline_run_impl.h
 *
 * 
 */

#ifndef _pipeline_run_impl_H_
#define _pipeline_run_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_run_impl_t pipeline_run_impl_t;

#include "pipeline_run_impllinks.h"



typedef struct pipeline_run_impl_t {
    char *_class; // string
    struct pipeline_run_impllinks_t *_links; //model
    int duration_in_millis; //numeric
    char *en_queue_time; // string
    char *end_time; // string
    int estimated_duration_in_millis; //numeric
    char *id; // string
    char *organization; // string
    char *pipeline; // string
    char *result; // string
    char *run_summary; // string
    char *start_time; // string
    char *state; // string
    char *type; // string
    char *commit_id; // string

} pipeline_run_impl_t;

pipeline_run_impl_t *pipeline_run_impl_create(
    char *_class,
    pipeline_run_impllinks_t *_links,
    int duration_in_millis,
    char *en_queue_time,
    char *end_time,
    int estimated_duration_in_millis,
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

void pipeline_run_impl_free(pipeline_run_impl_t *pipeline_run_impl);

pipeline_run_impl_t *pipeline_run_impl_parseFromJSON(cJSON *pipeline_run_implJSON);

cJSON *pipeline_run_impl_convertToJSON(pipeline_run_impl_t *pipeline_run_impl);

#endif /* _pipeline_run_impl_H_ */

