/*
 * multibranch_pipeline.h
 *
 * 
 */

#ifndef _multibranch_pipeline_H_
#define _multibranch_pipeline_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct multibranch_pipeline_t multibranch_pipeline_t;




typedef struct multibranch_pipeline_t {
    char *display_name; // string
    int estimated_duration_in_millis; //numeric
    char *latest_run; // string
    char *name; // string
    char *organization; // string
    int weather_score; //numeric
    list_t *branch_names; //primitive container
    int number_of_failing_branches; //numeric
    int number_of_failing_pull_requests; //numeric
    int number_of_successful_branches; //numeric
    int number_of_successful_pull_requests; //numeric
    int total_number_of_branches; //numeric
    int total_number_of_pull_requests; //numeric
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} multibranch_pipeline_t;

__attribute__((deprecated)) multibranch_pipeline_t *multibranch_pipeline_create(
    char *display_name,
    int estimated_duration_in_millis,
    char *latest_run,
    char *name,
    char *organization,
    int weather_score,
    list_t *branch_names,
    int number_of_failing_branches,
    int number_of_failing_pull_requests,
    int number_of_successful_branches,
    int number_of_successful_pull_requests,
    int total_number_of_branches,
    int total_number_of_pull_requests,
    char *_class
);

void multibranch_pipeline_free(multibranch_pipeline_t *multibranch_pipeline);

multibranch_pipeline_t *multibranch_pipeline_parseFromJSON(cJSON *multibranch_pipelineJSON);

cJSON *multibranch_pipeline_convertToJSON(multibranch_pipeline_t *multibranch_pipeline);

#endif /* _multibranch_pipeline_H_ */

