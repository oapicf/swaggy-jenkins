/*
 * extension_class_container_impl1.h
 *
 * 
 */

#ifndef _extension_class_container_impl1_H_
#define _extension_class_container_impl1_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct extension_class_container_impl1_t extension_class_container_impl1_t;

#include "extension_class_container_impl1links.h"
#include "extension_class_container_impl1map.h"



typedef struct extension_class_container_impl1_t {
    char *_class; // string
    struct extension_class_container_impl1links_t *_links; //model
    struct extension_class_container_impl1map_t *map; //model

} extension_class_container_impl1_t;

extension_class_container_impl1_t *extension_class_container_impl1_create(
    char *_class,
    extension_class_container_impl1links_t *_links,
    extension_class_container_impl1map_t *map
);

void extension_class_container_impl1_free(extension_class_container_impl1_t *extension_class_container_impl1);

extension_class_container_impl1_t *extension_class_container_impl1_parseFromJSON(cJSON *extension_class_container_impl1JSON);

cJSON *extension_class_container_impl1_convertToJSON(extension_class_container_impl1_t *extension_class_container_impl1);

#endif /* _extension_class_container_impl1_H_ */

