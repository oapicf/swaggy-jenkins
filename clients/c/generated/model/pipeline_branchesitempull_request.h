/*
 * pipeline_branchesitempull_request.h
 *
 * 
 */

#ifndef _pipeline_branchesitempull_request_H_
#define _pipeline_branchesitempull_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_branchesitempull_request_t pipeline_branchesitempull_request_t;

#include "pipeline_branchesitempull_requestlinks.h"



typedef struct pipeline_branchesitempull_request_t {
    struct pipeline_branchesitempull_requestlinks_t *_links; //model
    char *author; // string
    char *id; // string
    char *title; // string
    char *url; // string
    char *_class; // string

} pipeline_branchesitempull_request_t;

pipeline_branchesitempull_request_t *pipeline_branchesitempull_request_create(
    pipeline_branchesitempull_requestlinks_t *_links,
    char *author,
    char *id,
    char *title,
    char *url,
    char *_class
);

void pipeline_branchesitempull_request_free(pipeline_branchesitempull_request_t *pipeline_branchesitempull_request);

pipeline_branchesitempull_request_t *pipeline_branchesitempull_request_parseFromJSON(cJSON *pipeline_branchesitempull_requestJSON);

cJSON *pipeline_branchesitempull_request_convertToJSON(pipeline_branchesitempull_request_t *pipeline_branchesitempull_request);

#endif /* _pipeline_branchesitempull_request_H_ */

