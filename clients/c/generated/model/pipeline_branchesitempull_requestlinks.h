/*
 * pipeline_branchesitempull_requestlinks.h
 *
 * 
 */

#ifndef _pipeline_branchesitempull_requestlinks_H_
#define _pipeline_branchesitempull_requestlinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_branchesitempull_requestlinks_t pipeline_branchesitempull_requestlinks_t;




typedef struct pipeline_branchesitempull_requestlinks_t {
    char *self; // string
    char *_class; // string

} pipeline_branchesitempull_requestlinks_t;

pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks_create(
    char *self,
    char *_class
);

void pipeline_branchesitempull_requestlinks_free(pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks);

pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks_parseFromJSON(cJSON *pipeline_branchesitempull_requestlinksJSON);

cJSON *pipeline_branchesitempull_requestlinks_convertToJSON(pipeline_branchesitempull_requestlinks_t *pipeline_branchesitempull_requestlinks);

#endif /* _pipeline_branchesitempull_requestlinks_H_ */

