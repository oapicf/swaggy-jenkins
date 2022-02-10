#ifndef null_scm_TEST
#define null_scm_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define null_scm_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/null_scm.h"
null_scm_t* instantiate_null_scm(int include_optional);



null_scm_t* instantiate_null_scm(int include_optional) {
  null_scm_t* null_scm = NULL;
  if (include_optional) {
    null_scm = null_scm_create(
      "0"
    );
  } else {
    null_scm = null_scm_create(
      "0"
    );
  }

  return null_scm;
}


#ifdef null_scm_MAIN

void test_null_scm(int include_optional) {
    null_scm_t* null_scm_1 = instantiate_null_scm(include_optional);

	cJSON* jsonnull_scm_1 = null_scm_convertToJSON(null_scm_1);
	printf("null_scm :\n%s\n", cJSON_Print(jsonnull_scm_1));
	null_scm_t* null_scm_2 = null_scm_parseFromJSON(jsonnull_scm_1);
	cJSON* jsonnull_scm_2 = null_scm_convertToJSON(null_scm_2);
	printf("repeating null_scm:\n%s\n", cJSON_Print(jsonnull_scm_2));
}

int main() {
  test_null_scm(1);
  test_null_scm(0);

  printf("Hello world \n");
  return 0;
}

#endif // null_scm_MAIN
#endif // null_scm_TEST
