/*
 * favorite_impllinks.h
 *
 * 
 */

#ifndef _favorite_impllinks_H_
#define _favorite_impllinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct favorite_impllinks_t favorite_impllinks_t;

#include "link.h"



typedef struct favorite_impllinks_t {
    struct link_t *self; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} favorite_impllinks_t;

__attribute__((deprecated)) favorite_impllinks_t *favorite_impllinks_create(
    link_t *self,
    char *_class
);

void favorite_impllinks_free(favorite_impllinks_t *favorite_impllinks);

favorite_impllinks_t *favorite_impllinks_parseFromJSON(cJSON *favorite_impllinksJSON);

cJSON *favorite_impllinks_convertToJSON(favorite_impllinks_t *favorite_impllinks);

#endif /* _favorite_impllinks_H_ */

