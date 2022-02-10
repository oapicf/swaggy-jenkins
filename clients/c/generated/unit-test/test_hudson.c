#ifndef hudson_TEST
#define hudson_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define hudson_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/hudson.h"
hudson_t* instantiate_hudson(int include_optional);

#include "test_all_view.c"
#include "test_unlabeled_load_statistics.c"


hudson_t* instantiate_hudson(int include_optional) {
  hudson_t* hudson = NULL;
  if (include_optional) {
    hudson = hudson_create(
      "0",
      list_createList(),
      "0",
      "0",
      "0",
      56,
      "0",
      list_createList(),
       // false, not to have infinite recursion
      instantiate_all_view(0),
      1,
      56,
       // false, not to have infinite recursion
      instantiate_unlabeled_load_statistics(0),
      1,
      1,
      list_createList()
    );
  } else {
    hudson = hudson_create(
      "0",
      list_createList(),
      "0",
      "0",
      "0",
      56,
      "0",
      list_createList(),
      NULL,
      1,
      56,
      NULL,
      1,
      1,
      list_createList()
    );
  }

  return hudson;
}


#ifdef hudson_MAIN

void test_hudson(int include_optional) {
    hudson_t* hudson_1 = instantiate_hudson(include_optional);

	cJSON* jsonhudson_1 = hudson_convertToJSON(hudson_1);
	printf("hudson :\n%s\n", cJSON_Print(jsonhudson_1));
	hudson_t* hudson_2 = hudson_parseFromJSON(jsonhudson_1);
	cJSON* jsonhudson_2 = hudson_convertToJSON(hudson_2);
	printf("repeating hudson:\n%s\n", cJSON_Print(jsonhudson_2));
}

int main() {
  test_hudson(1);
  test_hudson(0);

  printf("Hello world \n");
  return 0;
}

#endif // hudson_MAIN
#endif // hudson_TEST
