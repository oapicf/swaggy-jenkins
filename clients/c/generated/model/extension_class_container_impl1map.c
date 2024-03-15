#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "extension_class_container_impl1map.h"



extension_class_container_impl1map_t *extension_class_container_impl1map_create(
    extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_pipeline_impl,
    extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl,
    char *_class
    ) {
    extension_class_container_impl1map_t *extension_class_container_impl1map_local_var = malloc(sizeof(extension_class_container_impl1map_t));
    if (!extension_class_container_impl1map_local_var) {
        return NULL;
    }
    extension_class_container_impl1map_local_var->io_jenkins_blueocean_service_embedded_rest_pipeline_impl = io_jenkins_blueocean_service_embedded_rest_pipeline_impl;
    extension_class_container_impl1map_local_var->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl = io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl;
    extension_class_container_impl1map_local_var->_class = _class;

    return extension_class_container_impl1map_local_var;
}


void extension_class_container_impl1map_free(extension_class_container_impl1map_t *extension_class_container_impl1map) {
    if(NULL == extension_class_container_impl1map){
        return ;
    }
    listEntry_t *listEntry;
    if (extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl) {
        extension_class_impl_free(extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl);
        extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl = NULL;
    }
    if (extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl) {
        extension_class_impl_free(extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl);
        extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl = NULL;
    }
    if (extension_class_container_impl1map->_class) {
        free(extension_class_container_impl1map->_class);
        extension_class_container_impl1map->_class = NULL;
    }
    free(extension_class_container_impl1map);
}

cJSON *extension_class_container_impl1map_convertToJSON(extension_class_container_impl1map_t *extension_class_container_impl1map) {
    cJSON *item = cJSON_CreateObject();

    // extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl
    if(extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl) {
    cJSON *io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_JSON = extension_class_impl_convertToJSON(extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl);
    if(io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "io.jenkins.blueocean.service.embedded.rest.PipelineImpl", io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl
    if(extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl) {
    cJSON *io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_JSON = extension_class_impl_convertToJSON(extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl);
    if(io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl", io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // extension_class_container_impl1map->_class
    if(extension_class_container_impl1map->_class) {
    if(cJSON_AddStringToObject(item, "_class", extension_class_container_impl1map->_class) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

extension_class_container_impl1map_t *extension_class_container_impl1map_parseFromJSON(cJSON *extension_class_container_impl1mapJSON){

    extension_class_container_impl1map_t *extension_class_container_impl1map_local_var = NULL;

    // define the local variable for extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl
    extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_nonprim = NULL;

    // define the local variable for extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl
    extension_class_impl_t *io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_nonprim = NULL;

    // extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_pipeline_impl
    cJSON *io_jenkins_blueocean_service_embedded_rest_pipeline_impl = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1mapJSON, "io.jenkins.blueocean.service.embedded.rest.PipelineImpl");
    if (io_jenkins_blueocean_service_embedded_rest_pipeline_impl) { 
    io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_nonprim = extension_class_impl_parseFromJSON(io_jenkins_blueocean_service_embedded_rest_pipeline_impl); //nonprimitive
    }

    // extension_class_container_impl1map->io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl
    cJSON *io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1mapJSON, "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl");
    if (io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl) { 
    io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_nonprim = extension_class_impl_parseFromJSON(io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl); //nonprimitive
    }

    // extension_class_container_impl1map->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(extension_class_container_impl1mapJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    extension_class_container_impl1map_local_var = extension_class_container_impl1map_create (
        io_jenkins_blueocean_service_embedded_rest_pipeline_impl ? io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_nonprim : NULL,
        io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl ? io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_nonprim : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return extension_class_container_impl1map_local_var;
end:
    if (io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_nonprim) {
        extension_class_impl_free(io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_nonprim);
        io_jenkins_blueocean_service_embedded_rest_pipeline_impl_local_nonprim = NULL;
    }
    if (io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_nonprim) {
        extension_class_impl_free(io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_nonprim);
        io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl_local_nonprim = NULL;
    }
    return NULL;

}
