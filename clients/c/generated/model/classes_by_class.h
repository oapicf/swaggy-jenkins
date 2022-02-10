/*
 * classes_by_class.h
 *
 * 
 */

#ifndef _classes_by_class_H_
#define _classes_by_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct classes_by_class_t classes_by_class_t;




typedef struct classes_by_class_t {
    list_t *classes; //primitive container
    char *_class; // string

} classes_by_class_t;

classes_by_class_t *classes_by_class_create(
    list_t *classes,
    char *_class
);

void classes_by_class_free(classes_by_class_t *classes_by_class);

classes_by_class_t *classes_by_class_parseFromJSON(cJSON *classes_by_classJSON);

cJSON *classes_by_class_convertToJSON(classes_by_class_t *classes_by_class);

#endif /* _classes_by_class_H_ */

