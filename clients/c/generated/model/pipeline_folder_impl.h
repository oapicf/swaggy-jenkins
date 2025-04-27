/*
 * pipeline_folder_impl.h
 *
 * 
 */

#ifndef _pipeline_folder_impl_H_
#define _pipeline_folder_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_folder_impl_t pipeline_folder_impl_t;




typedef struct pipeline_folder_impl_t {
    char *_class; // string
    char *display_name; // string
    char *full_name; // string
    char *name; // string
    char *organization; // string
    int number_of_folders; //numeric
    int number_of_pipelines; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} pipeline_folder_impl_t;

__attribute__((deprecated)) pipeline_folder_impl_t *pipeline_folder_impl_create(
    char *_class,
    char *display_name,
    char *full_name,
    char *name,
    char *organization,
    int number_of_folders,
    int number_of_pipelines
);

void pipeline_folder_impl_free(pipeline_folder_impl_t *pipeline_folder_impl);

pipeline_folder_impl_t *pipeline_folder_impl_parseFromJSON(cJSON *pipeline_folder_implJSON);

cJSON *pipeline_folder_impl_convertToJSON(pipeline_folder_impl_t *pipeline_folder_impl);

#endif /* _pipeline_folder_impl_H_ */

