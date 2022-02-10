#ifndef github_repository_TEST
#define github_repository_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_repository_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_repository.h"
github_repository_t* instantiate_github_repository(int include_optional);

#include "test_github_repositorylinks.c"
#include "test_github_repositorypermissions.c"


github_repository_t* instantiate_github_repository(int include_optional) {
  github_repository_t* github_repository = NULL;
  if (include_optional) {
    github_repository = github_repository_create(
      "0",
       // false, not to have infinite recursion
      instantiate_github_repositorylinks(0),
      "0",
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_github_repositorypermissions(0),
      1,
      "0"
    );
  } else {
    github_repository = github_repository_create(
      "0",
      NULL,
      "0",
      "0",
      "0",
      NULL,
      1,
      "0"
    );
  }

  return github_repository;
}


#ifdef github_repository_MAIN

void test_github_repository(int include_optional) {
    github_repository_t* github_repository_1 = instantiate_github_repository(include_optional);

	cJSON* jsongithub_repository_1 = github_repository_convertToJSON(github_repository_1);
	printf("github_repository :\n%s\n", cJSON_Print(jsongithub_repository_1));
	github_repository_t* github_repository_2 = github_repository_parseFromJSON(jsongithub_repository_1);
	cJSON* jsongithub_repository_2 = github_repository_convertToJSON(github_repository_2);
	printf("repeating github_repository:\n%s\n", cJSON_Print(jsongithub_repository_2));
}

int main() {
  test_github_repository(1);
  test_github_repository(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_repository_MAIN
#endif // github_repository_TEST
