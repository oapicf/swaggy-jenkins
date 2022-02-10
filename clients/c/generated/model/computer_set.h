/*
 * computer_set.h
 *
 * 
 */

#ifndef _computer_set_H_
#define _computer_set_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct computer_set_t computer_set_t;

#include "hudson_master_computer.h"



typedef struct computer_set_t {
    char *_class; // string
    int busy_executors; //numeric
    list_t *computer; //nonprimitive container
    char *display_name; // string
    int total_executors; //numeric

} computer_set_t;

computer_set_t *computer_set_create(
    char *_class,
    int busy_executors,
    list_t *computer,
    char *display_name,
    int total_executors
);

void computer_set_free(computer_set_t *computer_set);

computer_set_t *computer_set_parseFromJSON(cJSON *computer_setJSON);

cJSON *computer_set_convertToJSON(computer_set_t *computer_set);

#endif /* _computer_set_H_ */

