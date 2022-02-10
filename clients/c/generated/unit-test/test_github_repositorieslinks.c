#ifndef github_repositorieslinks_TEST
#define github_repositorieslinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_repositorieslinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_repositorieslinks.h"
github_repositorieslinks_t* instantiate_github_repositorieslinks(int include_optional);

#include "test_link.c"


github_repositorieslinks_t* instantiate_github_repositorieslinks(int include_optional) {
  github_repositorieslinks_t* github_repositorieslinks = NULL;
  if (include_optional) {
    github_repositorieslinks = github_repositorieslinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    github_repositorieslinks = github_repositorieslinks_create(
      NULL,
      "0"
    );
  }

  return github_repositorieslinks;
}


#ifdef github_repositorieslinks_MAIN

void test_github_repositorieslinks(int include_optional) {
    github_repositorieslinks_t* github_repositorieslinks_1 = instantiate_github_repositorieslinks(include_optional);

	cJSON* jsongithub_repositorieslinks_1 = github_repositorieslinks_convertToJSON(github_repositorieslinks_1);
	printf("github_repositorieslinks :\n%s\n", cJSON_Print(jsongithub_repositorieslinks_1));
	github_repositorieslinks_t* github_repositorieslinks_2 = github_repositorieslinks_parseFromJSON(jsongithub_repositorieslinks_1);
	cJSON* jsongithub_repositorieslinks_2 = github_repositorieslinks_convertToJSON(github_repositorieslinks_2);
	printf("repeating github_repositorieslinks:\n%s\n", cJSON_Print(jsongithub_repositorieslinks_2));
}

int main() {
  test_github_repositorieslinks(1);
  test_github_repositorieslinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_repositorieslinks_MAIN
#endif // github_repositorieslinks_TEST
