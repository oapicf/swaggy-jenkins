#ifndef disk_space_monitor_descriptor_disk_space_TEST
#define disk_space_monitor_descriptor_disk_space_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define disk_space_monitor_descriptor_disk_space_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/disk_space_monitor_descriptor_disk_space.h"
disk_space_monitor_descriptor_disk_space_t* instantiate_disk_space_monitor_descriptor_disk_space(int include_optional);



disk_space_monitor_descriptor_disk_space_t* instantiate_disk_space_monitor_descriptor_disk_space(int include_optional) {
  disk_space_monitor_descriptor_disk_space_t* disk_space_monitor_descriptor_disk_space = NULL;
  if (include_optional) {
    disk_space_monitor_descriptor_disk_space = disk_space_monitor_descriptor_disk_space_create(
      "0",
      56,
      "0",
      56
    );
  } else {
    disk_space_monitor_descriptor_disk_space = disk_space_monitor_descriptor_disk_space_create(
      "0",
      56,
      "0",
      56
    );
  }

  return disk_space_monitor_descriptor_disk_space;
}


#ifdef disk_space_monitor_descriptor_disk_space_MAIN

void test_disk_space_monitor_descriptor_disk_space(int include_optional) {
    disk_space_monitor_descriptor_disk_space_t* disk_space_monitor_descriptor_disk_space_1 = instantiate_disk_space_monitor_descriptor_disk_space(include_optional);

	cJSON* jsondisk_space_monitor_descriptor_disk_space_1 = disk_space_monitor_descriptor_disk_space_convertToJSON(disk_space_monitor_descriptor_disk_space_1);
	printf("disk_space_monitor_descriptor_disk_space :\n%s\n", cJSON_Print(jsondisk_space_monitor_descriptor_disk_space_1));
	disk_space_monitor_descriptor_disk_space_t* disk_space_monitor_descriptor_disk_space_2 = disk_space_monitor_descriptor_disk_space_parseFromJSON(jsondisk_space_monitor_descriptor_disk_space_1);
	cJSON* jsondisk_space_monitor_descriptor_disk_space_2 = disk_space_monitor_descriptor_disk_space_convertToJSON(disk_space_monitor_descriptor_disk_space_2);
	printf("repeating disk_space_monitor_descriptor_disk_space:\n%s\n", cJSON_Print(jsondisk_space_monitor_descriptor_disk_space_2));
}

int main() {
  test_disk_space_monitor_descriptor_disk_space(1);
  test_disk_space_monitor_descriptor_disk_space(0);

  printf("Hello world \n");
  return 0;
}

#endif // disk_space_monitor_descriptor_disk_space_MAIN
#endif // disk_space_monitor_descriptor_disk_space_TEST
