/*
 * SamiGetPipelineBranches.h
 * 
 * 
 */

#ifndef SamiGetPipelineBranches_H_
#define SamiGetPipelineBranches_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiGetPipelineBranchesitem.h"
using Tizen::Base::Collection::IList;


namespace Swagger {

class SamiGetPipelineBranches: public SamiObject {
public:
    SamiGetPipelineBranches();
    SamiGetPipelineBranches(String* json);
    virtual ~SamiGetPipelineBranches();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetPipelineBranches* fromJson(String* obj);


private:
    };

} /* namespace Swagger */

#endif /* SamiGetPipelineBranches_H_ */
