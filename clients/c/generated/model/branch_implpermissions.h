/*
 * branch_implpermissions.h
 *
 * 
 */

#ifndef _branch_implpermissions_H_
#define _branch_implpermissions_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct branch_implpermissions_t branch_implpermissions_t;




typedef struct branch_implpermissions_t {
    int create; //boolean
    int read; //boolean
    int start; //boolean
    int stop; //boolean
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} branch_implpermissions_t;

__attribute__((deprecated)) branch_implpermissions_t *branch_implpermissions_create(
    int create,
    int read,
    int start,
    int stop,
    char *_class
);

void branch_implpermissions_free(branch_implpermissions_t *branch_implpermissions);

branch_implpermissions_t *branch_implpermissions_parseFromJSON(cJSON *branch_implpermissionsJSON);

cJSON *branch_implpermissions_convertToJSON(branch_implpermissions_t *branch_implpermissions);

#endif /* _branch_implpermissions_H_ */

