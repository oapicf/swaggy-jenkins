/*
 * SamiHudsonmodelQueue.h
 * 
 * 
 */

#ifndef SamiHudsonmodelQueue_H_
#define SamiHudsonmodelQueue_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelQueueBlockedItem.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelQueue: public SamiObject {
public:
    SamiHudsonmodelQueue();
    SamiHudsonmodelQueue(String* json);
    virtual ~SamiHudsonmodelQueue();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelQueue* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    IList* getPItems();
    void setPItems(IList* pItems);

private:
    String* p_class;
IList* pItems;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelQueue_H_ */
