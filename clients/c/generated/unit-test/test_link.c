#ifndef link_TEST
#define link_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define link_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/link.h"
link_t* instantiate_link(int include_optional);



link_t* instantiate_link(int include_optional) {
  link_t* link = NULL;
  if (include_optional) {
    link = link_create(
      "0",
      "0"
    );
  } else {
    link = link_create(
      "0",
      "0"
    );
  }

  return link;
}


#ifdef link_MAIN

void test_link(int include_optional) {
    link_t* link_1 = instantiate_link(include_optional);

	cJSON* jsonlink_1 = link_convertToJSON(link_1);
	printf("link :\n%s\n", cJSON_Print(jsonlink_1));
	link_t* link_2 = link_parseFromJSON(jsonlink_1);
	cJSON* jsonlink_2 = link_convertToJSON(link_2);
	printf("repeating link:\n%s\n", cJSON_Print(jsonlink_2));
}

int main() {
  test_link(1);
  test_link(0);

  printf("Hello world \n");
  return 0;
}

#endif // link_MAIN
#endif // link_TEST
