#ifndef queue_item_impl_TEST
#define queue_item_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define queue_item_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/queue_item_impl.h"
queue_item_impl_t* instantiate_queue_item_impl(int include_optional);



queue_item_impl_t* instantiate_queue_item_impl(int include_optional) {
  queue_item_impl_t* queue_item_impl = NULL;
  if (include_optional) {
    queue_item_impl = queue_item_impl_create(
      "0",
      56,
      "0",
      "0",
      56
    );
  } else {
    queue_item_impl = queue_item_impl_create(
      "0",
      56,
      "0",
      "0",
      56
    );
  }

  return queue_item_impl;
}


#ifdef queue_item_impl_MAIN

void test_queue_item_impl(int include_optional) {
    queue_item_impl_t* queue_item_impl_1 = instantiate_queue_item_impl(include_optional);

	cJSON* jsonqueue_item_impl_1 = queue_item_impl_convertToJSON(queue_item_impl_1);
	printf("queue_item_impl :\n%s\n", cJSON_Print(jsonqueue_item_impl_1));
	queue_item_impl_t* queue_item_impl_2 = queue_item_impl_parseFromJSON(jsonqueue_item_impl_1);
	cJSON* jsonqueue_item_impl_2 = queue_item_impl_convertToJSON(queue_item_impl_2);
	printf("repeating queue_item_impl:\n%s\n", cJSON_Print(jsonqueue_item_impl_2));
}

int main() {
  test_queue_item_impl(1);
  test_queue_item_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // queue_item_impl_MAIN
#endif // queue_item_impl_TEST
