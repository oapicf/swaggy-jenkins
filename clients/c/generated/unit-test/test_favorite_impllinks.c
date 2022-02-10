#ifndef favorite_impllinks_TEST
#define favorite_impllinks_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define favorite_impllinks_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/favorite_impllinks.h"
favorite_impllinks_t* instantiate_favorite_impllinks(int include_optional);

#include "test_link.c"


favorite_impllinks_t* instantiate_favorite_impllinks(int include_optional) {
  favorite_impllinks_t* favorite_impllinks = NULL;
  if (include_optional) {
    favorite_impllinks = favorite_impllinks_create(
       // false, not to have infinite recursion
      instantiate_link(0),
      "0"
    );
  } else {
    favorite_impllinks = favorite_impllinks_create(
      NULL,
      "0"
    );
  }

  return favorite_impllinks;
}


#ifdef favorite_impllinks_MAIN

void test_favorite_impllinks(int include_optional) {
    favorite_impllinks_t* favorite_impllinks_1 = instantiate_favorite_impllinks(include_optional);

	cJSON* jsonfavorite_impllinks_1 = favorite_impllinks_convertToJSON(favorite_impllinks_1);
	printf("favorite_impllinks :\n%s\n", cJSON_Print(jsonfavorite_impllinks_1));
	favorite_impllinks_t* favorite_impllinks_2 = favorite_impllinks_parseFromJSON(jsonfavorite_impllinks_1);
	cJSON* jsonfavorite_impllinks_2 = favorite_impllinks_convertToJSON(favorite_impllinks_2);
	printf("repeating favorite_impllinks:\n%s\n", cJSON_Print(jsonfavorite_impllinks_2));
}

int main() {
  test_favorite_impllinks(1);
  test_favorite_impllinks(0);

  printf("Hello world \n");
  return 0;
}

#endif // favorite_impllinks_MAIN
#endif // favorite_impllinks_TEST
