/*
 * queue_item_impl.h
 *
 * 
 */

#ifndef _queue_item_impl_H_
#define _queue_item_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct queue_item_impl_t queue_item_impl_t;




typedef struct queue_item_impl_t {
    char *_class; // string
    int expected_build_number; //numeric
    char *id; // string
    char *pipeline; // string
    int queued_time; //numeric

} queue_item_impl_t;

queue_item_impl_t *queue_item_impl_create(
    char *_class,
    int expected_build_number,
    char *id,
    char *pipeline,
    int queued_time
);

void queue_item_impl_free(queue_item_impl_t *queue_item_impl);

queue_item_impl_t *queue_item_impl_parseFromJSON(cJSON *queue_item_implJSON);

cJSON *queue_item_impl_convertToJSON(queue_item_impl_t *queue_item_impl);

#endif /* _queue_item_impl_H_ */

