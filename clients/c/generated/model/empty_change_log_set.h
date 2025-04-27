/*
 * empty_change_log_set.h
 *
 * 
 */

#ifndef _empty_change_log_set_H_
#define _empty_change_log_set_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct empty_change_log_set_t empty_change_log_set_t;




typedef struct empty_change_log_set_t {
    char *_class; // string
    char *kind; // string

    int _library_owned; // Is the library responsible for freeing this object?
} empty_change_log_set_t;

__attribute__((deprecated)) empty_change_log_set_t *empty_change_log_set_create(
    char *_class,
    char *kind
);

void empty_change_log_set_free(empty_change_log_set_t *empty_change_log_set);

empty_change_log_set_t *empty_change_log_set_parseFromJSON(cJSON *empty_change_log_setJSON);

cJSON *empty_change_log_set_convertToJSON(empty_change_log_set_t *empty_change_log_set);

#endif /* _empty_change_log_set_H_ */

