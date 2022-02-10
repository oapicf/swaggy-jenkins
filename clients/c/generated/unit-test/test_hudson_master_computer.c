#ifndef hudson_master_computer_TEST
#define hudson_master_computer_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define hudson_master_computer_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/hudson_master_computer.h"
hudson_master_computer_t* instantiate_hudson_master_computer(int include_optional);

#include "test_label1.c"
#include "test_hudson_master_computermonitor_data.c"


hudson_master_computer_t* instantiate_hudson_master_computer(int include_optional) {
  hudson_master_computer_t* hudson_master_computer = NULL;
  if (include_optional) {
    hudson_master_computer = hudson_master_computer_create(
      "0",
      "0",
      list_createList(),
      "0",
      "0",
      1,
      1,
      1,
       // false, not to have infinite recursion
      instantiate_label1(0),
      1,
       // false, not to have infinite recursion
      instantiate_hudson_master_computermonitor_data(0),
      56,
      1,
      "0",
      "0",
      1
    );
  } else {
    hudson_master_computer = hudson_master_computer_create(
      "0",
      "0",
      list_createList(),
      "0",
      "0",
      1,
      1,
      1,
      NULL,
      1,
      NULL,
      56,
      1,
      "0",
      "0",
      1
    );
  }

  return hudson_master_computer;
}


#ifdef hudson_master_computer_MAIN

void test_hudson_master_computer(int include_optional) {
    hudson_master_computer_t* hudson_master_computer_1 = instantiate_hudson_master_computer(include_optional);

	cJSON* jsonhudson_master_computer_1 = hudson_master_computer_convertToJSON(hudson_master_computer_1);
	printf("hudson_master_computer :\n%s\n", cJSON_Print(jsonhudson_master_computer_1));
	hudson_master_computer_t* hudson_master_computer_2 = hudson_master_computer_parseFromJSON(jsonhudson_master_computer_1);
	cJSON* jsonhudson_master_computer_2 = hudson_master_computer_convertToJSON(hudson_master_computer_2);
	printf("repeating hudson_master_computer:\n%s\n", cJSON_Print(jsonhudson_master_computer_2));
}

int main() {
  test_hudson_master_computer(1);
  test_hudson_master_computer(0);

  printf("Hello world \n");
  return 0;
}

#endif // hudson_master_computer_MAIN
#endif // hudson_master_computer_TEST
