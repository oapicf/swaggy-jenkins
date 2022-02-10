#ifndef pipeline_activityartifacts_TEST
#define pipeline_activityartifacts_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_activityartifacts_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_activityartifacts.h"
pipeline_activityartifacts_t* instantiate_pipeline_activityartifacts(int include_optional);



pipeline_activityartifacts_t* instantiate_pipeline_activityartifacts(int include_optional) {
  pipeline_activityartifacts_t* pipeline_activityartifacts = NULL;
  if (include_optional) {
    pipeline_activityartifacts = pipeline_activityartifacts_create(
      "0",
      56,
      "0",
      "0"
    );
  } else {
    pipeline_activityartifacts = pipeline_activityartifacts_create(
      "0",
      56,
      "0",
      "0"
    );
  }

  return pipeline_activityartifacts;
}


#ifdef pipeline_activityartifacts_MAIN

void test_pipeline_activityartifacts(int include_optional) {
    pipeline_activityartifacts_t* pipeline_activityartifacts_1 = instantiate_pipeline_activityartifacts(include_optional);

	cJSON* jsonpipeline_activityartifacts_1 = pipeline_activityartifacts_convertToJSON(pipeline_activityartifacts_1);
	printf("pipeline_activityartifacts :\n%s\n", cJSON_Print(jsonpipeline_activityartifacts_1));
	pipeline_activityartifacts_t* pipeline_activityartifacts_2 = pipeline_activityartifacts_parseFromJSON(jsonpipeline_activityartifacts_1);
	cJSON* jsonpipeline_activityartifacts_2 = pipeline_activityartifacts_convertToJSON(pipeline_activityartifacts_2);
	printf("repeating pipeline_activityartifacts:\n%s\n", cJSON_Print(jsonpipeline_activityartifacts_2));
}

int main() {
  test_pipeline_activityartifacts(1);
  test_pipeline_activityartifacts(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_activityartifacts_MAIN
#endif // pipeline_activityartifacts_TEST
