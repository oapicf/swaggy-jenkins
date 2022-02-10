/*
 * default_crumb_issuer.h
 *
 * 
 */

#ifndef _default_crumb_issuer_H_
#define _default_crumb_issuer_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct default_crumb_issuer_t default_crumb_issuer_t;




typedef struct default_crumb_issuer_t {
    char *_class; // string
    char *crumb; // string
    char *crumb_request_field; // string

} default_crumb_issuer_t;

default_crumb_issuer_t *default_crumb_issuer_create(
    char *_class,
    char *crumb,
    char *crumb_request_field
);

void default_crumb_issuer_free(default_crumb_issuer_t *default_crumb_issuer);

default_crumb_issuer_t *default_crumb_issuer_parseFromJSON(cJSON *default_crumb_issuerJSON);

cJSON *default_crumb_issuer_convertToJSON(default_crumb_issuer_t *default_crumb_issuer);

#endif /* _default_crumb_issuer_H_ */

