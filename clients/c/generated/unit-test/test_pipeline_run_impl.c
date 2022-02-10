#ifndef pipeline_run_impl_TEST
#define pipeline_run_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_run_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_run_impl.h"
pipeline_run_impl_t* instantiate_pipeline_run_impl(int include_optional);

#include "test_pipeline_run_impllinks.c"


pipeline_run_impl_t* instantiate_pipeline_run_impl(int include_optional) {
  pipeline_run_impl_t* pipeline_run_impl = NULL;
  if (include_optional) {
    pipeline_run_impl = pipeline_run_impl_create(
      "0",
       // false, not to have infinite recursion
      instantiate_pipeline_run_impllinks(0),
      56,
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    pipeline_run_impl = pipeline_run_impl_create(
      "0",
      NULL,
      56,
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return pipeline_run_impl;
}


#ifdef pipeline_run_impl_MAIN

void test_pipeline_run_impl(int include_optional) {
    pipeline_run_impl_t* pipeline_run_impl_1 = instantiate_pipeline_run_impl(include_optional);

	cJSON* jsonpipeline_run_impl_1 = pipeline_run_impl_convertToJSON(pipeline_run_impl_1);
	printf("pipeline_run_impl :\n%s\n", cJSON_Print(jsonpipeline_run_impl_1));
	pipeline_run_impl_t* pipeline_run_impl_2 = pipeline_run_impl_parseFromJSON(jsonpipeline_run_impl_1);
	cJSON* jsonpipeline_run_impl_2 = pipeline_run_impl_convertToJSON(pipeline_run_impl_2);
	printf("repeating pipeline_run_impl:\n%s\n", cJSON_Print(jsonpipeline_run_impl_2));
}

int main() {
  test_pipeline_run_impl(1);
  test_pipeline_run_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_run_impl_MAIN
#endif // pipeline_run_impl_TEST
