/*
 * SamiGetPipelines.h
 * 
 * 
 */

#ifndef SamiGetPipelines_H_
#define SamiGetPipelines_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiSwaggyjenkinsPipeline.h"
using Tizen::Base::Collection::IList;


namespace Swagger {

class SamiGetPipelines: public SamiObject {
public:
    SamiGetPipelines();
    SamiGetPipelines(String* json);
    virtual ~SamiGetPipelines();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetPipelines* fromJson(String* obj);


private:
    };

} /* namespace Swagger */

#endif /* SamiGetPipelines_H_ */
