/*
 * SamiHudsonutilClockDifference.h
 * 
 * 
 */

#ifndef SamiHudsonutilClockDifference_H_
#define SamiHudsonutilClockDifference_H_

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

class SamiHudsonutilClockDifference: public SamiObject {
public:
    SamiHudsonutilClockDifference();
    SamiHudsonutilClockDifference(String* json);
    virtual ~SamiHudsonutilClockDifference();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonutilClockDifference* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    Integer* getPDiff();
    void setPDiff(Integer* pDiff);

private:
    String* p_class;
Integer* pDiff;
};

} /* namespace Swagger */

#endif /* SamiHudsonutilClockDifference_H_ */
