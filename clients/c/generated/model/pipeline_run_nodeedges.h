/*
 * pipeline_run_nodeedges.h
 *
 * 
 */

#ifndef _pipeline_run_nodeedges_H_
#define _pipeline_run_nodeedges_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_run_nodeedges_t pipeline_run_nodeedges_t;




typedef struct pipeline_run_nodeedges_t {
    char *id; // string
    char *_class; // string

} pipeline_run_nodeedges_t;

pipeline_run_nodeedges_t *pipeline_run_nodeedges_create(
    char *id,
    char *_class
);

void pipeline_run_nodeedges_free(pipeline_run_nodeedges_t *pipeline_run_nodeedges);

pipeline_run_nodeedges_t *pipeline_run_nodeedges_parseFromJSON(cJSON *pipeline_run_nodeedgesJSON);

cJSON *pipeline_run_nodeedges_convertToJSON(pipeline_run_nodeedges_t *pipeline_run_nodeedges);

#endif /* _pipeline_run_nodeedges_H_ */

