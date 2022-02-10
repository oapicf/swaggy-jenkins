#ifndef multibranch_pipeline_TEST
#define multibranch_pipeline_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define multibranch_pipeline_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/multibranch_pipeline.h"
multibranch_pipeline_t* instantiate_multibranch_pipeline(int include_optional);



multibranch_pipeline_t* instantiate_multibranch_pipeline(int include_optional) {
  multibranch_pipeline_t* multibranch_pipeline = NULL;
  if (include_optional) {
    multibranch_pipeline = multibranch_pipeline_create(
      "0",
      56,
      "0",
      "0",
      "0",
      56,
      list_createList(),
      56,
      56,
      56,
      56,
      56,
      56,
      "0"
    );
  } else {
    multibranch_pipeline = multibranch_pipeline_create(
      "0",
      56,
      "0",
      "0",
      "0",
      56,
      list_createList(),
      56,
      56,
      56,
      56,
      56,
      56,
      "0"
    );
  }

  return multibranch_pipeline;
}


#ifdef multibranch_pipeline_MAIN

void test_multibranch_pipeline(int include_optional) {
    multibranch_pipeline_t* multibranch_pipeline_1 = instantiate_multibranch_pipeline(include_optional);

	cJSON* jsonmultibranch_pipeline_1 = multibranch_pipeline_convertToJSON(multibranch_pipeline_1);
	printf("multibranch_pipeline :\n%s\n", cJSON_Print(jsonmultibranch_pipeline_1));
	multibranch_pipeline_t* multibranch_pipeline_2 = multibranch_pipeline_parseFromJSON(jsonmultibranch_pipeline_1);
	cJSON* jsonmultibranch_pipeline_2 = multibranch_pipeline_convertToJSON(multibranch_pipeline_2);
	printf("repeating multibranch_pipeline:\n%s\n", cJSON_Print(jsonmultibranch_pipeline_2));
}

int main() {
  test_multibranch_pipeline(1);
  test_multibranch_pipeline(0);

  printf("Hello world \n");
  return 0;
}

#endif // multibranch_pipeline_MAIN
#endif // multibranch_pipeline_TEST
