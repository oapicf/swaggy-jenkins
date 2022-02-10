#ifndef classes_by_class_TEST
#define classes_by_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define classes_by_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/classes_by_class.h"
classes_by_class_t* instantiate_classes_by_class(int include_optional);



classes_by_class_t* instantiate_classes_by_class(int include_optional) {
  classes_by_class_t* classes_by_class = NULL;
  if (include_optional) {
    classes_by_class = classes_by_class_create(
      list_createList(),
      "0"
    );
  } else {
    classes_by_class = classes_by_class_create(
      list_createList(),
      "0"
    );
  }

  return classes_by_class;
}


#ifdef classes_by_class_MAIN

void test_classes_by_class(int include_optional) {
    classes_by_class_t* classes_by_class_1 = instantiate_classes_by_class(include_optional);

	cJSON* jsonclasses_by_class_1 = classes_by_class_convertToJSON(classes_by_class_1);
	printf("classes_by_class :\n%s\n", cJSON_Print(jsonclasses_by_class_1));
	classes_by_class_t* classes_by_class_2 = classes_by_class_parseFromJSON(jsonclasses_by_class_1);
	cJSON* jsonclasses_by_class_2 = classes_by_class_convertToJSON(classes_by_class_2);
	printf("repeating classes_by_class:\n%s\n", cJSON_Print(jsonclasses_by_class_2));
}

int main() {
  test_classes_by_class(1);
  test_classes_by_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // classes_by_class_MAIN
#endif // classes_by_class_TEST
