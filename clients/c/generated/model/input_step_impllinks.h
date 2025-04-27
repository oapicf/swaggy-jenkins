/*
 * input_step_impllinks.h
 *
 * 
 */

#ifndef _input_step_impllinks_H_
#define _input_step_impllinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct input_step_impllinks_t input_step_impllinks_t;

#include "link.h"



typedef struct input_step_impllinks_t {
    struct link_t *self; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} input_step_impllinks_t;

__attribute__((deprecated)) input_step_impllinks_t *input_step_impllinks_create(
    link_t *self,
    char *_class
);

void input_step_impllinks_free(input_step_impllinks_t *input_step_impllinks);

input_step_impllinks_t *input_step_impllinks_parseFromJSON(cJSON *input_step_impllinksJSON);

cJSON *input_step_impllinks_convertToJSON(input_step_impllinks_t *input_step_impllinks);

#endif /* _input_step_impllinks_H_ */

