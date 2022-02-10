/*
 * cause_action.h
 *
 * 
 */

#ifndef _cause_action_H_
#define _cause_action_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cause_action_t cause_action_t;

#include "cause_user_id_cause.h"



typedef struct cause_action_t {
    char *_class; // string
    list_t *causes; //nonprimitive container

} cause_action_t;

cause_action_t *cause_action_create(
    char *_class,
    list_t *causes
);

void cause_action_free(cause_action_t *cause_action);

cause_action_t *cause_action_parseFromJSON(cJSON *cause_actionJSON);

cJSON *cause_action_convertToJSON(cause_action_t *cause_action);

#endif /* _cause_action_H_ */

