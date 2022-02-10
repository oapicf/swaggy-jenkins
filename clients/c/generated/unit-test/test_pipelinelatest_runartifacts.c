#ifndef pipelinelatest_runartifacts_TEST
#define pipelinelatest_runartifacts_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pipelinelatest_runartifacts_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pipelinelatest_runartifacts.h"
pipelinelatest_runartifacts_t* instantiate_pipelinelatest_runartifacts(int include_optional);



pipelinelatest_runartifacts_t* instantiate_pipelinelatest_runartifacts(int include_optional) {
  pipelinelatest_runartifacts_t* pipelinelatest_runartifacts = NULL;
  if (include_optional) {
    pipelinelatest_runartifacts = pipelinelatest_runartifacts_create(
      "0",
      56,
      "0",
      "0"
    );
  } else {
    pipelinelatest_runartifacts = pipelinelatest_runartifacts_create(
      "0",
      56,
      "0",
      "0"
    );
  }

  return pipelinelatest_runartifacts;
}


#ifdef pipelinelatest_runartifacts_MAIN

void test_pipelinelatest_runartifacts(int include_optional) {
    pipelinelatest_runartifacts_t* pipelinelatest_runartifacts_1 = instantiate_pipelinelatest_runartifacts(include_optional);

	cJSON* jsonpipelinelatest_runartifacts_1 = pipelinelatest_runartifacts_convertToJSON(pipelinelatest_runartifacts_1);
	printf("pipelinelatest_runartifacts :\n%s\n", cJSON_Print(jsonpipelinelatest_runartifacts_1));
	pipelinelatest_runartifacts_t* pipelinelatest_runartifacts_2 = pipelinelatest_runartifacts_parseFromJSON(jsonpipelinelatest_runartifacts_1);
	cJSON* jsonpipelinelatest_runartifacts_2 = pipelinelatest_runartifacts_convertToJSON(pipelinelatest_runartifacts_2);
	printf("repeating pipelinelatest_runartifacts:\n%s\n", cJSON_Print(jsonpipelinelatest_runartifacts_2));
}

int main() {
  test_pipelinelatest_runartifacts(1);
  test_pipelinelatest_runartifacts(0);

  printf("Hello world \n");
  return 0;
}

#endif // pipelinelatest_runartifacts_MAIN
#endif // pipelinelatest_runartifacts_TEST
