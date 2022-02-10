/*
 * hudson_master_computerexecutors.h
 *
 * 
 */

#ifndef _hudson_master_computerexecutors_H_
#define _hudson_master_computerexecutors_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct hudson_master_computerexecutors_t hudson_master_computerexecutors_t;

#include "free_style_build.h"



typedef struct hudson_master_computerexecutors_t {
    struct free_style_build_t *current_executable; //model
    int idle; //boolean
    int likely_stuck; //boolean
    int number; //numeric
    int progress; //numeric
    char *_class; // string

} hudson_master_computerexecutors_t;

hudson_master_computerexecutors_t *hudson_master_computerexecutors_create(
    free_style_build_t *current_executable,
    int idle,
    int likely_stuck,
    int number,
    int progress,
    char *_class
);

void hudson_master_computerexecutors_free(hudson_master_computerexecutors_t *hudson_master_computerexecutors);

hudson_master_computerexecutors_t *hudson_master_computerexecutors_parseFromJSON(cJSON *hudson_master_computerexecutorsJSON);

cJSON *hudson_master_computerexecutors_convertToJSON(hudson_master_computerexecutors_t *hudson_master_computerexecutors);

#endif /* _hudson_master_computerexecutors_H_ */

