/*
 * favorite_impl.h
 *
 * 
 */

#ifndef _favorite_impl_H_
#define _favorite_impl_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct favorite_impl_t favorite_impl_t;

#include "favorite_impllinks.h"
#include "pipeline_impl.h"



typedef struct favorite_impl_t {
    char *_class; // string
    struct favorite_impllinks_t *_links; //model
    struct pipeline_impl_t *item; //model

} favorite_impl_t;

favorite_impl_t *favorite_impl_create(
    char *_class,
    favorite_impllinks_t *_links,
    pipeline_impl_t *item
);

void favorite_impl_free(favorite_impl_t *favorite_impl);

favorite_impl_t *favorite_impl_parseFromJSON(cJSON *favorite_implJSON);

cJSON *favorite_impl_convertToJSON(favorite_impl_t *favorite_impl);

#endif /* _favorite_impl_H_ */

