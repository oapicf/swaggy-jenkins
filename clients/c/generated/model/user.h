/*
 * user.h
 *
 * 
 */

#ifndef _user_H_
#define _user_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_t user_t;




typedef struct user_t {
    char *_class; // string
    char *id; // string
    char *full_name; // string
    char *email; // string
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} user_t;

__attribute__((deprecated)) user_t *user_create(
    char *_class,
    char *id,
    char *full_name,
    char *email,
    char *name
);

void user_free(user_t *user);

user_t *user_parseFromJSON(cJSON *userJSON);

cJSON *user_convertToJSON(user_t *user);

#endif /* _user_H_ */

