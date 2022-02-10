/*
 * github_organization.h
 *
 * 
 */

#ifndef _github_organization_H_
#define _github_organization_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_organization_t github_organization_t;

#include "github_organizationlinks.h"



typedef struct github_organization_t {
    char *_class; // string
    struct github_organizationlinks_t *_links; //model
    int jenkins_organization_pipeline; //boolean
    char *name; // string

} github_organization_t;

github_organization_t *github_organization_create(
    char *_class,
    github_organizationlinks_t *_links,
    int jenkins_organization_pipeline,
    char *name
);

void github_organization_free(github_organization_t *github_organization);

github_organization_t *github_organization_parseFromJSON(cJSON *github_organizationJSON);

cJSON *github_organization_convertToJSON(github_organization_t *github_organization);

#endif /* _github_organization_H_ */

