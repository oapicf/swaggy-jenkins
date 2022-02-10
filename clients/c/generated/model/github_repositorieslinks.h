/*
 * github_repositorieslinks.h
 *
 * 
 */

#ifndef _github_repositorieslinks_H_
#define _github_repositorieslinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_repositorieslinks_t github_repositorieslinks_t;

#include "link.h"



typedef struct github_repositorieslinks_t {
    struct link_t *self; //model
    char *_class; // string

} github_repositorieslinks_t;

github_repositorieslinks_t *github_repositorieslinks_create(
    link_t *self,
    char *_class
);

void github_repositorieslinks_free(github_repositorieslinks_t *github_repositorieslinks);

github_repositorieslinks_t *github_repositorieslinks_parseFromJSON(cJSON *github_repositorieslinksJSON);

cJSON *github_repositorieslinks_convertToJSON(github_repositorieslinks_t *github_repositorieslinks);

#endif /* _github_repositorieslinks_H_ */

