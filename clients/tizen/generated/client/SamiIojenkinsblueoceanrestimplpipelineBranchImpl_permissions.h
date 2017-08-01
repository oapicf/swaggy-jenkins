/*
 * SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions_H_
#define SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::Boolean;
using Tizen::Base::String;


namespace Swagger {

class SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions: public SamiObject {
public:
    SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions();
    SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions(String* json);
    virtual ~SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions* fromJson(String* obj);

    Boolean* getPCreate();
    void setPCreate(Boolean* pCreate);
    Boolean* getPRead();
    void setPRead(Boolean* pRead);
    Boolean* getPStart();
    void setPStart(Boolean* pStart);
    Boolean* getPStop();
    void setPStop(Boolean* pStop);
    String* getPClass();
    void setPClass(String* p_class);

private:
    Boolean* pCreate;
Boolean* pRead;
Boolean* pStart;
Boolean* pStop;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions_H_ */
