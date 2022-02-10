/*
 * github_repositorylinks.h
 *
 * 
 */

#ifndef _github_repositorylinks_H_
#define _github_repositorylinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_repositorylinks_t github_repositorylinks_t;

#include "link.h"



typedef struct github_repositorylinks_t {
    struct link_t *self; //model
    char *_class; // string

} github_repositorylinks_t;

github_repositorylinks_t *github_repositorylinks_create(
    link_t *self,
    char *_class
);

void github_repositorylinks_free(github_repositorylinks_t *github_repositorylinks);

github_repositorylinks_t *github_repositorylinks_parseFromJSON(cJSON *github_repositorylinksJSON);

cJSON *github_repositorylinks_convertToJSON(github_repositorylinks_t *github_repositorylinks);

#endif /* _github_repositorylinks_H_ */

