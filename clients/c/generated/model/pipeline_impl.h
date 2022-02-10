/*
 * pipeline_impl.h
 *
 * 
 */

#ifndef _pipeline_impl_H_
#define _pipeline_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipeline_impl_t pipeline_impl_t;

#include "pipeline_impllinks.h"



typedef struct pipeline_impl_t {
    char *_class; // string
    char *display_name; // string
    int estimated_duration_in_millis; //numeric
    char *full_name; // string
    char *latest_run; // string
    char *name; // string
    char *organization; // string
    int weather_score; //numeric
    struct pipeline_impllinks_t *_links; //model

} pipeline_impl_t;

pipeline_impl_t *pipeline_impl_create(
    char *_class,
    char *display_name,
    int estimated_duration_in_millis,
    char *full_name,
    char *latest_run,
    char *name,
    char *organization,
    int weather_score,
    pipeline_impllinks_t *_links
);

void pipeline_impl_free(pipeline_impl_t *pipeline_impl);

pipeline_impl_t *pipeline_impl_parseFromJSON(cJSON *pipeline_implJSON);

cJSON *pipeline_impl_convertToJSON(pipeline_impl_t *pipeline_impl);

#endif /* _pipeline_impl_H_ */

