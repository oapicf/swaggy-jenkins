#ifndef github_respository_containerlinks_TEST
#define github_respository_containerlinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_respository_containerlinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_respository_containerlinks.h"
github_respository_containerlinks_t* instantiate_github_respository_containerlinks(int include_optional);

#include "test_link.c"


github_respository_containerlinks_t* instantiate_github_respository_containerlinks(int include_optional) {
  github_respository_containerlinks_t* github_respository_containerlinks = NULL;
  if (include_optional) {
    github_respository_containerlinks = github_respository_containerlinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    github_respository_containerlinks = github_respository_containerlinks_create(
      NULL,
      "0"
    );
  }

  return github_respository_containerlinks;
}


#ifdef github_respository_containerlinks_MAIN

void test_github_respository_containerlinks(int include_optional) {
    github_respository_containerlinks_t* github_respository_containerlinks_1 = instantiate_github_respository_containerlinks(include_optional);

	cJSON* jsongithub_respository_containerlinks_1 = github_respository_containerlinks_convertToJSON(github_respository_containerlinks_1);
	printf("github_respository_containerlinks :\n%s\n", cJSON_Print(jsongithub_respository_containerlinks_1));
	github_respository_containerlinks_t* github_respository_containerlinks_2 = github_respository_containerlinks_parseFromJSON(jsongithub_respository_containerlinks_1);
	cJSON* jsongithub_respository_containerlinks_2 = github_respository_containerlinks_convertToJSON(github_respository_containerlinks_2);
	printf("repeating github_respository_containerlinks:\n%s\n", cJSON_Print(jsongithub_respository_containerlinks_2));
}

int main() {
  test_github_respository_containerlinks(1);
  test_github_respository_containerlinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_respository_containerlinks_MAIN
#endif // github_respository_containerlinks_TEST
