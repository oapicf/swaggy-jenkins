#ifndef pipeline_branchesitem_TEST
#define pipeline_branchesitem_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_branchesitem_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_branchesitem.h"
pipeline_branchesitem_t* instantiate_pipeline_branchesitem(int include_optional);

#include "test_pipeline_branchesitemlatest_run.c"
#include "test_pipeline_branchesitempull_request.c"


pipeline_branchesitem_t* instantiate_pipeline_branchesitem(int include_optional) {
  pipeline_branchesitem_t* pipeline_branchesitem = NULL;
  if (include_optional) {
    pipeline_branchesitem = pipeline_branchesitem_create(
      "0",
      56,
      "0",
      56,
       // false, not to have infinite recursion
      instantiate_pipeline_branchesitemlatest_run(0),
      "0",
       // false, not to have infinite recursion
      instantiate_pipeline_branchesitempull_request(0),
      56,
      "0"
    );
  } else {
    pipeline_branchesitem = pipeline_branchesitem_create(
      "0",
      56,
      "0",
      56,
      NULL,
      "0",
      NULL,
      56,
      "0"
    );
  }

  return pipeline_branchesitem;
}


#ifdef pipeline_branchesitem_MAIN

void test_pipeline_branchesitem(int include_optional) {
    pipeline_branchesitem_t* pipeline_branchesitem_1 = instantiate_pipeline_branchesitem(include_optional);

	cJSON* jsonpipeline_branchesitem_1 = pipeline_branchesitem_convertToJSON(pipeline_branchesitem_1);
	printf("pipeline_branchesitem :\n%s\n", cJSON_Print(jsonpipeline_branchesitem_1));
	pipeline_branchesitem_t* pipeline_branchesitem_2 = pipeline_branchesitem_parseFromJSON(jsonpipeline_branchesitem_1);
	cJSON* jsonpipeline_branchesitem_2 = pipeline_branchesitem_convertToJSON(pipeline_branchesitem_2);
	printf("repeating pipeline_branchesitem:\n%s\n", cJSON_Print(jsonpipeline_branchesitem_2));
}

int main() {
  test_pipeline_branchesitem(1);
  test_pipeline_branchesitem(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_branchesitem_MAIN
#endif // pipeline_branchesitem_TEST
