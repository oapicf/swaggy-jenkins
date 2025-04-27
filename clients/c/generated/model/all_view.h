/*
 * all_view.h
 *
 * 
 */

#ifndef _all_view_H_
#define _all_view_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct all_view_t all_view_t;




typedef struct all_view_t {
    char *_class; // string
    char *name; // string
    char *url; // string

    int _library_owned; // Is the library responsible for freeing this object?
} all_view_t;

__attribute__((deprecated)) all_view_t *all_view_create(
    char *_class,
    char *name,
    char *url
);

void all_view_free(all_view_t *all_view);

all_view_t *all_view_parseFromJSON(cJSON *all_viewJSON);

cJSON *all_view_convertToJSON(all_view_t *all_view);

#endif /* _all_view_H_ */

