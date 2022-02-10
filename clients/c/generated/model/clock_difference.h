/*
 * clock_difference.h
 *
 * 
 */

#ifndef _clock_difference_H_
#define _clock_difference_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct clock_difference_t clock_difference_t;




typedef struct clock_difference_t {
    char *_class; // string
    int diff; //numeric

} clock_difference_t;

clock_difference_t *clock_difference_create(
    char *_class,
    int diff
);

void clock_difference_free(clock_difference_t *clock_difference);

clock_difference_t *clock_difference_parseFromJSON(cJSON *clock_differenceJSON);

cJSON *clock_difference_convertToJSON(clock_difference_t *clock_difference);

#endif /* _clock_difference_H_ */

