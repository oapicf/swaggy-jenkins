/*
 * link.h
 *
 * 
 */

#ifndef _link_H_
#define _link_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct link_t link_t;




typedef struct link_t {
    char *_class; // string
    char *href; // string

    int _library_owned; // Is the library responsible for freeing this object?
} link_t;

__attribute__((deprecated)) link_t *link_create(
    char *_class,
    char *href
);

void link_free(link_t *link);

link_t *link_parseFromJSON(cJSON *linkJSON);

cJSON *link_convertToJSON(link_t *link);

#endif /* _link_H_ */

