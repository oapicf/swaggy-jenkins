/*
 * string_parameter_definition.h
 *
 * 
 */

#ifndef _string_parameter_definition_H_
#define _string_parameter_definition_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct string_parameter_definition_t string_parameter_definition_t;

#include "string_parameter_value.h"



typedef struct string_parameter_definition_t {
    char *_class; // string
    struct string_parameter_value_t *default_parameter_value; //model
    char *description; // string
    char *name; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} string_parameter_definition_t;

__attribute__((deprecated)) string_parameter_definition_t *string_parameter_definition_create(
    char *_class,
    string_parameter_value_t *default_parameter_value,
    char *description,
    char *name,
    char *type
);

void string_parameter_definition_free(string_parameter_definition_t *string_parameter_definition);

string_parameter_definition_t *string_parameter_definition_parseFromJSON(cJSON *string_parameter_definitionJSON);

cJSON *string_parameter_definition_convertToJSON(string_parameter_definition_t *string_parameter_definition);

#endif /* _string_parameter_definition_H_ */

