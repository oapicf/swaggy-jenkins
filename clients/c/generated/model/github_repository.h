/*
 * github_repository.h
 *
 * 
 */

#ifndef _github_repository_H_
#define _github_repository_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_repository_t github_repository_t;

#include "github_repositorylinks.h"
#include "github_repositorypermissions.h"



typedef struct github_repository_t {
    char *_class; // string
    struct github_repositorylinks_t *_links; //model
    char *default_branch; // string
    char *description; // string
    char *name; // string
    struct github_repositorypermissions_t *permissions; //model
    int _private; //boolean
    char *full_name; // string

} github_repository_t;

github_repository_t *github_repository_create(
    char *_class,
    github_repositorylinks_t *_links,
    char *default_branch,
    char *description,
    char *name,
    github_repositorypermissions_t *permissions,
    int _private,
    char *full_name
);

void github_repository_free(github_repository_t *github_repository);

github_repository_t *github_repository_parseFromJSON(cJSON *github_repositoryJSON);

cJSON *github_repository_convertToJSON(github_repository_t *github_repository);

#endif /* _github_repository_H_ */

