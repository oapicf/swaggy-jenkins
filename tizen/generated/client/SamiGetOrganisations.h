/*
 * SamiGetOrganisations.h
 * 
 * 
 */

#ifndef SamiGetOrganisations_H_
#define SamiGetOrganisations_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiSwaggyjenkinsOrganisation.h"
using Tizen::Base::Collection::IList;


namespace Swagger {

class SamiGetOrganisations: public SamiObject {
public:
    SamiGetOrganisations();
    SamiGetOrganisations(String* json);
    virtual ~SamiGetOrganisations();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetOrganisations* fromJson(String* obj);


private:
    };

} /* namespace Swagger */

#endif /* SamiGetOrganisations_H_ */
