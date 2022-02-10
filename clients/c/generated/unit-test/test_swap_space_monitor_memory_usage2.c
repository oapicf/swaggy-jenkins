#ifndef swap_space_monitor_memory_usage2_TEST
#define swap_space_monitor_memory_usage2_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define swap_space_monitor_memory_usage2_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/swap_space_monitor_memory_usage2.h"
swap_space_monitor_memory_usage2_t* instantiate_swap_space_monitor_memory_usage2(int include_optional);



swap_space_monitor_memory_usage2_t* instantiate_swap_space_monitor_memory_usage2(int include_optional) {
  swap_space_monitor_memory_usage2_t* swap_space_monitor_memory_usage2 = NULL;
  if (include_optional) {
    swap_space_monitor_memory_usage2 = swap_space_monitor_memory_usage2_create(
      "0",
      56,
      56,
      56,
      56
    );
  } else {
    swap_space_monitor_memory_usage2 = swap_space_monitor_memory_usage2_create(
      "0",
      56,
      56,
      56,
      56
    );
  }

  return swap_space_monitor_memory_usage2;
}


#ifdef swap_space_monitor_memory_usage2_MAIN

void test_swap_space_monitor_memory_usage2(int include_optional) {
    swap_space_monitor_memory_usage2_t* swap_space_monitor_memory_usage2_1 = instantiate_swap_space_monitor_memory_usage2(include_optional);

	cJSON* jsonswap_space_monitor_memory_usage2_1 = swap_space_monitor_memory_usage2_convertToJSON(swap_space_monitor_memory_usage2_1);
	printf("swap_space_monitor_memory_usage2 :\n%s\n", cJSON_Print(jsonswap_space_monitor_memory_usage2_1));
	swap_space_monitor_memory_usage2_t* swap_space_monitor_memory_usage2_2 = swap_space_monitor_memory_usage2_parseFromJSON(jsonswap_space_monitor_memory_usage2_1);
	cJSON* jsonswap_space_monitor_memory_usage2_2 = swap_space_monitor_memory_usage2_convertToJSON(swap_space_monitor_memory_usage2_2);
	printf("repeating swap_space_monitor_memory_usage2:\n%s\n", cJSON_Print(jsonswap_space_monitor_memory_usage2_2));
}

int main() {
  test_swap_space_monitor_memory_usage2(1);
  test_swap_space_monitor_memory_usage2(0);

  printf("Hello world \n");
  return 0;
}

#endif // swap_space_monitor_memory_usage2_MAIN
#endif // swap_space_monitor_memory_usage2_TEST
