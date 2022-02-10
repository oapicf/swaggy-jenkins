/*
 * extension_class_impl.h
 *
 * 
 */

#ifndef _extension_class_impl_H_
#define _extension_class_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct extension_class_impl_t extension_class_impl_t;

#include "extension_class_impllinks.h"



typedef struct extension_class_impl_t {
    char *_class; // string
    struct extension_class_impllinks_t *_links; //model
    list_t *classes; //primitive container

} extension_class_impl_t;

extension_class_impl_t *extension_class_impl_create(
    char *_class,
    extension_class_impllinks_t *_links,
    list_t *classes
);

void extension_class_impl_free(extension_class_impl_t *extension_class_impl);

extension_class_impl_t *extension_class_impl_parseFromJSON(cJSON *extension_class_implJSON);

cJSON *extension_class_impl_convertToJSON(extension_class_impl_t *extension_class_impl);

#endif /* _extension_class_impl_H_ */

