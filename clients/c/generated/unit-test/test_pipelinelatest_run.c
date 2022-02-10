#ifndef pipelinelatest_run_TEST
#define pipelinelatest_run_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipelinelatest_run_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipelinelatest_run.h"
pipelinelatest_run_t* instantiate_pipelinelatest_run(int include_optional);



pipelinelatest_run_t* instantiate_pipelinelatest_run(int include_optional) {
  pipelinelatest_run_t* pipelinelatest_run = NULL;
  if (include_optional) {
    pipelinelatest_run = pipelinelatest_run_create(
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
      "0",
      "0"
    );
  } else {
    pipelinelatest_run = pipelinelatest_run_create(
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
      "0",
      "0"
    );
  }

  return pipelinelatest_run;
}


#ifdef pipelinelatest_run_MAIN

void test_pipelinelatest_run(int include_optional) {
    pipelinelatest_run_t* pipelinelatest_run_1 = instantiate_pipelinelatest_run(include_optional);

	cJSON* jsonpipelinelatest_run_1 = pipelinelatest_run_convertToJSON(pipelinelatest_run_1);
	printf("pipelinelatest_run :\n%s\n", cJSON_Print(jsonpipelinelatest_run_1));
	pipelinelatest_run_t* pipelinelatest_run_2 = pipelinelatest_run_parseFromJSON(jsonpipelinelatest_run_1);
	cJSON* jsonpipelinelatest_run_2 = pipelinelatest_run_convertToJSON(pipelinelatest_run_2);
	printf("repeating pipelinelatest_run:\n%s\n", cJSON_Print(jsonpipelinelatest_run_2));
}

int main() {
  test_pipelinelatest_run(1);
  test_pipelinelatest_run(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipelinelatest_run_MAIN
#endif // pipelinelatest_run_TEST
