/*
 * SamiGetUsers.h
 * 
 * 
 */

#ifndef SamiGetUsers_H_
#define SamiGetUsers_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiSwaggyjenkinsUser.h"
using Tizen::Base::Collection::IList;


namespace Swagger {

class SamiGetUsers: public SamiObject {
public:
    SamiGetUsers();
    SamiGetUsers(String* json);
    virtual ~SamiGetUsers();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetUsers* fromJson(String* obj);


private:
    };

} /* namespace Swagger */

#endif /* SamiGetUsers_H_ */
