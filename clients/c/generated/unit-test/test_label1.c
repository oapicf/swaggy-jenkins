#ifndef label1_TEST
#define label1_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define label1_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/label1.h"
label1_t* instantiate_label1(int include_optional);



label1_t* instantiate_label1(int include_optional) {
  label1_t* label1 = NULL;
  if (include_optional) {
    label1 = label1_create(
      "0"
    );
  } else {
    label1 = label1_create(
      "0"
    );
  }

  return label1;
}


#ifdef label1_MAIN

void test_label1(int include_optional) {
    label1_t* label1_1 = instantiate_label1(include_optional);

	cJSON* jsonlabel1_1 = label1_convertToJSON(label1_1);
	printf("label1 :\n%s\n", cJSON_Print(jsonlabel1_1));
	label1_t* label1_2 = label1_parseFromJSON(jsonlabel1_1);
	cJSON* jsonlabel1_2 = label1_convertToJSON(label1_2);
	printf("repeating label1:\n%s\n", cJSON_Print(jsonlabel1_2));
}

int main() {
  test_label1(1);
  test_label1(0);

  printf("Hello world \n");
  return 0;
}

#endif // label1_MAIN
#endif // label1_TEST
