#ifndef github_repositorylinks_TEST
#define github_repositorylinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_repositorylinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_repositorylinks.h"
github_repositorylinks_t* instantiate_github_repositorylinks(int include_optional);

#include "test_link.c"


github_repositorylinks_t* instantiate_github_repositorylinks(int include_optional) {
  github_repositorylinks_t* github_repositorylinks = NULL;
  if (include_optional) {
    github_repositorylinks = github_repositorylinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    github_repositorylinks = github_repositorylinks_create(
      NULL,
      "0"
    );
  }

  return github_repositorylinks;
}


#ifdef github_repositorylinks_MAIN

void test_github_repositorylinks(int include_optional) {
    github_repositorylinks_t* github_repositorylinks_1 = instantiate_github_repositorylinks(include_optional);

	cJSON* jsongithub_repositorylinks_1 = github_repositorylinks_convertToJSON(github_repositorylinks_1);
	printf("github_repositorylinks :\n%s\n", cJSON_Print(jsongithub_repositorylinks_1));
	github_repositorylinks_t* github_repositorylinks_2 = github_repositorylinks_parseFromJSON(jsongithub_repositorylinks_1);
	cJSON* jsongithub_repositorylinks_2 = github_repositorylinks_convertToJSON(github_repositorylinks_2);
	printf("repeating github_repositorylinks:\n%s\n", cJSON_Print(jsongithub_repositorylinks_2));
}

int main() {
  test_github_repositorylinks(1);
  test_github_repositorylinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_repositorylinks_MAIN
#endif // github_repositorylinks_TEST
