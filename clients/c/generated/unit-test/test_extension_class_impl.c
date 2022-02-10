#ifndef extension_class_impl_TEST
#define extension_class_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define extension_class_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/extension_class_impl.h"
extension_class_impl_t* instantiate_extension_class_impl(int include_optional);

#include "test_extension_class_impllinks.c"


extension_class_impl_t* instantiate_extension_class_impl(int include_optional) {
  extension_class_impl_t* extension_class_impl = NULL;
  if (include_optional) {
    extension_class_impl = extension_class_impl_create(
      "0",
       // false, not to have infinite recursion
      instantiate_extension_class_impllinks(0),
      list_createList()
    );
  } else {
    extension_class_impl = extension_class_impl_create(
      "0",
      NULL,
      list_createList()
    );
  }

  return extension_class_impl;
}


#ifdef extension_class_impl_MAIN

void test_extension_class_impl(int include_optional) {
    extension_class_impl_t* extension_class_impl_1 = instantiate_extension_class_impl(include_optional);

	cJSON* jsonextension_class_impl_1 = extension_class_impl_convertToJSON(extension_class_impl_1);
	printf("extension_class_impl :\n%s\n", cJSON_Print(jsonextension_class_impl_1));
	extension_class_impl_t* extension_class_impl_2 = extension_class_impl_parseFromJSON(jsonextension_class_impl_1);
	cJSON* jsonextension_class_impl_2 = extension_class_impl_convertToJSON(extension_class_impl_2);
	printf("repeating extension_class_impl:\n%s\n", cJSON_Print(jsonextension_class_impl_2));
}

int main() {
  test_extension_class_impl(1);
  test_extension_class_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // extension_class_impl_MAIN
#endif // extension_class_impl_TEST
