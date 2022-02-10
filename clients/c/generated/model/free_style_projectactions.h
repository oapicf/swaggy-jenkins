/*
 * free_style_projectactions.h
 *
 * 
 */

#ifndef _free_style_projectactions_H_
#define _free_style_projectactions_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct free_style_projectactions_t free_style_projectactions_t;




typedef struct free_style_projectactions_t {
    char *_class; // string

} free_style_projectactions_t;

free_style_projectactions_t *free_style_projectactions_create(
    char *_class
);

void free_style_projectactions_free(free_style_projectactions_t *free_style_projectactions);

free_style_projectactions_t *free_style_projectactions_parseFromJSON(cJSON *free_style_projectactionsJSON);

cJSON *free_style_projectactions_convertToJSON(free_style_projectactions_t *free_style_projectactions);

#endif /* _free_style_projectactions_H_ */

