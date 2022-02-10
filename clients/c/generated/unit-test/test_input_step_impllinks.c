#ifndef input_step_impllinks_TEST
#define input_step_impllinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define input_step_impllinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/input_step_impllinks.h"
input_step_impllinks_t* instantiate_input_step_impllinks(int include_optional);

#include "test_link.c"


input_step_impllinks_t* instantiate_input_step_impllinks(int include_optional) {
  input_step_impllinks_t* input_step_impllinks = NULL;
  if (include_optional) {
    input_step_impllinks = input_step_impllinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    input_step_impllinks = input_step_impllinks_create(
      NULL,
      "0"
    );
  }

  return input_step_impllinks;
}


#ifdef input_step_impllinks_MAIN

void test_input_step_impllinks(int include_optional) {
    input_step_impllinks_t* input_step_impllinks_1 = instantiate_input_step_impllinks(include_optional);

	cJSON* jsoninput_step_impllinks_1 = input_step_impllinks_convertToJSON(input_step_impllinks_1);
	printf("input_step_impllinks :\n%s\n", cJSON_Print(jsoninput_step_impllinks_1));
	input_step_impllinks_t* input_step_impllinks_2 = input_step_impllinks_parseFromJSON(jsoninput_step_impllinks_1);
	cJSON* jsoninput_step_impllinks_2 = input_step_impllinks_convertToJSON(input_step_impllinks_2);
	printf("repeating input_step_impllinks:\n%s\n", cJSON_Print(jsoninput_step_impllinks_2));
}

int main() {
  test_input_step_impllinks(1);
  test_input_step_impllinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // input_step_impllinks_MAIN
#endif // input_step_impllinks_TEST
