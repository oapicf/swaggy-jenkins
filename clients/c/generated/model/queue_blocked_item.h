/*
 * queue_blocked_item.h
 *
 * 
 */

#ifndef _queue_blocked_item_H_
#define _queue_blocked_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct queue_blocked_item_t queue_blocked_item_t;

#include "cause_action.h"
#include "free_style_project.h"



typedef struct queue_blocked_item_t {
    char *_class; // string
    list_t *actions; //nonprimitive container
    int blocked; //boolean
    int buildable; //boolean
    int id; //numeric
    int in_queue_since; //numeric
    char *params; // string
    int stuck; //boolean
    struct free_style_project_t *task; //model
    char *url; // string
    char *why; // string
    int buildable_start_milliseconds; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} queue_blocked_item_t;

__attribute__((deprecated)) queue_blocked_item_t *queue_blocked_item_create(
    char *_class,
    list_t *actions,
    int blocked,
    int buildable,
    int id,
    int in_queue_since,
    char *params,
    int stuck,
    free_style_project_t *task,
    char *url,
    char *why,
    int buildable_start_milliseconds
);

void queue_blocked_item_free(queue_blocked_item_t *queue_blocked_item);

queue_blocked_item_t *queue_blocked_item_parseFromJSON(cJSON *queue_blocked_itemJSON);

cJSON *queue_blocked_item_convertToJSON(queue_blocked_item_t *queue_blocked_item);

#endif /* _queue_blocked_item_H_ */

