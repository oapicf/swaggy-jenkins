/*
 * SamiHudsonmodelHudsonMasterComputerexecutors.h
 * 
 * 
 */

#ifndef SamiHudsonmodelHudsonMasterComputerexecutors_H_
#define SamiHudsonmodelHudsonMasterComputerexecutors_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelFreeStyleBuild.h"
using Tizen::Base::Boolean;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelHudsonMasterComputerexecutors: public SamiObject {
public:
    SamiHudsonmodelHudsonMasterComputerexecutors();
    SamiHudsonmodelHudsonMasterComputerexecutors(String* json);
    virtual ~SamiHudsonmodelHudsonMasterComputerexecutors();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelHudsonMasterComputerexecutors* fromJson(String* obj);

    SamiHudsonmodelFreeStyleBuild* getPCurrentExecutable();
    void setPCurrentExecutable(SamiHudsonmodelFreeStyleBuild* pCurrentExecutable);
    Boolean* getPIdle();
    void setPIdle(Boolean* pIdle);
    Boolean* getPLikelyStuck();
    void setPLikelyStuck(Boolean* pLikelyStuck);
    Integer* getPNumber();
    void setPNumber(Integer* pNumber);
    Integer* getPProgress();
    void setPProgress(Integer* pProgress);
    String* getPClass();
    void setPClass(String* p_class);

private:
    SamiHudsonmodelFreeStyleBuild* pCurrentExecutable;
Boolean* pIdle;
Boolean* pLikelyStuck;
Integer* pNumber;
Integer* pProgress;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelHudsonMasterComputerexecutors_H_ */
