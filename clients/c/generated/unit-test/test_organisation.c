#ifndef organisation_TEST
#define organisation_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define organisation_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/organisation.h"
organisation_t* instantiate_organisation(int include_optional);



organisation_t* instantiate_organisation(int include_optional) {
  organisation_t* organisation = NULL;
  if (include_optional) {
    organisation = organisation_create(
      "0",
      "0"
    );
  } else {
    organisation = organisation_create(
      "0",
      "0"
    );
  }

  return organisation;
}


#ifdef organisation_MAIN

void test_organisation(int include_optional) {
    organisation_t* organisation_1 = instantiate_organisation(include_optional);

	cJSON* jsonorganisation_1 = organisation_convertToJSON(organisation_1);
	printf("organisation :\n%s\n", cJSON_Print(jsonorganisation_1));
	organisation_t* organisation_2 = organisation_parseFromJSON(jsonorganisation_1);
	cJSON* jsonorganisation_2 = organisation_convertToJSON(organisation_2);
	printf("repeating organisation:\n%s\n", cJSON_Print(jsonorganisation_2));
}

int main() {
  test_organisation(1);
  test_organisation(0);

  printf("Hello world \n");
  return 0;
}

#endif // organisation_MAIN
#endif // organisation_TEST
