#ifndef pipeline_folder_impl_TEST
#define pipeline_folder_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_folder_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_folder_impl.h"
pipeline_folder_impl_t* instantiate_pipeline_folder_impl(int include_optional);



pipeline_folder_impl_t* instantiate_pipeline_folder_impl(int include_optional) {
  pipeline_folder_impl_t* pipeline_folder_impl = NULL;
  if (include_optional) {
    pipeline_folder_impl = pipeline_folder_impl_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      56
    );
  } else {
    pipeline_folder_impl = pipeline_folder_impl_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      56
    );
  }

  return pipeline_folder_impl;
}


#ifdef pipeline_folder_impl_MAIN

void test_pipeline_folder_impl(int include_optional) {
    pipeline_folder_impl_t* pipeline_folder_impl_1 = instantiate_pipeline_folder_impl(include_optional);

	cJSON* jsonpipeline_folder_impl_1 = pipeline_folder_impl_convertToJSON(pipeline_folder_impl_1);
	printf("pipeline_folder_impl :\n%s\n", cJSON_Print(jsonpipeline_folder_impl_1));
	pipeline_folder_impl_t* pipeline_folder_impl_2 = pipeline_folder_impl_parseFromJSON(jsonpipeline_folder_impl_1);
	cJSON* jsonpipeline_folder_impl_2 = pipeline_folder_impl_convertToJSON(pipeline_folder_impl_2);
	printf("repeating pipeline_folder_impl:\n%s\n", cJSON_Print(jsonpipeline_folder_impl_2));
}

int main() {
  test_pipeline_folder_impl(1);
  test_pipeline_folder_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_folder_impl_MAIN
#endif // pipeline_folder_impl_TEST
