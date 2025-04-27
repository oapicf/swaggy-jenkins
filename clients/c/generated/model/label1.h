/*
 * label1.h
 *
 * 
 */

#ifndef _label1_H_
#define _label1_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct label1_t label1_t;




typedef struct label1_t {
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} label1_t;

__attribute__((deprecated)) label1_t *label1_create(
    char *_class
);

void label1_free(label1_t *label1);

label1_t *label1_parseFromJSON(cJSON *label1JSON);

cJSON *label1_convertToJSON(label1_t *label1);

#endif /* _label1_H_ */

