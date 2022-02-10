#ifndef list_view_TEST
#define list_view_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define list_view_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/list_view.h"
list_view_t* instantiate_list_view(int include_optional);



list_view_t* instantiate_list_view(int include_optional) {
  list_view_t* list_view = NULL;
  if (include_optional) {
    list_view = list_view_create(
      "0",
      "0",
      list_createList(),
      "0",
      "0"
    );
  } else {
    list_view = list_view_create(
      "0",
      "0",
      list_createList(),
      "0",
      "0"
    );
  }

  return list_view;
}


#ifdef list_view_MAIN

void test_list_view(int include_optional) {
    list_view_t* list_view_1 = instantiate_list_view(include_optional);

	cJSON* jsonlist_view_1 = list_view_convertToJSON(list_view_1);
	printf("list_view :\n%s\n", cJSON_Print(jsonlist_view_1));
	list_view_t* list_view_2 = list_view_parseFromJSON(jsonlist_view_1);
	cJSON* jsonlist_view_2 = list_view_convertToJSON(list_view_2);
	printf("repeating list_view:\n%s\n", cJSON_Print(jsonlist_view_2));
}

int main() {
  test_list_view(1);
  test_list_view(0);

  printf("Hello world \n");
  return 0;
}

#endif // list_view_MAIN
#endif // list_view_TEST
