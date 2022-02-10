#ifndef hudson_master_computermonitor_data_TEST
#define hudson_master_computermonitor_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define hudson_master_computermonitor_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/hudson_master_computermonitor_data.h"
hudson_master_computermonitor_data_t* instantiate_hudson_master_computermonitor_data(int include_optional);

#include "test_swap_space_monitor_memory_usage2.c"
#include "test_disk_space_monitor_descriptor_disk_space.c"
#include "test_disk_space_monitor_descriptor_disk_space.c"
#include "test_response_time_monitor_data.c"
#include "test_clock_difference.c"


hudson_master_computermonitor_data_t* instantiate_hudson_master_computermonitor_data(int include_optional) {
  hudson_master_computermonitor_data_t* hudson_master_computermonitor_data = NULL;
  if (include_optional) {
    hudson_master_computermonitor_data = hudson_master_computermonitor_data_create(
       // false, not to have infinite recursion
      instantiate_swap_space_monitor_memory_usage2(0),
       // false, not to have infinite recursion
      instantiate_disk_space_monitor_descriptor_disk_space(0),
       // false, not to have infinite recursion
      instantiate_disk_space_monitor_descriptor_disk_space(0),
      "0",
       // false, not to have infinite recursion
      instantiate_response_time_monitor_data(0),
       // false, not to have infinite recursion
      instantiate_clock_difference(0),
      "0"
    );
  } else {
    hudson_master_computermonitor_data = hudson_master_computermonitor_data_create(
      NULL,
      NULL,
      NULL,
      "0",
      NULL,
      NULL,
      "0"
    );
  }

  return hudson_master_computermonitor_data;
}


#ifdef hudson_master_computermonitor_data_MAIN

void test_hudson_master_computermonitor_data(int include_optional) {
    hudson_master_computermonitor_data_t* hudson_master_computermonitor_data_1 = instantiate_hudson_master_computermonitor_data(include_optional);

	cJSON* jsonhudson_master_computermonitor_data_1 = hudson_master_computermonitor_data_convertToJSON(hudson_master_computermonitor_data_1);
	printf("hudson_master_computermonitor_data :\n%s\n", cJSON_Print(jsonhudson_master_computermonitor_data_1));
	hudson_master_computermonitor_data_t* hudson_master_computermonitor_data_2 = hudson_master_computermonitor_data_parseFromJSON(jsonhudson_master_computermonitor_data_1);
	cJSON* jsonhudson_master_computermonitor_data_2 = hudson_master_computermonitor_data_convertToJSON(hudson_master_computermonitor_data_2);
	printf("repeating hudson_master_computermonitor_data:\n%s\n", cJSON_Print(jsonhudson_master_computermonitor_data_2));
}

int main() {
  test_hudson_master_computermonitor_data(1);
  test_hudson_master_computermonitor_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // hudson_master_computermonitor_data_MAIN
#endif // hudson_master_computermonitor_data_TEST
