/*
 * SamiHudsonmodelListView.h
 * 
 * 
 */

#ifndef SamiHudsonmodelListView_H_
#define SamiHudsonmodelListView_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelFreeStyleProject.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelListView: public SamiObject {
public:
    SamiHudsonmodelListView();
    SamiHudsonmodelListView(String* json);
    virtual ~SamiHudsonmodelListView();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelListView* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPDescription();
    void setPDescription(String* pDescription);
    IList* getPJobs();
    void setPJobs(IList* pJobs);
    String* getPName();
    void setPName(String* pName);
    String* getPUrl();
    void setPUrl(String* pUrl);

private:
    String* p_class;
String* pDescription;
IList* pJobs;
String* pName;
String* pUrl;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelListView_H_ */
