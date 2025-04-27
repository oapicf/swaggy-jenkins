/*
 * github_repositorypermissions.h
 *
 * 
 */

#ifndef _github_repositorypermissions_H_
#define _github_repositorypermissions_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_repositorypermissions_t github_repositorypermissions_t;




typedef struct github_repositorypermissions_t {
    int admin; //boolean
    int push; //boolean
    int pull; //boolean
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} github_repositorypermissions_t;

__attribute__((deprecated)) github_repositorypermissions_t *github_repositorypermissions_create(
    int admin,
    int push,
    int pull,
    char *_class
);

void github_repositorypermissions_free(github_repositorypermissions_t *github_repositorypermissions);

github_repositorypermissions_t *github_repositorypermissions_parseFromJSON(cJSON *github_repositorypermissionsJSON);

cJSON *github_repositorypermissions_convertToJSON(github_repositorypermissions_t *github_repositorypermissions);

#endif /* _github_repositorypermissions_H_ */

