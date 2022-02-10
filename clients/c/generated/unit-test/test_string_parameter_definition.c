#ifndef string_parameter_definition_TEST
#define string_parameter_definition_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define string_parameter_definition_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/string_parameter_definition.h"
string_parameter_definition_t* instantiate_string_parameter_definition(int include_optional);

#include "test_string_parameter_value.c"


string_parameter_definition_t* instantiate_string_parameter_definition(int include_optional) {
  string_parameter_definition_t* string_parameter_definition = NULL;
  if (include_optional) {
    string_parameter_definition = string_parameter_definition_create(
      "0",
       // false, not to have infinite recursion
      instantiate_string_parameter_value(0),
      "0",
      "0",
      "0"
    );
  } else {
    string_parameter_definition = string_parameter_definition_create(
      "0",
      NULL,
      "0",
      "0",
      "0"
    );
  }

  return string_parameter_definition;
}


#ifdef string_parameter_definition_MAIN

void test_string_parameter_definition(int include_optional) {
    string_parameter_definition_t* string_parameter_definition_1 = instantiate_string_parameter_definition(include_optional);

	cJSON* jsonstring_parameter_definition_1 = string_parameter_definition_convertToJSON(string_parameter_definition_1);
	printf("string_parameter_definition :\n%s\n", cJSON_Print(jsonstring_parameter_definition_1));
	string_parameter_definition_t* string_parameter_definition_2 = string_parameter_definition_parseFromJSON(jsonstring_parameter_definition_1);
	cJSON* jsonstring_parameter_definition_2 = string_parameter_definition_convertToJSON(string_parameter_definition_2);
	printf("repeating string_parameter_definition:\n%s\n", cJSON_Print(jsonstring_parameter_definition_2));
}

int main() {
  test_string_parameter_definition(1);
  test_string_parameter_definition(0);

  printf("Hello world \n");
  return 0;
}

#endif // string_parameter_definition_MAIN
#endif // string_parameter_definition_TEST
