#ifndef github_scmlinks_TEST
#define github_scmlinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_scmlinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_scmlinks.h"
github_scmlinks_t* instantiate_github_scmlinks(int include_optional);

#include "test_link.c"


github_scmlinks_t* instantiate_github_scmlinks(int include_optional) {
  github_scmlinks_t* github_scmlinks = NULL;
  if (include_optional) {
    github_scmlinks = github_scmlinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    github_scmlinks = github_scmlinks_create(
      NULL,
      "0"
    );
  }

  return github_scmlinks;
}


#ifdef github_scmlinks_MAIN

void test_github_scmlinks(int include_optional) {
    github_scmlinks_t* github_scmlinks_1 = instantiate_github_scmlinks(include_optional);

	cJSON* jsongithub_scmlinks_1 = github_scmlinks_convertToJSON(github_scmlinks_1);
	printf("github_scmlinks :\n%s\n", cJSON_Print(jsongithub_scmlinks_1));
	github_scmlinks_t* github_scmlinks_2 = github_scmlinks_parseFromJSON(jsongithub_scmlinks_1);
	cJSON* jsongithub_scmlinks_2 = github_scmlinks_convertToJSON(github_scmlinks_2);
	printf("repeating github_scmlinks:\n%s\n", cJSON_Print(jsongithub_scmlinks_2));
}

int main() {
  test_github_scmlinks(1);
  test_github_scmlinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_scmlinks_MAIN
#endif // github_scmlinks_TEST
