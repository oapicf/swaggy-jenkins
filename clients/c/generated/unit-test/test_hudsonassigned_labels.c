#ifndef hudsonassigned_labels_TEST
#define hudsonassigned_labels_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define hudsonassigned_labels_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/hudsonassigned_labels.h"
hudsonassigned_labels_t* instantiate_hudsonassigned_labels(int include_optional);



hudsonassigned_labels_t* instantiate_hudsonassigned_labels(int include_optional) {
  hudsonassigned_labels_t* hudsonassigned_labels = NULL;
  if (include_optional) {
    hudsonassigned_labels = hudsonassigned_labels_create(
      "0"
    );
  } else {
    hudsonassigned_labels = hudsonassigned_labels_create(
      "0"
    );
  }

  return hudsonassigned_labels;
}


#ifdef hudsonassigned_labels_MAIN

void test_hudsonassigned_labels(int include_optional) {
    hudsonassigned_labels_t* hudsonassigned_labels_1 = instantiate_hudsonassigned_labels(include_optional);

	cJSON* jsonhudsonassigned_labels_1 = hudsonassigned_labels_convertToJSON(hudsonassigned_labels_1);
	printf("hudsonassigned_labels :\n%s\n", cJSON_Print(jsonhudsonassigned_labels_1));
	hudsonassigned_labels_t* hudsonassigned_labels_2 = hudsonassigned_labels_parseFromJSON(jsonhudsonassigned_labels_1);
	cJSON* jsonhudsonassigned_labels_2 = hudsonassigned_labels_convertToJSON(hudsonassigned_labels_2);
	printf("repeating hudsonassigned_labels:\n%s\n", cJSON_Print(jsonhudsonassigned_labels_2));
}

int main() {
  test_hudsonassigned_labels(1);
  test_hudsonassigned_labels(0);

  printf("Hello world \n");
  return 0;
}

#endif // hudsonassigned_labels_MAIN
#endif // hudsonassigned_labels_TEST
