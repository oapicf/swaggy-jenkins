/*
 * SamiSwaggyjenkinsOrganisation.h
 * 
 * 
 */

#ifndef SamiSwaggyjenkinsOrganisation_H_
#define SamiSwaggyjenkinsOrganisation_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiSwaggyjenkinsOrganisation: public SamiObject {
public:
    SamiSwaggyjenkinsOrganisation();
    SamiSwaggyjenkinsOrganisation(String* json);
    virtual ~SamiSwaggyjenkinsOrganisation();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiSwaggyjenkinsOrganisation* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPName();
    void setPName(String* pName);

private:
    String* p_class;
String* pName;
};

} /* namespace Swagger */

#endif /* SamiSwaggyjenkinsOrganisation_H_ */
