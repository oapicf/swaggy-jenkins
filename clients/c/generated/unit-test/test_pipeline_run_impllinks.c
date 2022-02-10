#ifndef pipeline_run_impllinks_TEST
#define pipeline_run_impllinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_run_impllinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_run_impllinks.h"
pipeline_run_impllinks_t* instantiate_pipeline_run_impllinks(int include_optional);

#include "test_link.c"
#include "test_link.c"
#include "test_link.c"
#include "test_link.c"
#include "test_link.c"


pipeline_run_impllinks_t* instantiate_pipeline_run_impllinks(int include_optional) {
  pipeline_run_impllinks_t* pipeline_run_impllinks = NULL;
  if (include_optional) {
    pipeline_run_impllinks = pipeline_run_impllinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
       // false, not to have infinite recursion
      instantiate_link(0),
       // false, not to have infinite recursion
      instantiate_link(0),
       // false, not to have infinite recursion
      instantiate_link(0),
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    pipeline_run_impllinks = pipeline_run_impllinks_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      "0"
    );
  }

  return pipeline_run_impllinks;
}


#ifdef pipeline_run_impllinks_MAIN

void test_pipeline_run_impllinks(int include_optional) {
    pipeline_run_impllinks_t* pipeline_run_impllinks_1 = instantiate_pipeline_run_impllinks(include_optional);

	cJSON* jsonpipeline_run_impllinks_1 = pipeline_run_impllinks_convertToJSON(pipeline_run_impllinks_1);
	printf("pipeline_run_impllinks :\n%s\n", cJSON_Print(jsonpipeline_run_impllinks_1));
	pipeline_run_impllinks_t* pipeline_run_impllinks_2 = pipeline_run_impllinks_parseFromJSON(jsonpipeline_run_impllinks_1);
	cJSON* jsonpipeline_run_impllinks_2 = pipeline_run_impllinks_convertToJSON(pipeline_run_impllinks_2);
	printf("repeating pipeline_run_impllinks:\n%s\n", cJSON_Print(jsonpipeline_run_impllinks_2));
}

int main() {
  test_pipeline_run_impllinks(1);
  test_pipeline_run_impllinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_run_impllinks_MAIN
#endif // pipeline_run_impllinks_TEST
