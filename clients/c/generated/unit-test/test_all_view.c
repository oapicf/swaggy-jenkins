#ifndef all_view_TEST
#define all_view_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define all_view_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/all_view.h"
all_view_t* instantiate_all_view(int include_optional);



all_view_t* instantiate_all_view(int include_optional) {
  all_view_t* all_view = NULL;
  if (include_optional) {
    all_view = all_view_create(
      "0",
      "0",
      "0"
    );
  } else {
    all_view = all_view_create(
      "0",
      "0",
      "0"
    );
  }

  return all_view;
}


#ifdef all_view_MAIN

void test_all_view(int include_optional) {
    all_view_t* all_view_1 = instantiate_all_view(include_optional);

	cJSON* jsonall_view_1 = all_view_convertToJSON(all_view_1);
	printf("all_view :\n%s\n", cJSON_Print(jsonall_view_1));
	all_view_t* all_view_2 = all_view_parseFromJSON(jsonall_view_1);
	cJSON* jsonall_view_2 = all_view_convertToJSON(all_view_2);
	printf("repeating all_view:\n%s\n", cJSON_Print(jsonall_view_2));
}

int main() {
  test_all_view(1);
  test_all_view(0);

  printf("Hello world \n");
  return 0;
}

#endif // all_view_MAIN
#endif // all_view_TEST
