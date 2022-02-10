/*
 * github_repositories.h
 *
 * 
 */

#ifndef _github_repositories_H_
#define _github_repositories_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_repositories_t github_repositories_t;

#include "github_repositorieslinks.h"
#include "github_repository.h"



typedef struct github_repositories_t {
    char *_class; // string
    struct github_repositorieslinks_t *_links; //model
    list_t *items; //nonprimitive container
    int last_page; //numeric
    int next_page; //numeric
    int page_size; //numeric

} github_repositories_t;

github_repositories_t *github_repositories_create(
    char *_class,
    github_repositorieslinks_t *_links,
    list_t *items,
    int last_page,
    int next_page,
    int page_size
);

void github_repositories_free(github_repositories_t *github_repositories);

github_repositories_t *github_repositories_parseFromJSON(cJSON *github_repositoriesJSON);

cJSON *github_repositories_convertToJSON(github_repositories_t *github_repositories);

#endif /* _github_repositories_H_ */

