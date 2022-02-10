/*
 * queue.h
 *
 * 
 */

#ifndef _queue_H_
#define _queue_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct queue_t queue_t;

#include "queue_blocked_item.h"



typedef struct queue_t {
    char *_class; // string
    list_t *items; //nonprimitive container

} queue_t;

queue_t *queue_create(
    char *_class,
    list_t *items
);

void queue_free(queue_t *queue);

queue_t *queue_parseFromJSON(cJSON *queueJSON);

cJSON *queue_convertToJSON(queue_t *queue);

#endif /* _queue_H_ */

