/*
 * github_respository_container.h
 *
 * 
 */

#ifndef _github_respository_container_H_
#define _github_respository_container_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_respository_container_t github_respository_container_t;

#include "github_repositories.h"
#include "github_respository_containerlinks.h"



typedef struct github_respository_container_t {
    char *_class; // string
    struct github_respository_containerlinks_t *_links; //model
    struct github_repositories_t *repositories; //model

    int _library_owned; // Is the library responsible for freeing this object?
} github_respository_container_t;

__attribute__((deprecated)) github_respository_container_t *github_respository_container_create(
    char *_class,
    github_respository_containerlinks_t *_links,
    github_repositories_t *repositories
);

void github_respository_container_free(github_respository_container_t *github_respository_container);

github_respository_container_t *github_respository_container_parseFromJSON(cJSON *github_respository_containerJSON);

cJSON *github_respository_container_convertToJSON(github_respository_container_t *github_respository_container);

#endif /* _github_respository_container_H_ */

