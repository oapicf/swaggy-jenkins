#ifndef generic_resource_TEST
#define generic_resource_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define generic_resource_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/generic_resource.h"
generic_resource_t* instantiate_generic_resource(int include_optional);



generic_resource_t* instantiate_generic_resource(int include_optional) {
  generic_resource_t* generic_resource = NULL;
  if (include_optional) {
    generic_resource = generic_resource_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0"
    );
  } else {
    generic_resource = generic_resource_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0"
    );
  }

  return generic_resource;
}


#ifdef generic_resource_MAIN

void test_generic_resource(int include_optional) {
    generic_resource_t* generic_resource_1 = instantiate_generic_resource(include_optional);

	cJSON* jsongeneric_resource_1 = generic_resource_convertToJSON(generic_resource_1);
	printf("generic_resource :\n%s\n", cJSON_Print(jsongeneric_resource_1));
	generic_resource_t* generic_resource_2 = generic_resource_parseFromJSON(jsongeneric_resource_1);
	cJSON* jsongeneric_resource_2 = generic_resource_convertToJSON(generic_resource_2);
	printf("repeating generic_resource:\n%s\n", cJSON_Print(jsongeneric_resource_2));
}

int main() {
  test_generic_resource(1);
  test_generic_resource(0);

  printf("Hello world \n");
  return 0;
}

#endif // generic_resource_MAIN
#endif // generic_resource_TEST
