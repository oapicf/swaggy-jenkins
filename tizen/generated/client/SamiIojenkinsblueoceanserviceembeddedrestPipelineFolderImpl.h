/*
 * SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl_H_
#define SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl_H_

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

class SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl: public SamiObject {
public:
    SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl();
    SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl(String* json);
    virtual ~SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    String* getPFullName();
    void setPFullName(String* pFullName);
    String* getPName();
    void setPName(String* pName);
    String* getPOrganization();
    void setPOrganization(String* pOrganization);
    Integer* getPNumberOfFolders();
    void setPNumberOfFolders(Integer* pNumberOfFolders);
    Integer* getPNumberOfPipelines();
    void setPNumberOfPipelines(Integer* pNumberOfPipelines);

private:
    String* p_class;
String* pDisplayName;
String* pFullName;
String* pName;
String* pOrganization;
Integer* pNumberOfFolders;
Integer* pNumberOfPipelines;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl_H_ */
