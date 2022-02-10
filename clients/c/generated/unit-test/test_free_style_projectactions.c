#ifndef free_style_projectactions_TEST
#define free_style_projectactions_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define free_style_projectactions_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/free_style_projectactions.h"
free_style_projectactions_t* instantiate_free_style_projectactions(int include_optional);



free_style_projectactions_t* instantiate_free_style_projectactions(int include_optional) {
  free_style_projectactions_t* free_style_projectactions = NULL;
  if (include_optional) {
    free_style_projectactions = free_style_projectactions_create(
      "0"
    );
  } else {
    free_style_projectactions = free_style_projectactions_create(
      "0"
    );
  }

  return free_style_projectactions;
}


#ifdef free_style_projectactions_MAIN

void test_free_style_projectactions(int include_optional) {
    free_style_projectactions_t* free_style_projectactions_1 = instantiate_free_style_projectactions(include_optional);

	cJSON* jsonfree_style_projectactions_1 = free_style_projectactions_convertToJSON(free_style_projectactions_1);
	printf("free_style_projectactions :\n%s\n", cJSON_Print(jsonfree_style_projectactions_1));
	free_style_projectactions_t* free_style_projectactions_2 = free_style_projectactions_parseFromJSON(jsonfree_style_projectactions_1);
	cJSON* jsonfree_style_projectactions_2 = free_style_projectactions_convertToJSON(free_style_projectactions_2);
	printf("repeating free_style_projectactions:\n%s\n", cJSON_Print(jsonfree_style_projectactions_2));
}

int main() {
  test_free_style_projectactions(1);
  test_free_style_projectactions(0);

  printf("Hello world \n");
  return 0;
}

#endif // free_style_projectactions_MAIN
#endif // free_style_projectactions_TEST
