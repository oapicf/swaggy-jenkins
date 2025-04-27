/*
 * pipeline_impllinks.h
 *
 * 
 */

#ifndef _pipeline_impllinks_H_
#define _pipeline_impllinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_impllinks_t pipeline_impllinks_t;

#include "link.h"



typedef struct pipeline_impllinks_t {
    struct link_t *runs; //model
    struct link_t *self; //model
    struct link_t *queue; //model
    struct link_t *actions; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_impllinks_t;

__attribute__((deprecated)) pipeline_impllinks_t *pipeline_impllinks_create(
    link_t *runs,
    link_t *self,
    link_t *queue,
    link_t *actions,
    char *_class
);

void pipeline_impllinks_free(pipeline_impllinks_t *pipeline_impllinks);

pipeline_impllinks_t *pipeline_impllinks_parseFromJSON(cJSON *pipeline_impllinksJSON);

cJSON *pipeline_impllinks_convertToJSON(pipeline_impllinks_t *pipeline_impllinks);

#endif /* _pipeline_impllinks_H_ */

