#ifndef branch_impl_TEST
#define branch_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define branch_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/branch_impl.h"
branch_impl_t* instantiate_branch_impl(int include_optional);

#include "test_branch_implpermissions.c"
#include "test_branch_impllinks.c"
#include "test_pipeline_run_impl.c"


branch_impl_t* instantiate_branch_impl(int include_optional) {
  branch_impl_t* branch_impl = NULL;
  if (include_optional) {
    branch_impl = branch_impl_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      list_createList(),
       // false, not to have infinite recursion
      instantiate_branch_implpermissions(0),
      56,
      "0",
       // false, not to have infinite recursion
      instantiate_branch_impllinks(0),
       // false, not to have infinite recursion
      instantiate_pipeline_run_impl(0)
    );
  } else {
    branch_impl = branch_impl_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      list_createList(),
      NULL,
      56,
      "0",
      NULL,
      NULL
    );
  }

  return branch_impl;
}


#ifdef branch_impl_MAIN

void test_branch_impl(int include_optional) {
    branch_impl_t* branch_impl_1 = instantiate_branch_impl(include_optional);

	cJSON* jsonbranch_impl_1 = branch_impl_convertToJSON(branch_impl_1);
	printf("branch_impl :\n%s\n", cJSON_Print(jsonbranch_impl_1));
	branch_impl_t* branch_impl_2 = branch_impl_parseFromJSON(jsonbranch_impl_1);
	cJSON* jsonbranch_impl_2 = branch_impl_convertToJSON(branch_impl_2);
	printf("repeating branch_impl:\n%s\n", cJSON_Print(jsonbranch_impl_2));
}

int main() {
  test_branch_impl(1);
  test_branch_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // branch_impl_MAIN
#endif // branch_impl_TEST
