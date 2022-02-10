#ifndef extension_class_container_impl1_TEST
#define extension_class_container_impl1_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define extension_class_container_impl1_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/extension_class_container_impl1.h"
extension_class_container_impl1_t* instantiate_extension_class_container_impl1(int include_optional);

#include "test_extension_class_container_impl1links.c"
#include "test_extension_class_container_impl1map.c"


extension_class_container_impl1_t* instantiate_extension_class_container_impl1(int include_optional) {
  extension_class_container_impl1_t* extension_class_container_impl1 = NULL;
  if (include_optional) {
    extension_class_container_impl1 = extension_class_container_impl1_create(
      "0",
       // false, not to have infinite recursion
      instantiate_extension_class_container_impl1links(0),
       // false, not to have infinite recursion
      instantiate_extension_class_container_impl1map(0)
    );
  } else {
    extension_class_container_impl1 = extension_class_container_impl1_create(
      "0",
      NULL,
      NULL
    );
  }

  return extension_class_container_impl1;
}


#ifdef extension_class_container_impl1_MAIN

void test_extension_class_container_impl1(int include_optional) {
    extension_class_container_impl1_t* extension_class_container_impl1_1 = instantiate_extension_class_container_impl1(include_optional);

	cJSON* jsonextension_class_container_impl1_1 = extension_class_container_impl1_convertToJSON(extension_class_container_impl1_1);
	printf("extension_class_container_impl1 :\n%s\n", cJSON_Print(jsonextension_class_container_impl1_1));
	extension_class_container_impl1_t* extension_class_container_impl1_2 = extension_class_container_impl1_parseFromJSON(jsonextension_class_container_impl1_1);
	cJSON* jsonextension_class_container_impl1_2 = extension_class_container_impl1_convertToJSON(extension_class_container_impl1_2);
	printf("repeating extension_class_container_impl1:\n%s\n", cJSON_Print(jsonextension_class_container_impl1_2));
}

int main() {
  test_extension_class_container_impl1(1);
  test_extension_class_container_impl1(0);

  printf("Hello world \n");
  return 0;
}

#endif // extension_class_container_impl1_MAIN
#endif // extension_class_container_impl1_TEST
