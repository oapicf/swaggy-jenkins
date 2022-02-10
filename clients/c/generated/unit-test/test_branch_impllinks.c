#ifndef branch_impllinks_TEST
#define branch_impllinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define branch_impllinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/branch_impllinks.h"
branch_impllinks_t* instantiate_branch_impllinks(int include_optional);

#include "test_link.c"
#include "test_link.c"
#include "test_link.c"
#include "test_link.c"


branch_impllinks_t* instantiate_branch_impllinks(int include_optional) {
  branch_impllinks_t* branch_impllinks = NULL;
  if (include_optional) {
    branch_impllinks = branch_impllinks_create(
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
    branch_impllinks = branch_impllinks_create(
      NULL,
      NULL,
      NULL,
      NULL,
      "0"
    );
  }

  return branch_impllinks;
}


#ifdef branch_impllinks_MAIN

void test_branch_impllinks(int include_optional) {
    branch_impllinks_t* branch_impllinks_1 = instantiate_branch_impllinks(include_optional);

	cJSON* jsonbranch_impllinks_1 = branch_impllinks_convertToJSON(branch_impllinks_1);
	printf("branch_impllinks :\n%s\n", cJSON_Print(jsonbranch_impllinks_1));
	branch_impllinks_t* branch_impllinks_2 = branch_impllinks_parseFromJSON(jsonbranch_impllinks_1);
	cJSON* jsonbranch_impllinks_2 = branch_impllinks_convertToJSON(branch_impllinks_2);
	printf("repeating branch_impllinks:\n%s\n", cJSON_Print(jsonbranch_impllinks_2));
}

int main() {
  test_branch_impllinks(1);
  test_branch_impllinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // branch_impllinks_MAIN
#endif // branch_impllinks_TEST
