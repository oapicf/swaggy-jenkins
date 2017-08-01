/*
 * SamiHudsonmodelFreeStyleProjecthealthReport.h
 * 
 * 
 */

#ifndef SamiHudsonmodelFreeStyleProjecthealthReport_H_
#define SamiHudsonmodelFreeStyleProjecthealthReport_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelFreeStyleProjecthealthReport: public SamiObject {
public:
    SamiHudsonmodelFreeStyleProjecthealthReport();
    SamiHudsonmodelFreeStyleProjecthealthReport(String* json);
    virtual ~SamiHudsonmodelFreeStyleProjecthealthReport();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelFreeStyleProjecthealthReport* fromJson(String* obj);

    String* getPDescription();
    void setPDescription(String* pDescription);
    String* getPIconClassName();
    void setPIconClassName(String* pIconClassName);
    String* getPIconUrl();
    void setPIconUrl(String* pIconUrl);
    Integer* getPScore();
    void setPScore(Integer* pScore);
    String* getPClass();
    void setPClass(String* p_class);

private:
    String* pDescription;
String* pIconClassName;
String* pIconUrl;
Integer* pScore;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelFreeStyleProjecthealthReport_H_ */
