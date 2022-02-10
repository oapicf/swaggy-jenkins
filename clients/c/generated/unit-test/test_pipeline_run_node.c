#ifndef pipeline_run_node_TEST
#define pipeline_run_node_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipeline_run_node_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipeline_run_node.h"
pipeline_run_node_t* instantiate_pipeline_run_node(int include_optional);



pipeline_run_node_t* instantiate_pipeline_run_node(int include_optional) {
  pipeline_run_node_t* pipeline_run_node = NULL;
  if (include_optional) {
    pipeline_run_node = pipeline_run_node_create(
      "0",
      "0",
      56,
      list_createList(),
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    pipeline_run_node = pipeline_run_node_create(
      "0",
      "0",
      56,
      list_createList(),
      "0",
      "0",
      "0",
      "0"
    );
  }

  return pipeline_run_node;
}


#ifdef pipeline_run_node_MAIN

void test_pipeline_run_node(int include_optional) {
    pipeline_run_node_t* pipeline_run_node_1 = instantiate_pipeline_run_node(include_optional);

	cJSON* jsonpipeline_run_node_1 = pipeline_run_node_convertToJSON(pipeline_run_node_1);
	printf("pipeline_run_node :\n%s\n", cJSON_Print(jsonpipeline_run_node_1));
	pipeline_run_node_t* pipeline_run_node_2 = pipeline_run_node_parseFromJSON(jsonpipeline_run_node_1);
	cJSON* jsonpipeline_run_node_2 = pipeline_run_node_convertToJSON(pipeline_run_node_2);
	printf("repeating pipeline_run_node:\n%s\n", cJSON_Print(jsonpipeline_run_node_2));
}

int main() {
  test_pipeline_run_node(1);
  test_pipeline_run_node(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipeline_run_node_MAIN
#endif // pipeline_run_node_TEST
