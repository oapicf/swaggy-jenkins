#ifndef branch_implpermissions_TEST
#define branch_implpermissions_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define branch_implpermissions_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/branch_implpermissions.h"
branch_implpermissions_t* instantiate_branch_implpermissions(int include_optional);



branch_implpermissions_t* instantiate_branch_implpermissions(int include_optional) {
  branch_implpermissions_t* branch_implpermissions = NULL;
  if (include_optional) {
    branch_implpermissions = branch_implpermissions_create(
      1,
      1,
      1,
      1,
      "0"
    );
  } else {
    branch_implpermissions = branch_implpermissions_create(
      1,
      1,
      1,
      1,
      "0"
    );
  }

  return branch_implpermissions;
}


#ifdef branch_implpermissions_MAIN

void test_branch_implpermissions(int include_optional) {
    branch_implpermissions_t* branch_implpermissions_1 = instantiate_branch_implpermissions(include_optional);

	cJSON* jsonbranch_implpermissions_1 = branch_implpermissions_convertToJSON(branch_implpermissions_1);
	printf("branch_implpermissions :\n%s\n", cJSON_Print(jsonbranch_implpermissions_1));
	branch_implpermissions_t* branch_implpermissions_2 = branch_implpermissions_parseFromJSON(jsonbranch_implpermissions_1);
	cJSON* jsonbranch_implpermissions_2 = branch_implpermissions_convertToJSON(branch_implpermissions_2);
	printf("repeating branch_implpermissions:\n%s\n", cJSON_Print(jsonbranch_implpermissions_2));
}

int main() {
  test_branch_implpermissions(1);
  test_branch_implpermissions(0);

  printf("Hello world \n");
  return 0;
}

#endif // branch_implpermissions_MAIN
#endif // branch_implpermissions_TEST
