#ifndef free_style_build_TEST
#define free_style_build_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define free_style_build_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/free_style_build.h"
free_style_build_t* instantiate_free_style_build(int include_optional);

#include "test_empty_change_log_set.c"


free_style_build_t* instantiate_free_style_build(int include_optional) {
  free_style_build_t* free_style_build = NULL;
  if (include_optional) {
    free_style_build = free_style_build_create(
      "0",
      56,
      "0",
      list_createList(),
      1,
      "0",
      "0",
      56,
      56,
      "0",
      "0",
      "0",
      1,
      56,
      "0",
      56,
      "0",
       // false, not to have infinite recursion
      instantiate_empty_change_log_set(0)
    );
  } else {
    free_style_build = free_style_build_create(
      "0",
      56,
      "0",
      list_createList(),
      1,
      "0",
      "0",
      56,
      56,
      "0",
      "0",
      "0",
      1,
      56,
      "0",
      56,
      "0",
      NULL
    );
  }

  return free_style_build;
}


#ifdef free_style_build_MAIN

void test_free_style_build(int include_optional) {
    free_style_build_t* free_style_build_1 = instantiate_free_style_build(include_optional);

	cJSON* jsonfree_style_build_1 = free_style_build_convertToJSON(free_style_build_1);
	printf("free_style_build :\n%s\n", cJSON_Print(jsonfree_style_build_1));
	free_style_build_t* free_style_build_2 = free_style_build_parseFromJSON(jsonfree_style_build_1);
	cJSON* jsonfree_style_build_2 = free_style_build_convertToJSON(free_style_build_2);
	printf("repeating free_style_build:\n%s\n", cJSON_Print(jsonfree_style_build_2));
}

int main() {
  test_free_style_build(1);
  test_free_style_build(0);

  printf("Hello world \n");
  return 0;
}

#endif // free_style_build_MAIN
#endif // free_style_build_TEST
