#ifndef pipeline_TEST
#define pipeline_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline.h"
pipeline_t* instantiate_pipeline(int include_optional);

#include "test_pipelinelatest_run.c"


pipeline_t* instantiate_pipeline(int include_optional) {
  pipeline_t* pipeline = NULL;
  if (include_optional) {
    pipeline = pipeline_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      56,
       // false, not to have infinite recursion
      instantiate_pipelinelatest_run(0)
    );
  } else {
    pipeline = pipeline_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      56,
      NULL
    );
  }

  return pipeline;
}


#ifdef pipeline_MAIN

void test_pipeline(int include_optional) {
    pipeline_t* pipeline_1 = instantiate_pipeline(include_optional);

	cJSON* jsonpipeline_1 = pipeline_convertToJSON(pipeline_1);
	printf("pipeline :\n%s\n", cJSON_Print(jsonpipeline_1));
	pipeline_t* pipeline_2 = pipeline_parseFromJSON(jsonpipeline_1);
	cJSON* jsonpipeline_2 = pipeline_convertToJSON(pipeline_2);
	printf("repeating pipeline:\n%s\n", cJSON_Print(jsonpipeline_2));
}

int main() {
  test_pipeline(1);
  test_pipeline(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_MAIN
#endif // pipeline_TEST
