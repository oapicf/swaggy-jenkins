/*
 * list_view.h
 *
 * 
 */

#ifndef _list_view_H_
#define _list_view_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct list_view_t list_view_t;

#include "free_style_project.h"



typedef struct list_view_t {
    char *_class; // string
    char *description; // string
    list_t *jobs; //nonprimitive container
    char *name; // string
    char *url; // string

} list_view_t;

list_view_t *list_view_create(
    char *_class,
    char *description,
    list_t *jobs,
    char *name,
    char *url
);

void list_view_free(list_view_t *list_view);

list_view_t *list_view_parseFromJSON(cJSON *list_viewJSON);

cJSON *list_view_convertToJSON(list_view_t *list_view);

#endif /* _list_view_H_ */

