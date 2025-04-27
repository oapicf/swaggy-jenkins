/*
 * pipeline_branchesitem.h
 *
 * 
 */

#ifndef _pipeline_branchesitem_H_
#define _pipeline_branchesitem_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_branchesitem_t pipeline_branchesitem_t;

#include "pipeline_branchesitemlatest_run.h"
#include "pipeline_branchesitempull_request.h"



typedef struct pipeline_branchesitem_t {
    char *display_name; // string
    int estimated_duration_in_millis; //numeric
    char *name; // string
    int weather_score; //numeric
    struct pipeline_branchesitemlatest_run_t *latest_run; //model
    char *organization; // string
    struct pipeline_branchesitempull_request_t *pull_request; //model
    int total_number_of_pull_requests; //numeric
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_branchesitem_t;

__attribute__((deprecated)) pipeline_branchesitem_t *pipeline_branchesitem_create(
    char *display_name,
    int estimated_duration_in_millis,
    char *name,
    int weather_score,
    pipeline_branchesitemlatest_run_t *latest_run,
    char *organization,
    pipeline_branchesitempull_request_t *pull_request,
    int total_number_of_pull_requests,
    char *_class
);

void pipeline_branchesitem_free(pipeline_branchesitem_t *pipeline_branchesitem);

pipeline_branchesitem_t *pipeline_branchesitem_parseFromJSON(cJSON *pipeline_branchesitemJSON);

cJSON *pipeline_branchesitem_convertToJSON(pipeline_branchesitem_t *pipeline_branchesitem);

#endif /* _pipeline_branchesitem_H_ */

