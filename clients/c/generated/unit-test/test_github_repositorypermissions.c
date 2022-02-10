#ifndef github_repositorypermissions_TEST
#define github_repositorypermissions_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define github_repositorypermissions_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/github_repositorypermissions.h"
github_repositorypermissions_t* instantiate_github_repositorypermissions(int include_optional);



github_repositorypermissions_t* instantiate_github_repositorypermissions(int include_optional) {
  github_repositorypermissions_t* github_repositorypermissions = NULL;
  if (include_optional) {
    github_repositorypermissions = github_repositorypermissions_create(
      1,
      1,
      1,
      "0"
    );
  } else {
    github_repositorypermissions = github_repositorypermissions_create(
      1,
      1,
      1,
      "0"
    );
  }

  return github_repositorypermissions;
}


#ifdef github_repositorypermissions_MAIN

void test_github_repositorypermissions(int include_optional) {
    github_repositorypermissions_t* github_repositorypermissions_1 = instantiate_github_repositorypermissions(include_optional);

	cJSON* jsongithub_repositorypermissions_1 = github_repositorypermissions_convertToJSON(github_repositorypermissions_1);
	printf("github_repositorypermissions :\n%s\n", cJSON_Print(jsongithub_repositorypermissions_1));
	github_repositorypermissions_t* github_repositorypermissions_2 = github_repositorypermissions_parseFromJSON(jsongithub_repositorypermissions_1);
	cJSON* jsongithub_repositorypermissions_2 = github_repositorypermissions_convertToJSON(github_repositorypermissions_2);
	printf("repeating github_repositorypermissions:\n%s\n", cJSON_Print(jsongithub_repositorypermissions_2));
}

int main() {
  test_github_repositorypermissions(1);
  test_github_repositorypermissions(0);

  printf("Hello world \n");
  return 0;
}

#endif // github_repositorypermissions_MAIN
#endif // github_repositorypermissions_TEST
