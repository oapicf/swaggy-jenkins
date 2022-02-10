#ifndef pipeline_runartifacts_TEST
#define pipeline_runartifacts_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_runartifacts_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_runartifacts.h"
pipeline_runartifacts_t* instantiate_pipeline_runartifacts(int include_optional);



pipeline_runartifacts_t* instantiate_pipeline_runartifacts(int include_optional) {
  pipeline_runartifacts_t* pipeline_runartifacts = NULL;
  if (include_optional) {
    pipeline_runartifacts = pipeline_runartifacts_create(
      "0",
      56,
      "0",
      "0"
    );
  } else {
    pipeline_runartifacts = pipeline_runartifacts_create(
      "0",
      56,
      "0",
      "0"
    );
  }

  return pipeline_runartifacts;
}


#ifdef pipeline_runartifacts_MAIN

void test_pipeline_runartifacts(int include_optional) {
    pipeline_runartifacts_t* pipeline_runartifacts_1 = instantiate_pipeline_runartifacts(include_optional);

	cJSON* jsonpipeline_runartifacts_1 = pipeline_runartifacts_convertToJSON(pipeline_runartifacts_1);
	printf("pipeline_runartifacts :\n%s\n", cJSON_Print(jsonpipeline_runartifacts_1));
	pipeline_runartifacts_t* pipeline_runartifacts_2 = pipeline_runartifacts_parseFromJSON(jsonpipeline_runartifacts_1);
	cJSON* jsonpipeline_runartifacts_2 = pipeline_runartifacts_convertToJSON(pipeline_runartifacts_2);
	printf("repeating pipeline_runartifacts:\n%s\n", cJSON_Print(jsonpipeline_runartifacts_2));
}

int main() {
  test_pipeline_runartifacts(1);
  test_pipeline_runartifacts(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_runartifacts_MAIN
#endif // pipeline_runartifacts_TEST
