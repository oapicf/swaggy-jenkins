/*
 * pipeline.h
 *
 * 
 */

#ifndef _pipeline_H_
#define _pipeline_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_t pipeline_t;

#include "pipelinelatest_run.h"



typedef struct pipeline_t {
    char *_class; // string
    char *organization; // string
    char *name; // string
    char *display_name; // string
    char *full_name; // string
    int weather_score; //numeric
    int estimated_duration_in_millis; //numeric
    struct pipelinelatest_run_t *latest_run; //model

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_t;

__attribute__((deprecated)) pipeline_t *pipeline_create(
    char *_class,
    char *organization,
    char *name,
    char *display_name,
    char *full_name,
    int weather_score,
    int estimated_duration_in_millis,
    pipelinelatest_run_t *latest_run
);

void pipeline_free(pipeline_t *pipeline);

pipeline_t *pipeline_parseFromJSON(cJSON *pipelineJSON);

cJSON *pipeline_convertToJSON(pipeline_t *pipeline);

#endif /* _pipeline_H_ */

