#ifndef empty_change_log_set_TEST
#define empty_change_log_set_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define empty_change_log_set_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/empty_change_log_set.h"
empty_change_log_set_t* instantiate_empty_change_log_set(int include_optional);



empty_change_log_set_t* instantiate_empty_change_log_set(int include_optional) {
  empty_change_log_set_t* empty_change_log_set = NULL;
  if (include_optional) {
    empty_change_log_set = empty_change_log_set_create(
      "0",
      "0"
    );
  } else {
    empty_change_log_set = empty_change_log_set_create(
      "0",
      "0"
    );
  }

  return empty_change_log_set;
}


#ifdef empty_change_log_set_MAIN

void test_empty_change_log_set(int include_optional) {
    empty_change_log_set_t* empty_change_log_set_1 = instantiate_empty_change_log_set(include_optional);

	cJSON* jsonempty_change_log_set_1 = empty_change_log_set_convertToJSON(empty_change_log_set_1);
	printf("empty_change_log_set :\n%s\n", cJSON_Print(jsonempty_change_log_set_1));
	empty_change_log_set_t* empty_change_log_set_2 = empty_change_log_set_parseFromJSON(jsonempty_change_log_set_1);
	cJSON* jsonempty_change_log_set_2 = empty_change_log_set_convertToJSON(empty_change_log_set_2);
	printf("repeating empty_change_log_set:\n%s\n", cJSON_Print(jsonempty_change_log_set_2));
}

int main() {
  test_empty_change_log_set(1);
  test_empty_change_log_set(0);

  printf("Hello world \n");
  return 0;
}

#endif // empty_change_log_set_MAIN
#endif // empty_change_log_set_TEST
