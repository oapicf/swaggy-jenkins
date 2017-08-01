/*
 * SamiGetPipelineBranchesitem_pullRequest.h
 * 
 * 
 */

#ifndef SamiGetPipelineBranchesitem_pullRequest_H_
#define SamiGetPipelineBranchesitem_pullRequest_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiGetPipelineBranchesitem_pullRequest__links.h"
using Tizen::Base::String;


namespace Swagger {

class SamiGetPipelineBranchesitem_pullRequest: public SamiObject {
public:
    SamiGetPipelineBranchesitem_pullRequest();
    SamiGetPipelineBranchesitem_pullRequest(String* json);
    virtual ~SamiGetPipelineBranchesitem_pullRequest();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetPipelineBranchesitem_pullRequest* fromJson(String* obj);

    SamiGetPipelineBranchesitem_pullRequest__links* getPLinks();
    void setPLinks(SamiGetPipelineBranchesitem_pullRequest__links* p_links);
    String* getPAuthor();
    void setPAuthor(String* pAuthor);
    String* getPId();
    void setPId(String* pId);
    String* getPTitle();
    void setPTitle(String* pTitle);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPClass();
    void setPClass(String* p_class);

private:
    SamiGetPipelineBranchesitem_pullRequest__links* p_links;
String* pAuthor;
String* pId;
String* pTitle;
String* pUrl;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiGetPipelineBranchesitem_pullRequest_H_ */
