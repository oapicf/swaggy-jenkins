/*
 * branch_impl.h
 *
 * 
 */

#ifndef _branch_impl_H_
#define _branch_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct branch_impl_t branch_impl_t;

#include "branch_impllinks.h"
#include "branch_implpermissions.h"
#include "pipeline_run_impl.h"
#include "string_parameter_definition.h"



typedef struct branch_impl_t {
    char *_class; // string
    char *display_name; // string
    int estimated_duration_in_millis; //numeric
    char *full_display_name; // string
    char *full_name; // string
    char *name; // string
    char *organization; // string
    list_t *parameters; //nonprimitive container
    struct branch_implpermissions_t *permissions; //model
    int weather_score; //numeric
    char *pull_request; // string
    struct branch_impllinks_t *_links; //model
    struct pipeline_run_impl_t *latest_run; //model

} branch_impl_t;

branch_impl_t *branch_impl_create(
    char *_class,
    char *display_name,
    int estimated_duration_in_millis,
    char *full_display_name,
    char *full_name,
    char *name,
    char *organization,
    list_t *parameters,
    branch_implpermissions_t *permissions,
    int weather_score,
    char *pull_request,
    branch_impllinks_t *_links,
    pipeline_run_impl_t *latest_run
);

void branch_impl_free(branch_impl_t *branch_impl);

branch_impl_t *branch_impl_parseFromJSON(cJSON *branch_implJSON);

cJSON *branch_impl_convertToJSON(branch_impl_t *branch_impl);

#endif /* _branch_impl_H_ */

