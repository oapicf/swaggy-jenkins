#ifndef extension_class_container_impl1links_TEST
#define extension_class_container_impl1links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define extension_class_container_impl1links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/extension_class_container_impl1links.h"
extension_class_container_impl1links_t* instantiate_extension_class_container_impl1links(int include_optional);

#include "test_link.c"


extension_class_container_impl1links_t* instantiate_extension_class_container_impl1links(int include_optional) {
  extension_class_container_impl1links_t* extension_class_container_impl1links = NULL;
  if (include_optional) {
    extension_class_container_impl1links = extension_class_container_impl1links_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    extension_class_container_impl1links = extension_class_container_impl1links_create(
      NULL,
      "0"
    );
  }

  return extension_class_container_impl1links;
}


#ifdef extension_class_container_impl1links_MAIN

void test_extension_class_container_impl1links(int include_optional) {
    extension_class_container_impl1links_t* extension_class_container_impl1links_1 = instantiate_extension_class_container_impl1links(include_optional);

	cJSON* jsonextension_class_container_impl1links_1 = extension_class_container_impl1links_convertToJSON(extension_class_container_impl1links_1);
	printf("extension_class_container_impl1links :\n%s\n", cJSON_Print(jsonextension_class_container_impl1links_1));
	extension_class_container_impl1links_t* extension_class_container_impl1links_2 = extension_class_container_impl1links_parseFromJSON(jsonextension_class_container_impl1links_1);
	cJSON* jsonextension_class_container_impl1links_2 = extension_class_container_impl1links_convertToJSON(extension_class_container_impl1links_2);
	printf("repeating extension_class_container_impl1links:\n%s\n", cJSON_Print(jsonextension_class_container_impl1links_2));
}

int main() {
  test_extension_class_container_impl1links(1);
  test_extension_class_container_impl1links(0);

  printf("Hello world \n");
  return 0;
}

#endif // extension_class_container_impl1links_MAIN
#endif // extension_class_container_impl1links_TEST
