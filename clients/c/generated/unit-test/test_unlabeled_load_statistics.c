#ifndef unlabeled_load_statistics_TEST
#define unlabeled_load_statistics_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define unlabeled_load_statistics_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/unlabeled_load_statistics.h"
unlabeled_load_statistics_t* instantiate_unlabeled_load_statistics(int include_optional);



unlabeled_load_statistics_t* instantiate_unlabeled_load_statistics(int include_optional) {
  unlabeled_load_statistics_t* unlabeled_load_statistics = NULL;
  if (include_optional) {
    unlabeled_load_statistics = unlabeled_load_statistics_create(
      "0"
    );
  } else {
    unlabeled_load_statistics = unlabeled_load_statistics_create(
      "0"
    );
  }

  return unlabeled_load_statistics;
}


#ifdef unlabeled_load_statistics_MAIN

void test_unlabeled_load_statistics(int include_optional) {
    unlabeled_load_statistics_t* unlabeled_load_statistics_1 = instantiate_unlabeled_load_statistics(include_optional);

	cJSON* jsonunlabeled_load_statistics_1 = unlabeled_load_statistics_convertToJSON(unlabeled_load_statistics_1);
	printf("unlabeled_load_statistics :\n%s\n", cJSON_Print(jsonunlabeled_load_statistics_1));
	unlabeled_load_statistics_t* unlabeled_load_statistics_2 = unlabeled_load_statistics_parseFromJSON(jsonunlabeled_load_statistics_1);
	cJSON* jsonunlabeled_load_statistics_2 = unlabeled_load_statistics_convertToJSON(unlabeled_load_statistics_2);
	printf("repeating unlabeled_load_statistics:\n%s\n", cJSON_Print(jsonunlabeled_load_statistics_2));
}

int main() {
  test_unlabeled_load_statistics(1);
  test_unlabeled_load_statistics(0);

  printf("Hello world \n");
  return 0;
}

#endif // unlabeled_load_statistics_MAIN
#endif // unlabeled_load_statistics_TEST
