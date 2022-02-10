#ifndef hudson_master_computerexecutors_TEST
#define hudson_master_computerexecutors_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define hudson_master_computerexecutors_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/hudson_master_computerexecutors.h"
hudson_master_computerexecutors_t* instantiate_hudson_master_computerexecutors(int include_optional);

#include "test_free_style_build.c"


hudson_master_computerexecutors_t* instantiate_hudson_master_computerexecutors(int include_optional) {
  hudson_master_computerexecutors_t* hudson_master_computerexecutors = NULL;
  if (include_optional) {
    hudson_master_computerexecutors = hudson_master_computerexecutors_create(
       // false, not to have infinite recursion
      instantiate_free_style_build(0),
      1,
      1,
      56,
      56,
      "0"
    );
  } else {
    hudson_master_computerexecutors = hudson_master_computerexecutors_create(
      NULL,
      1,
      1,
      56,
      56,
      "0"
    );
  }

  return hudson_master_computerexecutors;
}


#ifdef hudson_master_computerexecutors_MAIN

void test_hudson_master_computerexecutors(int include_optional) {
    hudson_master_computerexecutors_t* hudson_master_computerexecutors_1 = instantiate_hudson_master_computerexecutors(include_optional);

	cJSON* jsonhudson_master_computerexecutors_1 = hudson_master_computerexecutors_convertToJSON(hudson_master_computerexecutors_1);
	printf("hudson_master_computerexecutors :\n%s\n", cJSON_Print(jsonhudson_master_computerexecutors_1));
	hudson_master_computerexecutors_t* hudson_master_computerexecutors_2 = hudson_master_computerexecutors_parseFromJSON(jsonhudson_master_computerexecutors_1);
	cJSON* jsonhudson_master_computerexecutors_2 = hudson_master_computerexecutors_convertToJSON(hudson_master_computerexecutors_2);
	printf("repeating hudson_master_computerexecutors:\n%s\n", cJSON_Print(jsonhudson_master_computerexecutors_2));
}

int main() {
  test_hudson_master_computerexecutors(1);
  test_hudson_master_computerexecutors(0);

  printf("Hello world \n");
  return 0;
}

#endif // hudson_master_computerexecutors_MAIN
#endif // hudson_master_computerexecutors_TEST
