/*
 * SamiJenkinsmodelUnlabeledLoadStatistics.h
 * 
 * 
 */

#ifndef SamiJenkinsmodelUnlabeledLoadStatistics_H_
#define SamiJenkinsmodelUnlabeledLoadStatistics_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiJenkinsmodelUnlabeledLoadStatistics: public SamiObject {
public:
    SamiJenkinsmodelUnlabeledLoadStatistics();
    SamiJenkinsmodelUnlabeledLoadStatistics(String* json);
    virtual ~SamiJenkinsmodelUnlabeledLoadStatistics();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiJenkinsmodelUnlabeledLoadStatistics* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);

private:
    String* p_class;
};

} /* namespace Swagger */

#endif /* SamiJenkinsmodelUnlabeledLoadStatistics_H_ */
