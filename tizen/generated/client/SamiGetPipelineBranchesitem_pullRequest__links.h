/*
 * SamiGetPipelineBranchesitem_pullRequest__links.h
 * 
 * 
 */

#ifndef SamiGetPipelineBranchesitem_pullRequest__links_H_
#define SamiGetPipelineBranchesitem_pullRequest__links_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiGetPipelineBranchesitem_pullRequest__links: public SamiObject {
public:
    SamiGetPipelineBranchesitem_pullRequest__links();
    SamiGetPipelineBranchesitem_pullRequest__links(String* json);
    virtual ~SamiGetPipelineBranchesitem_pullRequest__links();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetPipelineBranchesitem_pullRequest__links* fromJson(String* obj);

    String* getPSelf();
    void setPSelf(String* pSelf);
    String* getPClass();
    void setPClass(String* p_class);

private:
    String* pSelf;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiGetPipelineBranchesitem_pullRequest__links_H_ */
