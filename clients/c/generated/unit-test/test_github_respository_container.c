#ifndef github_respository_container_TEST
#define github_respository_container_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_respository_container_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_respository_container.h"
github_respository_container_t* instantiate_github_respository_container(int include_optional);

#include "test_github_respository_containerlinks.c"
#include "test_github_repositories.c"


github_respository_container_t* instantiate_github_respository_container(int include_optional) {
  github_respository_container_t* github_respository_container = NULL;
  if (include_optional) {
    github_respository_container = github_respository_container_create(
      "0",
       // false, not to have infinite recursion
      instantiate_github_respository_containerlinks(0),
       // false, not to have infinite recursion
      instantiate_github_repositories(0)
    );
  } else {
    github_respository_container = github_respository_container_create(
      "0",
      NULL,
      NULL
    );
  }

  return github_respository_container;
}


#ifdef github_respository_container_MAIN

void test_github_respository_container(int include_optional) {
    github_respository_container_t* github_respository_container_1 = instantiate_github_respository_container(include_optional);

	cJSON* jsongithub_respository_container_1 = github_respository_container_convertToJSON(github_respository_container_1);
	printf("github_respository_container :\n%s\n", cJSON_Print(jsongithub_respository_container_1));
	github_respository_container_t* github_respository_container_2 = github_respository_container_parseFromJSON(jsongithub_respository_container_1);
	cJSON* jsongithub_respository_container_2 = github_respository_container_convertToJSON(github_respository_container_2);
	printf("repeating github_respository_container:\n%s\n", cJSON_Print(jsongithub_respository_container_2));
}

int main() {
  test_github_respository_container(1);
  test_github_respository_container(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_respository_container_MAIN
#endif // github_respository_container_TEST
