/*
 * cause_user_id_cause.h
 *
 * 
 */

#ifndef _cause_user_id_cause_H_
#define _cause_user_id_cause_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cause_user_id_cause_t cause_user_id_cause_t;




typedef struct cause_user_id_cause_t {
    char *_class; // string
    char *short_description; // string
    char *user_id; // string
    char *user_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cause_user_id_cause_t;

__attribute__((deprecated)) cause_user_id_cause_t *cause_user_id_cause_create(
    char *_class,
    char *short_description,
    char *user_id,
    char *user_name
);

void cause_user_id_cause_free(cause_user_id_cause_t *cause_user_id_cause);

cause_user_id_cause_t *cause_user_id_cause_parseFromJSON(cJSON *cause_user_id_causeJSON);

cJSON *cause_user_id_cause_convertToJSON(cause_user_id_cause_t *cause_user_id_cause);

#endif /* _cause_user_id_cause_H_ */

