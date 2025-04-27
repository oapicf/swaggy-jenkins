/*
 * hudson.h
 *
 * 
 */

#ifndef _hudson_H_
#define _hudson_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct hudson_t hudson_t;

#include "all_view.h"
#include "free_style_project.h"
#include "hudsonassigned_labels.h"
#include "unlabeled_load_statistics.h"



typedef struct hudson_t {
    char *_class; // string
    list_t *assigned_labels; //nonprimitive container
    char *mode; // string
    char *node_description; // string
    char *node_name; // string
    int num_executors; //numeric
    char *description; // string
    list_t *jobs; //nonprimitive container
    struct all_view_t *primary_view; //model
    int quieting_down; //boolean
    int slave_agent_port; //numeric
    struct unlabeled_load_statistics_t *unlabeled_load; //model
    int use_crumbs; //boolean
    int use_security; //boolean
    list_t *views; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} hudson_t;

__attribute__((deprecated)) hudson_t *hudson_create(
    char *_class,
    list_t *assigned_labels,
    char *mode,
    char *node_description,
    char *node_name,
    int num_executors,
    char *description,
    list_t *jobs,
    all_view_t *primary_view,
    int quieting_down,
    int slave_agent_port,
    unlabeled_load_statistics_t *unlabeled_load,
    int use_crumbs,
    int use_security,
    list_t *views
);

void hudson_free(hudson_t *hudson);

hudson_t *hudson_parseFromJSON(cJSON *hudsonJSON);

cJSON *hudson_convertToJSON(hudson_t *hudson);

#endif /* _hudson_H_ */

