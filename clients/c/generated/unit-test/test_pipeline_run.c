#ifndef pipeline_run_TEST
#define pipeline_run_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_run_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_run.h"
pipeline_run_t* instantiate_pipeline_run(int include_optional);



pipeline_run_t* instantiate_pipeline_run(int include_optional) {
  pipeline_run_t* pipeline_run = NULL;
  if (include_optional) {
    pipeline_run = pipeline_run_create(
      "0",
      list_createList(),
      56,
      56,
      "0",
      "0",
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
    pipeline_run = pipeline_run_create(
      "0",
      list_createList(),
      56,
      56,
      "0",
      "0",
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

  return pipeline_run;
}


#ifdef pipeline_run_MAIN

void test_pipeline_run(int include_optional) {
    pipeline_run_t* pipeline_run_1 = instantiate_pipeline_run(include_optional);

	cJSON* jsonpipeline_run_1 = pipeline_run_convertToJSON(pipeline_run_1);
	printf("pipeline_run :\n%s\n", cJSON_Print(jsonpipeline_run_1));
	pipeline_run_t* pipeline_run_2 = pipeline_run_parseFromJSON(jsonpipeline_run_1);
	cJSON* jsonpipeline_run_2 = pipeline_run_convertToJSON(pipeline_run_2);
	printf("repeating pipeline_run:\n%s\n", cJSON_Print(jsonpipeline_run_2));
}

int main() {
  test_pipeline_run(1);
  test_pipeline_run(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_run_MAIN
#endif // pipeline_run_TEST
