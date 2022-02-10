#ifndef github_scm_TEST
#define github_scm_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_scm_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_scm.h"
github_scm_t* instantiate_github_scm(int include_optional);

#include "test_github_scmlinks.c"


github_scm_t* instantiate_github_scm(int include_optional) {
  github_scm_t* github_scm = NULL;
  if (include_optional) {
    github_scm = github_scm_create(
      "0",
       // false, not to have infinite recursion
      instantiate_github_scmlinks(0),
      "0",
      "0",
      "0"
    );
  } else {
    github_scm = github_scm_create(
      "0",
      NULL,
      "0",
      "0",
      "0"
    );
  }

  return github_scm;
}


#ifdef github_scm_MAIN

void test_github_scm(int include_optional) {
    github_scm_t* github_scm_1 = instantiate_github_scm(include_optional);

	cJSON* jsongithub_scm_1 = github_scm_convertToJSON(github_scm_1);
	printf("github_scm :\n%s\n", cJSON_Print(jsongithub_scm_1));
	github_scm_t* github_scm_2 = github_scm_parseFromJSON(jsongithub_scm_1);
	cJSON* jsongithub_scm_2 = github_scm_convertToJSON(github_scm_2);
	printf("repeating github_scm:\n%s\n", cJSON_Print(jsongithub_scm_2));
}

int main() {
  test_github_scm(1);
  test_github_scm(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_scm_MAIN
#endif // github_scm_TEST
