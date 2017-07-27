#ifndef SamiRemoteAccessApi_H_
#define SamiRemoteAccessApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

#include "SamiHudsonmodelComputerSet.h"
#include "SamiHudsonmodelFreeStyleBuild.h"
#include "SamiHudsonmodelFreeStyleProject.h"
#include "SamiHudsonmodelHudson.h"
#include "SamiHudsonmodelListView.h"
#include "SamiHudsonmodelQueue.h"
#include "SamiHudsonsecuritycsrfDefaultCrumbIssuer.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiRemoteAccessApi {
public:
  SamiRemoteAccessApi();
  virtual ~SamiRemoteAccessApi();

  SamiHudsonmodelComputerSet* 
  getComputerWithCompletion( void (* handler)(SamiHudsonmodelComputerSet*, SamiError*));
  SamiHudsonsecuritycsrfDefaultCrumbIssuer* 
  getCrumbWithCompletion( void (* handler)(SamiHudsonsecuritycsrfDefaultCrumbIssuer*, SamiError*));
  SamiHudsonmodelHudson* 
  getJenkinsWithCompletion( void (* handler)(SamiHudsonmodelHudson*, SamiError*));
  SamiHudsonmodelFreeStyleProject* 
  getJobWithCompletion(String* name, void (* handler)(SamiHudsonmodelFreeStyleProject*, SamiError*));
  String* 
  getJobConfigWithCompletion(String* name, void (* handler)(String*, SamiError*));
  SamiHudsonmodelFreeStyleBuild* 
  getJobLastBuildWithCompletion(String* name, void (* handler)(SamiHudsonmodelFreeStyleBuild*, SamiError*));
  void 
  getJobProgressiveTextWithCompletion(String* name, String* number, String* start, void(* handler)(SamiError*));
  SamiHudsonmodelQueue* 
  getQueueWithCompletion( void (* handler)(SamiHudsonmodelQueue*, SamiError*));
  SamiHudsonmodelQueue* 
  getQueueItemWithCompletion(String* number, void (* handler)(SamiHudsonmodelQueue*, SamiError*));
  SamiHudsonmodelListView* 
  getViewWithCompletion(String* name, void (* handler)(SamiHudsonmodelListView*, SamiError*));
  String* 
  getViewConfigWithCompletion(String* name, void (* handler)(String*, SamiError*));
  void 
  headJenkinsWithCompletion( void(* handler)(SamiError*));
  void 
  postCreateItemWithCompletion(String* name, String* from, String* mode, String* body, String* jenkinsCrumb, String* contentType, void(* handler)(SamiError*));
  void 
  postCreateViewWithCompletion(String* name, String* body, String* jenkinsCrumb, String* contentType, void(* handler)(SamiError*));
  void 
  postJobBuildWithCompletion(String* name, String* json, String* token, String* jenkinsCrumb, void(* handler)(SamiError*));
  void 
  postJobConfigWithCompletion(String* name, String* body, String* jenkinsCrumb, void(* handler)(SamiError*));
  void 
  postJobDeleteWithCompletion(String* name, String* jenkinsCrumb, void(* handler)(SamiError*));
  void 
  postJobDisableWithCompletion(String* name, String* jenkinsCrumb, void(* handler)(SamiError*));
  void 
  postJobEnableWithCompletion(String* name, String* jenkinsCrumb, void(* handler)(SamiError*));
  void 
  postJobLastBuildStopWithCompletion(String* name, String* jenkinsCrumb, void(* handler)(SamiError*));
  void 
  postViewConfigWithCompletion(String* name, String* body, String* jenkinsCrumb, void(* handler)(SamiError*));
  static String getBasePath() {
    return L"http://localhost";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiRemoteAccessApi_H_ */
