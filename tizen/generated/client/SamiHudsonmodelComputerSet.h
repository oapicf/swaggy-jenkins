/*
 * SamiHudsonmodelComputerSet.h
 * 
 * 
 */

#ifndef SamiHudsonmodelComputerSet_H_
#define SamiHudsonmodelComputerSet_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelHudsonMasterComputer.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelComputerSet: public SamiObject {
public:
    SamiHudsonmodelComputerSet();
    SamiHudsonmodelComputerSet(String* json);
    virtual ~SamiHudsonmodelComputerSet();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelComputerSet* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    Integer* getPBusyExecutors();
    void setPBusyExecutors(Integer* pBusyExecutors);
    IList* getPComputer();
    void setPComputer(IList* pComputer);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    Integer* getPTotalExecutors();
    void setPTotalExecutors(Integer* pTotalExecutors);

private:
    String* p_class;
Integer* pBusyExecutors;
IList* pComputer;
String* pDisplayName;
Integer* pTotalExecutors;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelComputerSet_H_ */
