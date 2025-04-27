/*
 * extension_class_container_impl1map.h
 *
 * 
 */

#ifndef _extension_class_container_impl1map_H_
#define _extension_class_container_impl1map_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct extension_class_container_impl1map_t extension_class_container_impl1map_t;

#include "extension_class_impl.h"



typedef struct extension_class_container_impl1map_t {
    struct extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_pipeline_impl; //model
    struct extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} extension_class_container_impl1map_t;

__attribute__((deprecated)) extension_class_container_impl1map_t *extension_class_container_impl1map_create(
    extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_pipeline_impl,
    extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl,
    char *_class
);

void extension_class_container_impl1map_free(extension_class_container_impl1map_t *extension_class_container_impl1map);

extension_class_container_impl1map_t *extension_class_container_impl1map_parseFromJSON(cJSON *extension_class_container_impl1mapJSON);

cJSON *extension_class_container_impl1map_convertToJSON(extension_class_container_impl1map_t *extension_class_container_impl1map);

#endif /* _extension_class_container_impl1map_H_ */

