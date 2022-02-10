#ifndef github_organization_TEST
#define github_organization_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_organization_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_organization.h"
github_organization_t* instantiate_github_organization(int include_optional);

#include "test_github_organizationlinks.c"


github_organization_t* instantiate_github_organization(int include_optional) {
  github_organization_t* github_organization = NULL;
  if (include_optional) {
    github_organization = github_organization_create(
      "0",
       // false, not to have infinite recursion
      instantiate_github_organizationlinks(0),
      1,
      "0"
    );
  } else {
    github_organization = github_organization_create(
      "0",
      NULL,
      1,
      "0"
    );
  }

  return github_organization;
}


#ifdef github_organization_MAIN

void test_github_organization(int include_optional) {
    github_organization_t* github_organization_1 = instantiate_github_organization(include_optional);

	cJSON* jsongithub_organization_1 = github_organization_convertToJSON(github_organization_1);
	printf("github_organization :\n%s\n", cJSON_Print(jsongithub_organization_1));
	github_organization_t* github_organization_2 = github_organization_parseFromJSON(jsongithub_organization_1);
	cJSON* jsongithub_organization_2 = github_organization_convertToJSON(github_organization_2);
	printf("repeating github_organization:\n%s\n", cJSON_Print(jsongithub_organization_2));
}

int main() {
  test_github_organization(1);
  test_github_organization(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_organization_MAIN
#endif // github_organization_TEST
