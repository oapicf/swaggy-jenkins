#ifndef clock_difference_TEST
#define clock_difference_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define clock_difference_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/clock_difference.h"
clock_difference_t* instantiate_clock_difference(int include_optional);



clock_difference_t* instantiate_clock_difference(int include_optional) {
  clock_difference_t* clock_difference = NULL;
  if (include_optional) {
    clock_difference = clock_difference_create(
      "0",
      56
    );
  } else {
    clock_difference = clock_difference_create(
      "0",
      56
    );
  }

  return clock_difference;
}


#ifdef clock_difference_MAIN

void test_clock_difference(int include_optional) {
    clock_difference_t* clock_difference_1 = instantiate_clock_difference(include_optional);

	cJSON* jsonclock_difference_1 = clock_difference_convertToJSON(clock_difference_1);
	printf("clock_difference :\n%s\n", cJSON_Print(jsonclock_difference_1));
	clock_difference_t* clock_difference_2 = clock_difference_parseFromJSON(jsonclock_difference_1);
	cJSON* jsonclock_difference_2 = clock_difference_convertToJSON(clock_difference_2);
	printf("repeating clock_difference:\n%s\n", cJSON_Print(jsonclock_difference_2));
}

int main() {
  test_clock_difference(1);
  test_clock_difference(0);

  printf("Hello world \n");
  return 0;
}

#endif // clock_difference_MAIN
#endif // clock_difference_TEST
