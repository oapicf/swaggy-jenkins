#ifndef queue_left_item_TEST
#define queue_left_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define queue_left_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/queue_left_item.h"
queue_left_item_t* instantiate_queue_left_item(int include_optional);

#include "test_free_style_project.c"
#include "test_free_style_build.c"


queue_left_item_t* instantiate_queue_left_item(int include_optional) {
  queue_left_item_t* queue_left_item = NULL;
  if (include_optional) {
    queue_left_item = queue_left_item_create(
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
      1,
       // false, not to have infinite recursion
      instantiate_free_style_build(0)
    );
  } else {
    queue_left_item = queue_left_item_create(
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
      1,
      NULL
    );
  }

  return queue_left_item;
}


#ifdef queue_left_item_MAIN

void test_queue_left_item(int include_optional) {
    queue_left_item_t* queue_left_item_1 = instantiate_queue_left_item(include_optional);

	cJSON* jsonqueue_left_item_1 = queue_left_item_convertToJSON(queue_left_item_1);
	printf("queue_left_item :\n%s\n", cJSON_Print(jsonqueue_left_item_1));
	queue_left_item_t* queue_left_item_2 = queue_left_item_parseFromJSON(jsonqueue_left_item_1);
	cJSON* jsonqueue_left_item_2 = queue_left_item_convertToJSON(queue_left_item_2);
	printf("repeating queue_left_item:\n%s\n", cJSON_Print(jsonqueue_left_item_2));
}

int main() {
  test_queue_left_item(1);
  test_queue_left_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // queue_left_item_MAIN
#endif // queue_left_item_TEST
