/*
 * SamiHudsonsecuritycsrfDefaultCrumbIssuer.h
 * 
 * 
 */

#ifndef SamiHudsonsecuritycsrfDefaultCrumbIssuer_H_
#define SamiHudsonsecuritycsrfDefaultCrumbIssuer_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonsecuritycsrfDefaultCrumbIssuer: public SamiObject {
public:
    SamiHudsonsecuritycsrfDefaultCrumbIssuer();
    SamiHudsonsecuritycsrfDefaultCrumbIssuer(String* json);
    virtual ~SamiHudsonsecuritycsrfDefaultCrumbIssuer();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonsecuritycsrfDefaultCrumbIssuer* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPCrumb();
    void setPCrumb(String* pCrumb);
    String* getPCrumbRequestField();
    void setPCrumbRequestField(String* pCrumbRequestField);

private:
    String* p_class;
String* pCrumb;
String* pCrumbRequestField;
};

} /* namespace Swagger */

#endif /* SamiHudsonsecuritycsrfDefaultCrumbIssuer_H_ */
