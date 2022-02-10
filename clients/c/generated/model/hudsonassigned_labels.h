/*
 * hudsonassigned_labels.h
 *
 * 
 */

#ifndef _hudsonassigned_labels_H_
#define _hudsonassigned_labels_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct hudsonassigned_labels_t hudsonassigned_labels_t;




typedef struct hudsonassigned_labels_t {
    char *_class; // string

} hudsonassigned_labels_t;

hudsonassigned_labels_t *hudsonassigned_labels_create(
    char *_class
);

void hudsonassigned_labels_free(hudsonassigned_labels_t *hudsonassigned_labels);

hudsonassigned_labels_t *hudsonassigned_labels_parseFromJSON(cJSON *hudsonassigned_labelsJSON);

cJSON *hudsonassigned_labels_convertToJSON(hudsonassigned_labels_t *hudsonassigned_labels);

#endif /* _hudsonassigned_labels_H_ */

