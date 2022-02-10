#ifndef computer_set_TEST
#define computer_set_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define computer_set_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/computer_set.h"
computer_set_t* instantiate_computer_set(int include_optional);



computer_set_t* instantiate_computer_set(int include_optional) {
  computer_set_t* computer_set = NULL;
  if (include_optional) {
    computer_set = computer_set_create(
      "0",
      56,
      list_createList(),
      "0",
      56
    );
  } else {
    computer_set = computer_set_create(
      "0",
      56,
      list_createList(),
      "0",
      56
    );
  }

  return computer_set;
}


#ifdef computer_set_MAIN

void test_computer_set(int include_optional) {
    computer_set_t* computer_set_1 = instantiate_computer_set(include_optional);

	cJSON* jsoncomputer_set_1 = computer_set_convertToJSON(computer_set_1);
	printf("computer_set :\n%s\n", cJSON_Print(jsoncomputer_set_1));
	computer_set_t* computer_set_2 = computer_set_parseFromJSON(jsoncomputer_set_1);
	cJSON* jsoncomputer_set_2 = computer_set_convertToJSON(computer_set_2);
	printf("repeating computer_set:\n%s\n", cJSON_Print(jsoncomputer_set_2));
}

int main() {
  test_computer_set(1);
  test_computer_set(0);

  printf("Hello world \n");
  return 0;
}

#endif // computer_set_MAIN
#endif // computer_set_TEST
