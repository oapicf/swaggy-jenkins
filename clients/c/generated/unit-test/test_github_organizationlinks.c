#ifndef github_organizationlinks_TEST
#define github_organizationlinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_organizationlinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_organizationlinks.h"
github_organizationlinks_t* instantiate_github_organizationlinks(int include_optional);

#include "test_link.c"
#include "test_link.c"


github_organizationlinks_t* instantiate_github_organizationlinks(int include_optional) {
  github_organizationlinks_t* github_organizationlinks = NULL;
  if (include_optional) {
    github_organizationlinks = github_organizationlinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    github_organizationlinks = github_organizationlinks_create(
      NULL,
      NULL,
      "0"
    );
  }

  return github_organizationlinks;
}


#ifdef github_organizationlinks_MAIN

void test_github_organizationlinks(int include_optional) {
    github_organizationlinks_t* github_organizationlinks_1 = instantiate_github_organizationlinks(include_optional);

	cJSON* jsongithub_organizationlinks_1 = github_organizationlinks_convertToJSON(github_organizationlinks_1);
	printf("github_organizationlinks :\n%s\n", cJSON_Print(jsongithub_organizationlinks_1));
	github_organizationlinks_t* github_organizationlinks_2 = github_organizationlinks_parseFromJSON(jsongithub_organizationlinks_1);
	cJSON* jsongithub_organizationlinks_2 = github_organizationlinks_convertToJSON(github_organizationlinks_2);
	printf("repeating github_organizationlinks:\n%s\n", cJSON_Print(jsongithub_organizationlinks_2));
}

int main() {
  test_github_organizationlinks(1);
  test_github_organizationlinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_organizationlinks_MAIN
#endif // github_organizationlinks_TEST
