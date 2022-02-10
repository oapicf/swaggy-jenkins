#ifndef pipeline_impl_TEST
#define pipeline_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_impl.h"
pipeline_impl_t* instantiate_pipeline_impl(int include_optional);

#include "test_pipeline_impllinks.c"


pipeline_impl_t* instantiate_pipeline_impl(int include_optional) {
  pipeline_impl_t* pipeline_impl = NULL;
  if (include_optional) {
    pipeline_impl = pipeline_impl_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      56,
       // false, not to have infinite recursion
      instantiate_pipeline_impllinks(0)
    );
  } else {
    pipeline_impl = pipeline_impl_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      56,
      NULL
    );
  }

  return pipeline_impl;
}


#ifdef pipeline_impl_MAIN

void test_pipeline_impl(int include_optional) {
    pipeline_impl_t* pipeline_impl_1 = instantiate_pipeline_impl(include_optional);

	cJSON* jsonpipeline_impl_1 = pipeline_impl_convertToJSON(pipeline_impl_1);
	printf("pipeline_impl :\n%s\n", cJSON_Print(jsonpipeline_impl_1));
	pipeline_impl_t* pipeline_impl_2 = pipeline_impl_parseFromJSON(jsonpipeline_impl_1);
	cJSON* jsonpipeline_impl_2 = pipeline_impl_convertToJSON(pipeline_impl_2);
	printf("repeating pipeline_impl:\n%s\n", cJSON_Print(jsonpipeline_impl_2));
}

int main() {
  test_pipeline_impl(1);
  test_pipeline_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_impl_MAIN
#endif // pipeline_impl_TEST
