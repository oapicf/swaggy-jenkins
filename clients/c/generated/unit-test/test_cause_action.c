#ifndef cause_action_TEST
#define cause_action_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cause_action_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cause_action.h"
cause_action_t* instantiate_cause_action(int include_optional);



cause_action_t* instantiate_cause_action(int include_optional) {
  cause_action_t* cause_action = NULL;
  if (include_optional) {
    cause_action = cause_action_create(
      "0",
      list_createList()
    );
  } else {
    cause_action = cause_action_create(
      "0",
      list_createList()
    );
  }

  return cause_action;
}


#ifdef cause_action_MAIN

void test_cause_action(int include_optional) {
    cause_action_t* cause_action_1 = instantiate_cause_action(include_optional);

	cJSON* jsoncause_action_1 = cause_action_convertToJSON(cause_action_1);
	printf("cause_action :\n%s\n", cJSON_Print(jsoncause_action_1));
	cause_action_t* cause_action_2 = cause_action_parseFromJSON(jsoncause_action_1);
	cJSON* jsoncause_action_2 = cause_action_convertToJSON(cause_action_2);
	printf("repeating cause_action:\n%s\n", cJSON_Print(jsoncause_action_2));
}

int main() {
  test_cause_action(1);
  test_cause_action(0);

  printf("Hello world \n");
  return 0;
}

#endif // cause_action_MAIN
#endif // cause_action_TEST
