#ifndef pipeline_run_nodeedges_TEST
#define pipeline_run_nodeedges_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_run_nodeedges_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_run_nodeedges.h"
pipeline_run_nodeedges_t* instantiate_pipeline_run_nodeedges(int include_optional);



pipeline_run_nodeedges_t* instantiate_pipeline_run_nodeedges(int include_optional) {
  pipeline_run_nodeedges_t* pipeline_run_nodeedges = NULL;
  if (include_optional) {
    pipeline_run_nodeedges = pipeline_run_nodeedges_create(
      "0",
      "0"
    );
  } else {
    pipeline_run_nodeedges = pipeline_run_nodeedges_create(
      "0",
      "0"
    );
  }

  return pipeline_run_nodeedges;
}


#ifdef pipeline_run_nodeedges_MAIN

void test_pipeline_run_nodeedges(int include_optional) {
    pipeline_run_nodeedges_t* pipeline_run_nodeedges_1 = instantiate_pipeline_run_nodeedges(include_optional);

	cJSON* jsonpipeline_run_nodeedges_1 = pipeline_run_nodeedges_convertToJSON(pipeline_run_nodeedges_1);
	printf("pipeline_run_nodeedges :\n%s\n", cJSON_Print(jsonpipeline_run_nodeedges_1));
	pipeline_run_nodeedges_t* pipeline_run_nodeedges_2 = pipeline_run_nodeedges_parseFromJSON(jsonpipeline_run_nodeedges_1);
	cJSON* jsonpipeline_run_nodeedges_2 = pipeline_run_nodeedges_convertToJSON(pipeline_run_nodeedges_2);
	printf("repeating pipeline_run_nodeedges:\n%s\n", cJSON_Print(jsonpipeline_run_nodeedges_2));
}

int main() {
  test_pipeline_run_nodeedges(1);
  test_pipeline_run_nodeedges(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_run_nodeedges_MAIN
#endif // pipeline_run_nodeedges_TEST
