#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/default_crumb_issuer.h"


// Retrieve CSRF protection token
//
default_crumb_issuer_t*
BaseAPI_getCrumb(apiClient_t *apiClient);


