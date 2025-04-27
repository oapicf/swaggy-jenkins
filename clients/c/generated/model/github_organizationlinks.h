/*
 * github_organizationlinks.h
 *
 * 
 */

#ifndef _github_organizationlinks_H_
#define _github_organizationlinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_organizationlinks_t github_organizationlinks_t;

#include "link.h"



typedef struct github_organizationlinks_t {
    struct link_t *repositories; //model
    struct link_t *self; //model
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} github_organizationlinks_t;

__attribute__((deprecated)) github_organizationlinks_t *github_organizationlinks_create(
    link_t *repositories,
    link_t *self,
    char *_class
);

void github_organizationlinks_free(github_organizationlinks_t *github_organizationlinks);

github_organizationlinks_t *github_organizationlinks_parseFromJSON(cJSON *github_organizationlinksJSON);

cJSON *github_organizationlinks_convertToJSON(github_organizationlinks_t *github_organizationlinks);

#endif /* _github_organizationlinks_H_ */

