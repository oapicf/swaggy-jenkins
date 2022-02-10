#ifndef free_style_projecthealth_report_TEST
#define free_style_projecthealth_report_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define free_style_projecthealth_report_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/free_style_projecthealth_report.h"
free_style_projecthealth_report_t* instantiate_free_style_projecthealth_report(int include_optional);



free_style_projecthealth_report_t* instantiate_free_style_projecthealth_report(int include_optional) {
  free_style_projecthealth_report_t* free_style_projecthealth_report = NULL;
  if (include_optional) {
    free_style_projecthealth_report = free_style_projecthealth_report_create(
      "0",
      "0",
      "0",
      56,
      "0"
    );
  } else {
    free_style_projecthealth_report = free_style_projecthealth_report_create(
      "0",
      "0",
      "0",
      56,
      "0"
    );
  }

  return free_style_projecthealth_report;
}


#ifdef free_style_projecthealth_report_MAIN

void test_free_style_projecthealth_report(int include_optional) {
    free_style_projecthealth_report_t* free_style_projecthealth_report_1 = instantiate_free_style_projecthealth_report(include_optional);

	cJSON* jsonfree_style_projecthealth_report_1 = free_style_projecthealth_report_convertToJSON(free_style_projecthealth_report_1);
	printf("free_style_projecthealth_report :\n%s\n", cJSON_Print(jsonfree_style_projecthealth_report_1));
	free_style_projecthealth_report_t* free_style_projecthealth_report_2 = free_style_projecthealth_report_parseFromJSON(jsonfree_style_projecthealth_report_1);
	cJSON* jsonfree_style_projecthealth_report_2 = free_style_projecthealth_report_convertToJSON(free_style_projecthealth_report_2);
	printf("repeating free_style_projecthealth_report:\n%s\n", cJSON_Print(jsonfree_style_projecthealth_report_2));
}

int main() {
  test_free_style_projecthealth_report(1);
  test_free_style_projecthealth_report(0);

  printf("Hello world \n");
  return 0;
}

#endif // free_style_projecthealth_report_MAIN
#endif // free_style_projecthealth_report_TEST
