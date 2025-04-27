/*
 * organisation.h
 *
 * 
 */

#ifndef _organisation_H_
#define _organisation_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct organisation_t organisation_t;




typedef struct organisation_t {
    char *_class; // string
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} organisation_t;

__attribute__((deprecated)) organisation_t *organisation_create(
    char *_class,
    char *name
);

void organisation_free(organisation_t *organisation);

organisation_t *organisation_parseFromJSON(cJSON *organisationJSON);

cJSON *organisation_convertToJSON(organisation_t *organisation);

#endif /* _organisation_H_ */

