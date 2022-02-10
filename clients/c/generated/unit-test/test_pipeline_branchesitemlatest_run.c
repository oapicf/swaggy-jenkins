#ifndef pipeline_branchesitemlatest_run_TEST
#define pipeline_branchesitemlatest_run_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_branchesitemlatest_run_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_branchesitemlatest_run.h"
pipeline_branchesitemlatest_run_t* instantiate_pipeline_branchesitemlatest_run(int include_optional);



pipeline_branchesitemlatest_run_t* instantiate_pipeline_branchesitemlatest_run(int include_optional) {
  pipeline_branchesitemlatest_run_t* pipeline_branchesitemlatest_run = NULL;
  if (include_optional) {
    pipeline_branchesitemlatest_run = pipeline_branchesitemlatest_run_create(
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
      "0",
      "0"
    );
  } else {
    pipeline_branchesitemlatest_run = pipeline_branchesitemlatest_run_create(
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
      "0",
      "0"
    );
  }

  return pipeline_branchesitemlatest_run;
}


#ifdef pipeline_branchesitemlatest_run_MAIN

void test_pipeline_branchesitemlatest_run(int include_optional) {
    pipeline_branchesitemlatest_run_t* pipeline_branchesitemlatest_run_1 = instantiate_pipeline_branchesitemlatest_run(include_optional);

	cJSON* jsonpipeline_branchesitemlatest_run_1 = pipeline_branchesitemlatest_run_convertToJSON(pipeline_branchesitemlatest_run_1);
	printf("pipeline_branchesitemlatest_run :\n%s\n", cJSON_Print(jsonpipeline_branchesitemlatest_run_1));
	pipeline_branchesitemlatest_run_t* pipeline_branchesitemlatest_run_2 = pipeline_branchesitemlatest_run_parseFromJSON(jsonpipeline_branchesitemlatest_run_1);
	cJSON* jsonpipeline_branchesitemlatest_run_2 = pipeline_branchesitemlatest_run_convertToJSON(pipeline_branchesitemlatest_run_2);
	printf("repeating pipeline_branchesitemlatest_run:\n%s\n", cJSON_Print(jsonpipeline_branchesitemlatest_run_2));
}

int main() {
  test_pipeline_branchesitemlatest_run(1);
  test_pipeline_branchesitemlatest_run(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_branchesitemlatest_run_MAIN
#endif // pipeline_branchesitemlatest_run_TEST
