#ifndef pipeline_activity_TEST
#define pipeline_activity_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_activity_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_activity.h"
pipeline_activity_t* instantiate_pipeline_activity(int include_optional);



pipeline_activity_t* instantiate_pipeline_activity(int include_optional) {
  pipeline_activity_t* pipeline_activity = NULL;
  if (include_optional) {
    pipeline_activity = pipeline_activity_create(
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
    pipeline_activity = pipeline_activity_create(
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

  return pipeline_activity;
}


#ifdef pipeline_activity_MAIN

void test_pipeline_activity(int include_optional) {
    pipeline_activity_t* pipeline_activity_1 = instantiate_pipeline_activity(include_optional);

	cJSON* jsonpipeline_activity_1 = pipeline_activity_convertToJSON(pipeline_activity_1);
	printf("pipeline_activity :\n%s\n", cJSON_Print(jsonpipeline_activity_1));
	pipeline_activity_t* pipeline_activity_2 = pipeline_activity_parseFromJSON(jsonpipeline_activity_1);
	cJSON* jsonpipeline_activity_2 = pipeline_activity_convertToJSON(pipeline_activity_2);
	printf("repeating pipeline_activity:\n%s\n", cJSON_Print(jsonpipeline_activity_2));
}

int main() {
  test_pipeline_activity(1);
  test_pipeline_activity(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_activity_MAIN
#endif // pipeline_activity_TEST
