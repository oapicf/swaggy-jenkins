/*
 * string_parameter_value.h
 *
 * 
 */

#ifndef _string_parameter_value_H_
#define _string_parameter_value_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct string_parameter_value_t string_parameter_value_t;




typedef struct string_parameter_value_t {
    char *_class; // string
    char *name; // string
    char *value; // string

} string_parameter_value_t;

string_parameter_value_t *string_parameter_value_create(
    char *_class,
    char *name,
    char *value
);

void string_parameter_value_free(string_parameter_value_t *string_parameter_value);

string_parameter_value_t *string_parameter_value_parseFromJSON(cJSON *string_parameter_valueJSON);

cJSON *string_parameter_value_convertToJSON(string_parameter_value_t *string_parameter_value);

#endif /* _string_parameter_value_H_ */

