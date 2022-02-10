#ifndef cause_user_id_cause_TEST
#define cause_user_id_cause_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cause_user_id_cause_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cause_user_id_cause.h"
cause_user_id_cause_t* instantiate_cause_user_id_cause(int include_optional);



cause_user_id_cause_t* instantiate_cause_user_id_cause(int include_optional) {
  cause_user_id_cause_t* cause_user_id_cause = NULL;
  if (include_optional) {
    cause_user_id_cause = cause_user_id_cause_create(
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    cause_user_id_cause = cause_user_id_cause_create(
      "0",
      "0",
      "0",
      "0"
    );
  }

  return cause_user_id_cause;
}


#ifdef cause_user_id_cause_MAIN

void test_cause_user_id_cause(int include_optional) {
    cause_user_id_cause_t* cause_user_id_cause_1 = instantiate_cause_user_id_cause(include_optional);

	cJSON* jsoncause_user_id_cause_1 = cause_user_id_cause_convertToJSON(cause_user_id_cause_1);
	printf("cause_user_id_cause :\n%s\n", cJSON_Print(jsoncause_user_id_cause_1));
	cause_user_id_cause_t* cause_user_id_cause_2 = cause_user_id_cause_parseFromJSON(jsoncause_user_id_cause_1);
	cJSON* jsoncause_user_id_cause_2 = cause_user_id_cause_convertToJSON(cause_user_id_cause_2);
	printf("repeating cause_user_id_cause:\n%s\n", cJSON_Print(jsoncause_user_id_cause_2));
}

int main() {
  test_cause_user_id_cause(1);
  test_cause_user_id_cause(0);

  printf("Hello world \n");
  return 0;
}

#endif // cause_user_id_cause_MAIN
#endif // cause_user_id_cause_TEST
