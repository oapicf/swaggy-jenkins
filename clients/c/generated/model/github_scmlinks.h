/*
 * github_scmlinks.h
 *
 * 
 */

#ifndef _github_scmlinks_H_
#define _github_scmlinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_scmlinks_t github_scmlinks_t;

#include "link.h"



typedef struct github_scmlinks_t {
    struct link_t *self; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} github_scmlinks_t;

__attribute__((deprecated)) github_scmlinks_t *github_scmlinks_create(
    link_t *self,
    char *_class
);

void github_scmlinks_free(github_scmlinks_t *github_scmlinks);

github_scmlinks_t *github_scmlinks_parseFromJSON(cJSON *github_scmlinksJSON);

cJSON *github_scmlinks_convertToJSON(github_scmlinks_t *github_scmlinks);

#endif /* _github_scmlinks_H_ */

