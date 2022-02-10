/*
 * github_respository_containerlinks.h
 *
 * 
 */

#ifndef _github_respository_containerlinks_H_
#define _github_respository_containerlinks_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_respository_containerlinks_t github_respository_containerlinks_t;

#include "link.h"



typedef struct github_respository_containerlinks_t {
    struct link_t *self; //model
    char *_class; // string

} github_respository_containerlinks_t;

github_respository_containerlinks_t *github_respository_containerlinks_create(
    link_t *self,
    char *_class
);

void github_respository_containerlinks_free(github_respository_containerlinks_t *github_respository_containerlinks);

github_respository_containerlinks_t *github_respository_containerlinks_parseFromJSON(cJSON *github_respository_containerlinksJSON);

cJSON *github_respository_containerlinks_convertToJSON(github_respository_containerlinks_t *github_respository_containerlinks);

#endif /* _github_respository_containerlinks_H_ */

