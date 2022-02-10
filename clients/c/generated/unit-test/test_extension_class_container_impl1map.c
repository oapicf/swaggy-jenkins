#ifndef extension_class_container_impl1map_TEST
#define extension_class_container_impl1map_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define extension_class_container_impl1map_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/extension_class_container_impl1map.h"
extension_class_container_impl1map_t* instantiate_extension_class_container_impl1map(int include_optional);

#include "test_extension_class_impl.c"
#include "test_extension_class_impl.c"


extension_class_container_impl1map_t* instantiate_extension_class_container_impl1map(int include_optional) {
  extension_class_container_impl1map_t* extension_class_container_impl1map = NULL;
  if (include_optional) {
    extension_class_container_impl1map = extension_class_container_impl1map_create(
       // false, not to have infinite recursion
      instantiate_extension_class_impl(0),
       // false, not to have infinite recursion
      instantiate_extension_class_impl(0),
      "0"
    );
  } else {
    extension_class_container_impl1map = extension_class_container_impl1map_create(
      NULL,
      NULL,
      "0"
    );
  }

  return extension_class_container_impl1map;
}


#ifdef extension_class_container_impl1map_MAIN

void test_extension_class_container_impl1map(int include_optional) {
    extension_class_container_impl1map_t* extension_class_container_impl1map_1 = instantiate_extension_class_container_impl1map(include_optional);

	cJSON* jsonextension_class_container_impl1map_1 = extension_class_container_impl1map_convertToJSON(extension_class_container_impl1map_1);
	printf("extension_class_container_impl1map :\n%s\n", cJSON_Print(jsonextension_class_container_impl1map_1));
	extension_class_container_impl1map_t* extension_class_container_impl1map_2 = extension_class_container_impl1map_parseFromJSON(jsonextension_class_container_impl1map_1);
	cJSON* jsonextension_class_container_impl1map_2 = extension_class_container_impl1map_convertToJSON(extension_class_container_impl1map_2);
	printf("repeating extension_class_container_impl1map:\n%s\n", cJSON_Print(jsonextension_class_container_impl1map_2));
}

int main() {
  test_extension_class_container_impl1map(1);
  test_extension_class_container_impl1map(0);

  printf("Hello world \n");
  return 0;
}

#endif // extension_class_container_impl1map_MAIN
#endif // extension_class_container_impl1map_TEST
