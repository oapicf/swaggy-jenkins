/*
 * extension_class_container_impl1links.h
 *
 * 
 */

#ifndef _extension_class_container_impl1links_H_
#define _extension_class_container_impl1links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct extension_class_container_impl1links_t extension_class_container_impl1links_t;

#include "link.h"



typedef struct extension_class_container_impl1links_t {
    struct link_t *self; //model
    char *_class; // string

} extension_class_container_impl1links_t;

extension_class_container_impl1links_t *extension_class_container_impl1links_create(
    link_t *self,
    char *_class
);

void extension_class_container_impl1links_free(extension_class_container_impl1links_t *extension_class_container_impl1links);

extension_class_container_impl1links_t *extension_class_container_impl1links_parseFromJSON(cJSON *extension_class_container_impl1linksJSON);

cJSON *extension_class_container_impl1links_convertToJSON(extension_class_container_impl1links_t *extension_class_container_impl1links);

#endif /* _extension_class_container_impl1links_H_ */

