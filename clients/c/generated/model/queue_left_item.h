/*
 * queue_left_item.h
 *
 * 
 */

#ifndef _queue_left_item_H_
#define _queue_left_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct queue_left_item_t queue_left_item_t;

#include "cause_action.h"
#include "free_style_build.h"
#include "free_style_project.h"



typedef struct queue_left_item_t {
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
    int cancelled; //boolean
    struct free_style_build_t *executable; //model

    int _library_owned; // Is the library responsible for freeing this object?
} queue_left_item_t;

__attribute__((deprecated)) queue_left_item_t *queue_left_item_create(
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
    int cancelled,
    free_style_build_t *executable
);

void queue_left_item_free(queue_left_item_t *queue_left_item);

queue_left_item_t *queue_left_item_parseFromJSON(cJSON *queue_left_itemJSON);

cJSON *queue_left_item_convertToJSON(queue_left_item_t *queue_left_item);

#endif /* _queue_left_item_H_ */

