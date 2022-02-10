#ifndef pipeline_impllinks_TEST
#define pipeline_impllinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_impllinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_impllinks.h"
pipeline_impllinks_t* instantiate_pipeline_impllinks(int include_optional);

#include "test_link.c"
#include "test_link.c"
#include "test_link.c"
#include "test_link.c"


pipeline_impllinks_t* instantiate_pipeline_impllinks(int include_optional) {
  pipeline_impllinks_t* pipeline_impllinks = NULL;
  if (include_optional) {
    pipeline_impllinks = pipeline_impllinks_create(
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
    pipeline_impllinks = pipeline_impllinks_create(
      NULL,
      NULL,
      NULL,
      NULL,
      "0"
    );
  }

  return pipeline_impllinks;
}


#ifdef pipeline_impllinks_MAIN

void test_pipeline_impllinks(int include_optional) {
    pipeline_impllinks_t* pipeline_impllinks_1 = instantiate_pipeline_impllinks(include_optional);

	cJSON* jsonpipeline_impllinks_1 = pipeline_impllinks_convertToJSON(pipeline_impllinks_1);
	printf("pipeline_impllinks :\n%s\n", cJSON_Print(jsonpipeline_impllinks_1));
	pipeline_impllinks_t* pipeline_impllinks_2 = pipeline_impllinks_parseFromJSON(jsonpipeline_impllinks_1);
	cJSON* jsonpipeline_impllinks_2 = pipeline_impllinks_convertToJSON(pipeline_impllinks_2);
	printf("repeating pipeline_impllinks:\n%s\n", cJSON_Print(jsonpipeline_impllinks_2));
}

int main() {
  test_pipeline_impllinks(1);
  test_pipeline_impllinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_impllinks_MAIN
#endif // pipeline_impllinks_TEST
