/*
 * extension_class_impllinks.h
 *
 * 
 */

#ifndef _extension_class_impllinks_H_
#define _extension_class_impllinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct extension_class_impllinks_t extension_class_impllinks_t;

#include "link.h"



typedef struct extension_class_impllinks_t {
    struct link_t *self; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} extension_class_impllinks_t;

__attribute__((deprecated)) extension_class_impllinks_t *extension_class_impllinks_create(
    link_t *self,
    char *_class
);

void extension_class_impllinks_free(extension_class_impllinks_t *extension_class_impllinks);

extension_class_impllinks_t *extension_class_impllinks_parseFromJSON(cJSON *extension_class_impllinksJSON);

cJSON *extension_class_impllinks_convertToJSON(extension_class_impllinks_t *extension_class_impllinks);

#endif /* _extension_class_impllinks_H_ */

