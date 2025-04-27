/*
 * free_style_project.h
 *
 * 
 */

#ifndef _free_style_project_H_
#define _free_style_project_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct free_style_project_t free_style_project_t;

#include "free_style_build.h"
#include "free_style_projectactions.h"
#include "free_style_projecthealth_report.h"
#include "null_scm.h"



typedef struct free_style_project_t {
    char *_class; // string
    char *name; // string
    char *url; // string
    char *color; // string
    list_t *actions; //nonprimitive container
    char *description; // string
    char *display_name; // string
    char *display_name_or_null; // string
    char *full_display_name; // string
    char *full_name; // string
    int buildable; //boolean
    list_t *builds; //nonprimitive container
    struct free_style_build_t *first_build; //model
    list_t *health_report; //nonprimitive container
    int in_queue; //boolean
    int keep_dependencies; //boolean
    struct free_style_build_t *last_build; //model
    struct free_style_build_t *last_completed_build; //model
    char *last_failed_build; // string
    struct free_style_build_t *last_stable_build; //model
    struct free_style_build_t *last_successful_build; //model
    char *last_unstable_build; // string
    char *last_unsuccessful_build; // string
    int next_build_number; //numeric
    char *queue_item; // string
    int concurrent_build; //boolean
    struct null_scm_t *scm; //model

    int _library_owned; // Is the library responsible for freeing this object?
} free_style_project_t;

__attribute__((deprecated)) free_style_project_t *free_style_project_create(
    char *_class,
    char *name,
    char *url,
    char *color,
    list_t *actions,
    char *description,
    char *display_name,
    char *display_name_or_null,
    char *full_display_name,
    char *full_name,
    int buildable,
    list_t *builds,
    free_style_build_t *first_build,
    list_t *health_report,
    int in_queue,
    int keep_dependencies,
    free_style_build_t *last_build,
    free_style_build_t *last_completed_build,
    char *last_failed_build,
    free_style_build_t *last_stable_build,
    free_style_build_t *last_successful_build,
    char *last_unstable_build,
    char *last_unsuccessful_build,
    int next_build_number,
    char *queue_item,
    int concurrent_build,
    null_scm_t *scm
);

void free_style_project_free(free_style_project_t *free_style_project);

free_style_project_t *free_style_project_parseFromJSON(cJSON *free_style_projectJSON);

cJSON *free_style_project_convertToJSON(free_style_project_t *free_style_project);

#endif /* _free_style_project_H_ */

