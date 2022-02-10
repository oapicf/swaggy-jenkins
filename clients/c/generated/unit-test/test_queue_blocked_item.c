#ifndef queue_blocked_item_TEST
#define queue_blocked_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define queue_blocked_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/queue_blocked_item.h"
queue_blocked_item_t* instantiate_queue_blocked_item(int include_optional);

#include "test_free_style_project.c"


queue_blocked_item_t* instantiate_queue_blocked_item(int include_optional) {
  queue_blocked_item_t* queue_blocked_item = NULL;
  if (include_optional) {
    queue_blocked_item = queue_blocked_item_create(
      "0",
      list_createList(),
      1,
      1,
      56,
      56,
      "0",
      1,
       // false, not to have infinite recursion
      instantiate_free_style_project(0),
      "0",
      "0",
      56
    );
  } else {
    queue_blocked_item = queue_blocked_item_create(
      "0",
      list_createList(),
      1,
      1,
      56,
      56,
      "0",
      1,
      NULL,
      "0",
      "0",
      56
    );
  }

  return queue_blocked_item;
}


#ifdef queue_blocked_item_MAIN

void test_queue_blocked_item(int include_optional) {
    queue_blocked_item_t* queue_blocked_item_1 = instantiate_queue_blocked_item(include_optional);

	cJSON* jsonqueue_blocked_item_1 = queue_blocked_item_convertToJSON(queue_blocked_item_1);
	printf("queue_blocked_item :\n%s\n", cJSON_Print(jsonqueue_blocked_item_1));
	queue_blocked_item_t* queue_blocked_item_2 = queue_blocked_item_parseFromJSON(jsonqueue_blocked_item_1);
	cJSON* jsonqueue_blocked_item_2 = queue_blocked_item_convertToJSON(queue_blocked_item_2);
	printf("repeating queue_blocked_item:\n%s\n", cJSON_Print(jsonqueue_blocked_item_2));
}

int main() {
  test_queue_blocked_item(1);
  test_queue_blocked_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // queue_blocked_item_MAIN
#endif // queue_blocked_item_TEST
