/*
 * pipeline_step_impl.h
 *
 * 
 */

#ifndef _pipeline_step_impl_H_
#define _pipeline_step_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_step_impl_t pipeline_step_impl_t;

#include "input_step_impl.h"
#include "pipeline_step_impllinks.h"



typedef struct pipeline_step_impl_t {
    char *_class; // string
    struct pipeline_step_impllinks_t *_links; //model
    char *display_name; // string
    int duration_in_millis; //numeric
    char *id; // string
    struct input_step_impl_t *input; //model
    char *result; // string
    char *start_time; // string
    char *state; // string

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_step_impl_t;

__attribute__((deprecated)) pipeline_step_impl_t *pipeline_step_impl_create(
    char *_class,
    pipeline_step_impllinks_t *_links,
    char *display_name,
    int duration_in_millis,
    char *id,
    input_step_impl_t *input,
    char *result,
    char *start_time,
    char *state
);

void pipeline_step_impl_free(pipeline_step_impl_t *pipeline_step_impl);

pipeline_step_impl_t *pipeline_step_impl_parseFromJSON(cJSON *pipeline_step_implJSON);

cJSON *pipeline_step_impl_convertToJSON(pipeline_step_impl_t *pipeline_step_impl);

#endif /* _pipeline_step_impl_H_ */

