#ifndef pipeline_branchesitempull_request_TEST
#define pipeline_branchesitempull_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_branchesitempull_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_branchesitempull_request.h"
pipeline_branchesitempull_request_t* instantiate_pipeline_branchesitempull_request(int include_optional);

#include "test_pipeline_branchesitempull_requestlinks.c"


pipeline_branchesitempull_request_t* instantiate_pipeline_branchesitempull_request(int include_optional) {
  pipeline_branchesitempull_request_t* pipeline_branchesitempull_request = NULL;
  if (include_optional) {
    pipeline_branchesitempull_request = pipeline_branchesitempull_request_create(
       // false, not to have infinite recursion
      instantiate_pipeline_branchesitempull_requestlinks(0),
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    pipeline_branchesitempull_request = pipeline_branchesitempull_request_create(
      NULL,
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return pipeline_branchesitempull_request;
}


#ifdef pipeline_branchesitempull_request_MAIN

void test_pipeline_branchesitempull_request(int include_optional) {
    pipeline_branchesitempull_request_t* pipeline_branchesitempull_request_1 = instantiate_pipeline_branchesitempull_request(include_optional);

	cJSON* jsonpipeline_branchesitempull_request_1 = pipeline_branchesitempull_request_convertToJSON(pipeline_branchesitempull_request_1);
	printf("pipeline_branchesitempull_request :\n%s\n", cJSON_Print(jsonpipeline_branchesitempull_request_1));
	pipeline_branchesitempull_request_t* pipeline_branchesitempull_request_2 = pipeline_branchesitempull_request_parseFromJSON(jsonpipeline_branchesitempull_request_1);
	cJSON* jsonpipeline_branchesitempull_request_2 = pipeline_branchesitempull_request_convertToJSON(pipeline_branchesitempull_request_2);
	printf("repeating pipeline_branchesitempull_request:\n%s\n", cJSON_Print(jsonpipeline_branchesitempull_request_2));
}

int main() {
  test_pipeline_branchesitempull_request(1);
  test_pipeline_branchesitempull_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_branchesitempull_request_MAIN
#endif // pipeline_branchesitempull_request_TEST
