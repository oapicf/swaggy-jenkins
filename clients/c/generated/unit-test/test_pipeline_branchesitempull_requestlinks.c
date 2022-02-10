#ifndef pipeline_branchesitempull_requestlinks_TEST
#define pipeline_branchesitempull_requestlinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_branchesitempull_requestlinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_branchesitempull_requestlinks.h"
pipeline_branchesitempull_requestlinks_t* instantiate_pipeline_branchesitempull_requestlinks(int include_optional);



pipeline_branchesitempull_requestlinks_t* instantiate_pipeline_branchesitempull_requestlinks(int include_optional) {
  pipeline_branchesitempull_requestlinks_t* pipeline_branchesitempull_requestlinks = NULL;
  if (include_optional) {
    pipeline_branchesitempull_requestlinks = pipeline_branchesitempull_requestlinks_create(
      "0",
      "0"
    );
  } else {
    pipeline_branchesitempull_requestlinks = pipeline_branchesitempull_requestlinks_create(
      "0",
      "0"
    );
  }

  return pipeline_branchesitempull_requestlinks;
}


#ifdef pipeline_branchesitempull_requestlinks_MAIN

void test_pipeline_branchesitempull_requestlinks(int include_optional) {
    pipeline_branchesitempull_requestlinks_t* pipeline_branchesitempull_requestlinks_1 = instantiate_pipeline_branchesitempull_requestlinks(include_optional);

	cJSON* jsonpipeline_branchesitempull_requestlinks_1 = pipeline_branchesitempull_requestlinks_convertToJSON(pipeline_branchesitempull_requestlinks_1);
	printf("pipeline_branchesitempull_requestlinks :\n%s\n", cJSON_Print(jsonpipeline_branchesitempull_requestlinks_1));
	pipeline_branchesitempull_requestlinks_t* pipeline_branchesitempull_requestlinks_2 = pipeline_branchesitempull_requestlinks_parseFromJSON(jsonpipeline_branchesitempull_requestlinks_1);
	cJSON* jsonpipeline_branchesitempull_requestlinks_2 = pipeline_branchesitempull_requestlinks_convertToJSON(pipeline_branchesitempull_requestlinks_2);
	printf("repeating pipeline_branchesitempull_requestlinks:\n%s\n", cJSON_Print(jsonpipeline_branchesitempull_requestlinks_2));
}

int main() {
  test_pipeline_branchesitempull_requestlinks(1);
  test_pipeline_branchesitempull_requestlinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_branchesitempull_requestlinks_MAIN
#endif // pipeline_branchesitempull_requestlinks_TEST
