#ifndef github_file_TEST
#define github_file_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_file_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_file.h"
github_file_t* instantiate_github_file(int include_optional);

#include "test_github_content.c"


github_file_t* instantiate_github_file(int include_optional) {
  github_file_t* github_file = NULL;
  if (include_optional) {
    github_file = github_file_create(
       // false, not to have infinite recursion
      instantiate_github_content(0),
      "0"
    );
  } else {
    github_file = github_file_create(
      NULL,
      "0"
    );
  }

  return github_file;
}


#ifdef github_file_MAIN

void test_github_file(int include_optional) {
    github_file_t* github_file_1 = instantiate_github_file(include_optional);

	cJSON* jsongithub_file_1 = github_file_convertToJSON(github_file_1);
	printf("github_file :\n%s\n", cJSON_Print(jsongithub_file_1));
	github_file_t* github_file_2 = github_file_parseFromJSON(jsongithub_file_1);
	cJSON* jsongithub_file_2 = github_file_convertToJSON(github_file_2);
	printf("repeating github_file:\n%s\n", cJSON_Print(jsongithub_file_2));
}

int main() {
  test_github_file(1);
  test_github_file(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_file_MAIN
#endif // github_file_TEST
