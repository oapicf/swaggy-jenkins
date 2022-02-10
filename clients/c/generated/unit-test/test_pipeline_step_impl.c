#ifndef pipeline_step_impl_TEST
#define pipeline_step_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_step_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_step_impl.h"
pipeline_step_impl_t* instantiate_pipeline_step_impl(int include_optional);

#include "test_pipeline_step_impllinks.c"
#include "test_input_step_impl.c"


pipeline_step_impl_t* instantiate_pipeline_step_impl(int include_optional) {
  pipeline_step_impl_t* pipeline_step_impl = NULL;
  if (include_optional) {
    pipeline_step_impl = pipeline_step_impl_create(
      "0",
       // false, not to have infinite recursion
      instantiate_pipeline_step_impllinks(0),
      "0",
      56,
      "0",
       // false, not to have infinite recursion
      instantiate_input_step_impl(0),
      "0",
      "0",
      "0"
    );
  } else {
    pipeline_step_impl = pipeline_step_impl_create(
      "0",
      NULL,
      "0",
      56,
      "0",
      NULL,
      "0",
      "0",
      "0"
    );
  }

  return pipeline_step_impl;
}


#ifdef pipeline_step_impl_MAIN

void test_pipeline_step_impl(int include_optional) {
    pipeline_step_impl_t* pipeline_step_impl_1 = instantiate_pipeline_step_impl(include_optional);

	cJSON* jsonpipeline_step_impl_1 = pipeline_step_impl_convertToJSON(pipeline_step_impl_1);
	printf("pipeline_step_impl :\n%s\n", cJSON_Print(jsonpipeline_step_impl_1));
	pipeline_step_impl_t* pipeline_step_impl_2 = pipeline_step_impl_parseFromJSON(jsonpipeline_step_impl_1);
	cJSON* jsonpipeline_step_impl_2 = pipeline_step_impl_convertToJSON(pipeline_step_impl_2);
	printf("repeating pipeline_step_impl:\n%s\n", cJSON_Print(jsonpipeline_step_impl_2));
}

int main() {
  test_pipeline_step_impl(1);
  test_pipeline_step_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_step_impl_MAIN
#endif // pipeline_step_impl_TEST
