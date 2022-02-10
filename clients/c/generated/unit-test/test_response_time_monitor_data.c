#ifndef response_time_monitor_data_TEST
#define response_time_monitor_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_monitor_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_monitor_data.h"
response_time_monitor_data_t* instantiate_response_time_monitor_data(int include_optional);



response_time_monitor_data_t* instantiate_response_time_monitor_data(int include_optional) {
  response_time_monitor_data_t* response_time_monitor_data = NULL;
  if (include_optional) {
    response_time_monitor_data = response_time_monitor_data_create(
      "0",
      56,
      56
    );
  } else {
    response_time_monitor_data = response_time_monitor_data_create(
      "0",
      56,
      56
    );
  }

  return response_time_monitor_data;
}


#ifdef response_time_monitor_data_MAIN

void test_response_time_monitor_data(int include_optional) {
    response_time_monitor_data_t* response_time_monitor_data_1 = instantiate_response_time_monitor_data(include_optional);

	cJSON* jsonresponse_time_monitor_data_1 = response_time_monitor_data_convertToJSON(response_time_monitor_data_1);
	printf("response_time_monitor_data :\n%s\n", cJSON_Print(jsonresponse_time_monitor_data_1));
	response_time_monitor_data_t* response_time_monitor_data_2 = response_time_monitor_data_parseFromJSON(jsonresponse_time_monitor_data_1);
	cJSON* jsonresponse_time_monitor_data_2 = response_time_monitor_data_convertToJSON(response_time_monitor_data_2);
	printf("repeating response_time_monitor_data:\n%s\n", cJSON_Print(jsonresponse_time_monitor_data_2));
}

int main() {
  test_response_time_monitor_data(1);
  test_response_time_monitor_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_monitor_data_MAIN
#endif // response_time_monitor_data_TEST
