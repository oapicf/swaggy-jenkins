/*
 * pipeline_run_impllinks.h
 *
 * 
 */

#ifndef _pipeline_run_impllinks_H_
#define _pipeline_run_impllinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_run_impllinks_t pipeline_run_impllinks_t;

#include "link.h"



typedef struct pipeline_run_impllinks_t {
    struct link_t *nodes; //model
    struct link_t *log; //model
    struct link_t *self; //model
    struct link_t *actions; //model
    struct link_t *steps; //model
    char *_class; // string

} pipeline_run_impllinks_t;

pipeline_run_impllinks_t *pipeline_run_impllinks_create(
    link_t *nodes,
    link_t *log,
    link_t *self,
    link_t *actions,
    link_t *steps,
    char *_class
);

void pipeline_run_impllinks_free(pipeline_run_impllinks_t *pipeline_run_impllinks);

pipeline_run_impllinks_t *pipeline_run_impllinks_parseFromJSON(cJSON *pipeline_run_impllinksJSON);

cJSON *pipeline_run_impllinks_convertToJSON(pipeline_run_impllinks_t *pipeline_run_impllinks);

#endif /* _pipeline_run_impllinks_H_ */

