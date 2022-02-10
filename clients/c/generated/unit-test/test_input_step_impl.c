#ifndef input_step_impl_TEST
#define input_step_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define input_step_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/input_step_impl.h"
input_step_impl_t* instantiate_input_step_impl(int include_optional);

#include "test_input_step_impllinks.c"


input_step_impl_t* instantiate_input_step_impl(int include_optional) {
  input_step_impl_t* input_step_impl = NULL;
  if (include_optional) {
    input_step_impl = input_step_impl_create(
      "0",
       // false, not to have infinite recursion
      instantiate_input_step_impllinks(0),
      "0",
      "0",
      "0",
      list_createList(),
      "0"
    );
  } else {
    input_step_impl = input_step_impl_create(
      "0",
      NULL,
      "0",
      "0",
      "0",
      list_createList(),
      "0"
    );
  }

  return input_step_impl;
}


#ifdef input_step_impl_MAIN

void test_input_step_impl(int include_optional) {
    input_step_impl_t* input_step_impl_1 = instantiate_input_step_impl(include_optional);

	cJSON* jsoninput_step_impl_1 = input_step_impl_convertToJSON(input_step_impl_1);
	printf("input_step_impl :\n%s\n", cJSON_Print(jsoninput_step_impl_1));
	input_step_impl_t* input_step_impl_2 = input_step_impl_parseFromJSON(jsoninput_step_impl_1);
	cJSON* jsoninput_step_impl_2 = input_step_impl_convertToJSON(input_step_impl_2);
	printf("repeating input_step_impl:\n%s\n", cJSON_Print(jsoninput_step_impl_2));
}

int main() {
  test_input_step_impl(1);
  test_input_step_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // input_step_impl_MAIN
#endif // input_step_impl_TEST
