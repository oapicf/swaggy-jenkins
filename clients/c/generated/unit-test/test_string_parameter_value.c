#ifndef string_parameter_value_TEST
#define string_parameter_value_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define string_parameter_value_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/string_parameter_value.h"
string_parameter_value_t* instantiate_string_parameter_value(int include_optional);



string_parameter_value_t* instantiate_string_parameter_value(int include_optional) {
  string_parameter_value_t* string_parameter_value = NULL;
  if (include_optional) {
    string_parameter_value = string_parameter_value_create(
      "0",
      "0",
      "0"
    );
  } else {
    string_parameter_value = string_parameter_value_create(
      "0",
      "0",
      "0"
    );
  }

  return string_parameter_value;
}


#ifdef string_parameter_value_MAIN

void test_string_parameter_value(int include_optional) {
    string_parameter_value_t* string_parameter_value_1 = instantiate_string_parameter_value(include_optional);

	cJSON* jsonstring_parameter_value_1 = string_parameter_value_convertToJSON(string_parameter_value_1);
	printf("string_parameter_value :\n%s\n", cJSON_Print(jsonstring_parameter_value_1));
	string_parameter_value_t* string_parameter_value_2 = string_parameter_value_parseFromJSON(jsonstring_parameter_value_1);
	cJSON* jsonstring_parameter_value_2 = string_parameter_value_convertToJSON(string_parameter_value_2);
	printf("repeating string_parameter_value:\n%s\n", cJSON_Print(jsonstring_parameter_value_2));
}

int main() {
  test_string_parameter_value(1);
  test_string_parameter_value(0);

  printf("Hello world \n");
  return 0;
}

#endif // string_parameter_value_MAIN
#endif // string_parameter_value_TEST
