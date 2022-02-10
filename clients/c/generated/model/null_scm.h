/*
 * null_scm.h
 *
 * 
 */

#ifndef _null_scm_H_
#define _null_scm_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct null_scm_t null_scm_t;




typedef struct null_scm_t {
    char *_class; // string

} null_scm_t;

null_scm_t *null_scm_create(
    char *_class
);

void null_scm_free(null_scm_t *null_scm);

null_scm_t *null_scm_parseFromJSON(cJSON *null_scmJSON);

cJSON *null_scm_convertToJSON(null_scm_t *null_scm);

#endif /* _null_scm_H_ */

