/*
 * github_scm.h
 *
 * 
 */

#ifndef _github_scm_H_
#define _github_scm_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_scm_t github_scm_t;

#include "github_scmlinks.h"



typedef struct github_scm_t {
    char *_class; // string
    struct github_scmlinks_t *_links; //model
    char *credential_id; // string
    char *id; // string
    char *uri; // string

} github_scm_t;

github_scm_t *github_scm_create(
    char *_class,
    github_scmlinks_t *_links,
    char *credential_id,
    char *id,
    char *uri
);

void github_scm_free(github_scm_t *github_scm);

github_scm_t *github_scm_parseFromJSON(cJSON *github_scmJSON);

cJSON *github_scm_convertToJSON(github_scm_t *github_scm);

#endif /* _github_scm_H_ */

