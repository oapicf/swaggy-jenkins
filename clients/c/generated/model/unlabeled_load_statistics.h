/*
 * unlabeled_load_statistics.h
 *
 * 
 */

#ifndef _unlabeled_load_statistics_H_
#define _unlabeled_load_statistics_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct unlabeled_load_statistics_t unlabeled_load_statistics_t;




typedef struct unlabeled_load_statistics_t {
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} unlabeled_load_statistics_t;

__attribute__((deprecated)) unlabeled_load_statistics_t *unlabeled_load_statistics_create(
    char *_class
);

void unlabeled_load_statistics_free(unlabeled_load_statistics_t *unlabeled_load_statistics);

unlabeled_load_statistics_t *unlabeled_load_statistics_parseFromJSON(cJSON *unlabeled_load_statisticsJSON);

cJSON *unlabeled_load_statistics_convertToJSON(unlabeled_load_statistics_t *unlabeled_load_statistics);

#endif /* _unlabeled_load_statistics_H_ */

