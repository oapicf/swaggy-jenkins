#ifndef queue_TEST
#define queue_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define queue_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/queue.h"
queue_t* instantiate_queue(int include_optional);



queue_t* instantiate_queue(int include_optional) {
  queue_t* queue = NULL;
  if (include_optional) {
    queue = queue_create(
      "0",
      list_createList()
    );
  } else {
    queue = queue_create(
      "0",
      list_createList()
    );
  }

  return queue;
}


#ifdef queue_MAIN

void test_queue(int include_optional) {
    queue_t* queue_1 = instantiate_queue(include_optional);

	cJSON* jsonqueue_1 = queue_convertToJSON(queue_1);
	printf("queue :\n%s\n", cJSON_Print(jsonqueue_1));
	queue_t* queue_2 = queue_parseFromJSON(jsonqueue_1);
	cJSON* jsonqueue_2 = queue_convertToJSON(queue_2);
	printf("repeating queue:\n%s\n", cJSON_Print(jsonqueue_2));
}

int main() {
  test_queue(1);
  test_queue(0);

  printf("Hello world \n");
  return 0;
}

#endif // queue_MAIN
#endif // queue_TEST
