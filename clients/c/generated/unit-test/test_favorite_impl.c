#ifndef favorite_impl_TEST
#define favorite_impl_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define favorite_impl_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/favorite_impl.h"
favorite_impl_t* instantiate_favorite_impl(int include_optional);

#include "test_favorite_impllinks.c"
#include "test_pipeline_impl.c"


favorite_impl_t* instantiate_favorite_impl(int include_optional) {
  favorite_impl_t* favorite_impl = NULL;
  if (include_optional) {
    favorite_impl = favorite_impl_create(
      "0",
       // false, not to have infinite recursion
      instantiate_favorite_impllinks(0),
       // false, not to have infinite recursion
      instantiate_pipeline_impl(0)
    );
  } else {
    favorite_impl = favorite_impl_create(
      "0",
      NULL,
      NULL
    );
  }

  return favorite_impl;
}


#ifdef favorite_impl_MAIN

void test_favorite_impl(int include_optional) {
    favorite_impl_t* favorite_impl_1 = instantiate_favorite_impl(include_optional);

	cJSON* jsonfavorite_impl_1 = favorite_impl_convertToJSON(favorite_impl_1);
	printf("favorite_impl :\n%s\n", cJSON_Print(jsonfavorite_impl_1));
	favorite_impl_t* favorite_impl_2 = favorite_impl_parseFromJSON(jsonfavorite_impl_1);
	cJSON* jsonfavorite_impl_2 = favorite_impl_convertToJSON(favorite_impl_2);
	printf("repeating favorite_impl:\n%s\n", cJSON_Print(jsonfavorite_impl_2));
}

int main() {
  test_favorite_impl(1);
  test_favorite_impl(0);

  printf("Hello world \n");
  return 0;
}

#endif // favorite_impl_MAIN
#endif // favorite_impl_TEST
