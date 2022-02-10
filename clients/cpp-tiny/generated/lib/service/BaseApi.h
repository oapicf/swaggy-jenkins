#ifndef TINY_CPP_CLIENT_BaseApi_H_
#define TINY_CPP_CLIENT_BaseApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "DefaultCrumbIssuer.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class BaseApi : public Service {
public:
    BaseApi() = default;

    virtual ~BaseApi() = default;

    /**
    * .
    *
    * Retrieve CSRF protection token
    */
    Response<
                DefaultCrumbIssuer
        >
    getCrumb(
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_BaseApi_H_ */