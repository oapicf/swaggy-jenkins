/*
 * input_step_impl.h
 *
 * 
 */

#ifndef _input_step_impl_H_
#define _input_step_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct input_step_impl_t input_step_impl_t;

#include "input_step_impllinks.h"
#include "string_parameter_definition.h"



typedef struct input_step_impl_t {
    char *_class; // string
    struct input_step_impllinks_t *_links; //model
    char *id; // string
    char *message; // string
    char *ok; // string
    list_t *parameters; //nonprimitive container
    char *submitter; // string

} input_step_impl_t;

input_step_impl_t *input_step_impl_create(
    char *_class,
    input_step_impllinks_t *_links,
    char *id,
    char *message,
    char *ok,
    list_t *parameters,
    char *submitter
);

void input_step_impl_free(input_step_impl_t *input_step_impl);

input_step_impl_t *input_step_impl_parseFromJSON(cJSON *input_step_implJSON);

cJSON *input_step_impl_convertToJSON(input_step_impl_t *input_step_impl);

#endif /* _input_step_impl_H_ */

