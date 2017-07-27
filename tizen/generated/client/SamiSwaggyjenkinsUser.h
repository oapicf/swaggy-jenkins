/*
 * SamiSwaggyjenkinsUser.h
 * 
 * 
 */

#ifndef SamiSwaggyjenkinsUser_H_
#define SamiSwaggyjenkinsUser_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiSwaggyjenkinsUser: public SamiObject {
public:
    SamiSwaggyjenkinsUser();
    SamiSwaggyjenkinsUser(String* json);
    virtual ~SamiSwaggyjenkinsUser();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiSwaggyjenkinsUser* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPId();
    void setPId(String* pId);
    String* getPFullName();
    void setPFullName(String* pFullName);
    String* getPEmail();
    void setPEmail(String* pEmail);
    String* getPName();
    void setPName(String* pName);

private:
    String* p_class;
String* pId;
String* pFullName;
String* pEmail;
String* pName;
};

} /* namespace Swagger */

#endif /* SamiSwaggyjenkinsUser_H_ */
