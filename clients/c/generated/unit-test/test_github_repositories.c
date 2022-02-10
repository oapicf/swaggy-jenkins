#ifndef github_repositories_TEST
#define github_repositories_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_repositories_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_repositories.h"
github_repositories_t* instantiate_github_repositories(int include_optional);

#include "test_github_repositorieslinks.c"


github_repositories_t* instantiate_github_repositories(int include_optional) {
  github_repositories_t* github_repositories = NULL;
  if (include_optional) {
    github_repositories = github_repositories_create(
      "0",
       // false, not to have infinite recursion
      instantiate_github_repositorieslinks(0),
      list_createList(),
      56,
      56,
      56
    );
  } else {
    github_repositories = github_repositories_create(
      "0",
      NULL,
      list_createList(),
      56,
      56,
      56
    );
  }

  return github_repositories;
}


#ifdef github_repositories_MAIN

void test_github_repositories(int include_optional) {
    github_repositories_t* github_repositories_1 = instantiate_github_repositories(include_optional);

	cJSON* jsongithub_repositories_1 = github_repositories_convertToJSON(github_repositories_1);
	printf("github_repositories :\n%s\n", cJSON_Print(jsongithub_repositories_1));
	github_repositories_t* github_repositories_2 = github_repositories_parseFromJSON(jsongithub_repositories_1);
	cJSON* jsongithub_repositories_2 = github_repositories_convertToJSON(github_repositories_2);
	printf("repeating github_repositories:\n%s\n", cJSON_Print(jsongithub_repositories_2));
}

int main() {
  test_github_repositories(1);
  test_github_repositories(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_repositories_MAIN
#endif // github_repositories_TEST
