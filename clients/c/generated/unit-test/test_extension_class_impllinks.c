#ifndef extension_class_impllinks_TEST
#define extension_class_impllinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define extension_class_impllinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/extension_class_impllinks.h"
extension_class_impllinks_t* instantiate_extension_class_impllinks(int include_optional);

#include "test_link.c"


extension_class_impllinks_t* instantiate_extension_class_impllinks(int include_optional) {
  extension_class_impllinks_t* extension_class_impllinks = NULL;
  if (include_optional) {
    extension_class_impllinks = extension_class_impllinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    extension_class_impllinks = extension_class_impllinks_create(
      NULL,
      "0"
    );
  }

  return extension_class_impllinks;
}


#ifdef extension_class_impllinks_MAIN

void test_extension_class_impllinks(int include_optional) {
    extension_class_impllinks_t* extension_class_impllinks_1 = instantiate_extension_class_impllinks(include_optional);

	cJSON* jsonextension_class_impllinks_1 = extension_class_impllinks_convertToJSON(extension_class_impllinks_1);
	printf("extension_class_impllinks :\n%s\n", cJSON_Print(jsonextension_class_impllinks_1));
	extension_class_impllinks_t* extension_class_impllinks_2 = extension_class_impllinks_parseFromJSON(jsonextension_class_impllinks_1);
	cJSON* jsonextension_class_impllinks_2 = extension_class_impllinks_convertToJSON(extension_class_impllinks_2);
	printf("repeating extension_class_impllinks:\n%s\n", cJSON_Print(jsonextension_class_impllinks_2));
}

int main() {
  test_extension_class_impllinks(1);
  test_extension_class_impllinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // extension_class_impllinks_MAIN
#endif // extension_class_impllinks_TEST
