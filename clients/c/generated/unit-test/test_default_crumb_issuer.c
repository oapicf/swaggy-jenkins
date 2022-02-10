#ifndef default_crumb_issuer_TEST
#define default_crumb_issuer_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define default_crumb_issuer_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/default_crumb_issuer.h"
default_crumb_issuer_t* instantiate_default_crumb_issuer(int include_optional);



default_crumb_issuer_t* instantiate_default_crumb_issuer(int include_optional) {
  default_crumb_issuer_t* default_crumb_issuer = NULL;
  if (include_optional) {
    default_crumb_issuer = default_crumb_issuer_create(
      "0",
      "0",
      "0"
    );
  } else {
    default_crumb_issuer = default_crumb_issuer_create(
      "0",
      "0",
      "0"
    );
  }

  return default_crumb_issuer;
}


#ifdef default_crumb_issuer_MAIN

void test_default_crumb_issuer(int include_optional) {
    default_crumb_issuer_t* default_crumb_issuer_1 = instantiate_default_crumb_issuer(include_optional);

	cJSON* jsondefault_crumb_issuer_1 = default_crumb_issuer_convertToJSON(default_crumb_issuer_1);
	printf("default_crumb_issuer :\n%s\n", cJSON_Print(jsondefault_crumb_issuer_1));
	default_crumb_issuer_t* default_crumb_issuer_2 = default_crumb_issuer_parseFromJSON(jsondefault_crumb_issuer_1);
	cJSON* jsondefault_crumb_issuer_2 = default_crumb_issuer_convertToJSON(default_crumb_issuer_2);
	printf("repeating default_crumb_issuer:\n%s\n", cJSON_Print(jsondefault_crumb_issuer_2));
}

int main() {
  test_default_crumb_issuer(1);
  test_default_crumb_issuer(0);

  printf("Hello world \n");
  return 0;
}

#endif // default_crumb_issuer_MAIN
#endif // default_crumb_issuer_TEST
