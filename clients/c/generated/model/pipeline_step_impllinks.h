/*
 * pipeline_step_impllinks.h
 *
 * 
 */

#ifndef _pipeline_step_impllinks_H_
#define _pipeline_step_impllinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_step_impllinks_t pipeline_step_impllinks_t;

#include "link.h"



typedef struct pipeline_step_impllinks_t {
    struct link_t *self; //model
    struct link_t *actions; //model
    char *_class; // string

} pipeline_step_impllinks_t;

pipeline_step_impllinks_t *pipeline_step_impllinks_create(
    link_t *self,
    link_t *actions,
    char *_class
);

void pipeline_step_impllinks_free(pipeline_step_impllinks_t *pipeline_step_impllinks);

pipeline_step_impllinks_t *pipeline_step_impllinks_parseFromJSON(cJSON *pipeline_step_impllinksJSON);

cJSON *pipeline_step_impllinks_convertToJSON(pipeline_step_impllinks_t *pipeline_step_impllinks);

#endif /* _pipeline_step_impllinks_H_ */

