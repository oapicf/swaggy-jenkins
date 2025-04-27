/*
 * branch_impllinks.h
 *
 * 
 */

#ifndef _branch_impllinks_H_
#define _branch_impllinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct branch_impllinks_t branch_impllinks_t;

#include "link.h"



typedef struct branch_impllinks_t {
    struct link_t *self; //model
    struct link_t *actions; //model
    struct link_t *runs; //model
    struct link_t *queue; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} branch_impllinks_t;

__attribute__((deprecated)) branch_impllinks_t *branch_impllinks_create(
    link_t *self,
    link_t *actions,
    link_t *runs,
    link_t *queue,
    char *_class
);

void branch_impllinks_free(branch_impllinks_t *branch_impllinks);

branch_impllinks_t *branch_impllinks_parseFromJSON(cJSON *branch_impllinksJSON);

cJSON *branch_impllinks_convertToJSON(branch_impllinks_t *branch_impllinks);

#endif /* _branch_impllinks_H_ */

