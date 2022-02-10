/*
 * free_style_build.h
 *
 * 
 */

#ifndef _free_style_build_H_
#define _free_style_build_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct free_style_build_t free_style_build_t;

#include "cause_action.h"
#include "empty_change_log_set.h"



typedef struct free_style_build_t {
    char *_class; // string
    int number; //numeric
    char *url; // string
    list_t *actions; //nonprimitive container
    int building; //boolean
    char *description; // string
    char *display_name; // string
    int duration; //numeric
    int estimated_duration; //numeric
    char *executor; // string
    char *full_display_name; // string
    char *id; // string
    int keep_log; //boolean
    int queue_id; //numeric
    char *result; // string
    int timestamp; //numeric
    char *built_on; // string
    struct empty_change_log_set_t *change_set; //model

} free_style_build_t;

free_style_build_t *free_style_build_create(
    char *_class,
    int number,
    char *url,
    list_t *actions,
    int building,
    char *description,
    char *display_name,
    int duration,
    int estimated_duration,
    char *executor,
    char *full_display_name,
    char *id,
    int keep_log,
    int queue_id,
    char *result,
    int timestamp,
    char *built_on,
    empty_change_log_set_t *change_set
);

void free_style_build_free(free_style_build_t *free_style_build);

free_style_build_t *free_style_build_parseFromJSON(cJSON *free_style_buildJSON);

cJSON *free_style_build_convertToJSON(free_style_build_t *free_style_build);

#endif /* _free_style_build_H_ */

