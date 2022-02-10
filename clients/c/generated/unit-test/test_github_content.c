#ifndef github_content_TEST
#define github_content_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_content_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_content.h"
github_content_t* instantiate_github_content(int include_optional);



github_content_t* instantiate_github_content(int include_optional) {
  github_content_t* github_content = NULL;
  if (include_optional) {
    github_content = github_content_create(
      "0",
      "0",
      "0",
      "0",
      56,
      "0",
      "0",
      "0"
    );
  } else {
    github_content = github_content_create(
      "0",
      "0",
      "0",
      "0",
      56,
      "0",
      "0",
      "0"
    );
  }

  return github_content;
}


#ifdef github_content_MAIN

void test_github_content(int include_optional) {
    github_content_t* github_content_1 = instantiate_github_content(include_optional);

	cJSON* jsongithub_content_1 = github_content_convertToJSON(github_content_1);
	printf("github_content :\n%s\n", cJSON_Print(jsongithub_content_1));
	github_content_t* github_content_2 = github_content_parseFromJSON(jsongithub_content_1);
	cJSON* jsongithub_content_2 = github_content_convertToJSON(github_content_2);
	printf("repeating github_content:\n%s\n", cJSON_Print(jsongithub_content_2));
}

int main() {
  test_github_content(1);
  test_github_content(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_content_MAIN
#endif // github_content_TEST
