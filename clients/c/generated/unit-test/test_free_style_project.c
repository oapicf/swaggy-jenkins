#ifndef free_style_project_TEST
#define free_style_project_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define free_style_project_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/free_style_project.h"
free_style_project_t* instantiate_free_style_project(int include_optional);

#include "test_free_style_build.c"
#include "test_free_style_build.c"
#include "test_free_style_build.c"
#include "test_free_style_build.c"
#include "test_free_style_build.c"
#include "test_null_scm.c"


free_style_project_t* instantiate_free_style_project(int include_optional) {
  free_style_project_t* free_style_project = NULL;
  if (include_optional) {
    free_style_project = free_style_project_create(
      "0",
      "0",
      "0",
      "0",
      list_createList(),
      "0",
      "0",
      "0",
      "0",
      "0",
      1,
      list_createList(),
       // false, not to have infinite recursion
      instantiate_free_style_build(0),
      list_createList(),
      1,
      1,
       // false, not to have infinite recursion
      instantiate_free_style_build(0),
       // false, not to have infinite recursion
      instantiate_free_style_build(0),
      "0",
       // false, not to have infinite recursion
      instantiate_free_style_build(0),
       // false, not to have infinite recursion
      instantiate_free_style_build(0),
      "0",
      "0",
      56,
      "0",
      1,
       // false, not to have infinite recursion
      instantiate_null_scm(0)
    );
  } else {
    free_style_project = free_style_project_create(
      "0",
      "0",
      "0",
      "0",
      list_createList(),
      "0",
      "0",
      "0",
      "0",
      "0",
      1,
      list_createList(),
      NULL,
      list_createList(),
      1,
      1,
      NULL,
      NULL,
      "0",
      NULL,
      NULL,
      "0",
      "0",
      56,
      "0",
      1,
      NULL
    );
  }

  return free_style_project;
}


#ifdef free_style_project_MAIN

void test_free_style_project(int include_optional) {
    free_style_project_t* free_style_project_1 = instantiate_free_style_project(include_optional);

	cJSON* jsonfree_style_project_1 = free_style_project_convertToJSON(free_style_project_1);
	printf("free_style_project :\n%s\n", cJSON_Print(jsonfree_style_project_1));
	free_style_project_t* free_style_project_2 = free_style_project_parseFromJSON(jsonfree_style_project_1);
	cJSON* jsonfree_style_project_2 = free_style_project_convertToJSON(free_style_project_2);
	printf("repeating free_style_project:\n%s\n", cJSON_Print(jsonfree_style_project_2));
}

int main() {
  test_free_style_project(1);
  test_free_style_project(0);

  printf("Hello world \n");
  return 0;
}

#endif // free_style_project_MAIN
#endif // free_style_project_TEST
