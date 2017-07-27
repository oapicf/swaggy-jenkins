#ifndef SamiBlueOceanApi_H_
#define SamiBlueOceanApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

#include "SamiGetMultibranchPipeline.h"
#include "SamiGetOrganisations.h"
#include "SamiGetPipelines.h"
#include "SamiIojenkinsblueoceanrestimplpipelineBranchImpl.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl.h"
#include "SamiSwaggyjenkinsOrganisation.h"
#include "SamiSwaggyjenkinsPipeline.h"
#include "SamiSwaggyjenkinsUser.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiBlueOceanApi {
public:
  SamiBlueOceanApi();
  virtual ~SamiBlueOceanApi();

  SamiSwaggyjenkinsUser* 
  getAuthenticatedUserWithCompletion(String* organisation, void (* handler)(SamiSwaggyjenkinsUser*, SamiError*));
  String* 
  getClassesWithCompletion(String* class, void (* handler)(String*, SamiError*));
  SamiSwaggyjenkinsOrganisation* 
  getOrganisationWithCompletion(String* organisation, void (* handler)(SamiSwaggyjenkinsOrganisation*, SamiError*));
  SamiGetOrganisations* 
  getOrganisationsWithCompletion( void (* handler)(SamiGetOrganisations*, SamiError*));
  SamiIojenkinsblueoceanrestimplpipelineBranchImpl* 
  getPipelineBranchByOrgWithCompletion(String* organisation, String* pipeline, String* branch, void (* handler)(SamiIojenkinsblueoceanrestimplpipelineBranchImpl*, SamiError*));
  SamiGetMultibranchPipeline* 
  getPipelineBranchesByOrgWithCompletion(String* organisation, String* pipeline, void (* handler)(SamiGetMultibranchPipeline*, SamiError*));
  SamiSwaggyjenkinsPipeline* 
  getPipelineByOrgWithCompletion(String* organisation, String* pipeline, void (* handler)(SamiSwaggyjenkinsPipeline*, SamiError*));
  SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* 
  getPipelineFolderByOrgWithCompletion(String* organisation, String* folder, void (* handler)(SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl*, SamiError*));
  SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl* 
  getPipelineFolderByOrg_1WithCompletion(String* organisation, String* pipeline, String* folder, void (* handler)(SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl*, SamiError*));
  SamiGetPipelines* 
  getPipelinesByOrgWithCompletion(String* organisation, void (* handler)(SamiGetPipelines*, SamiError*));
  SamiSwaggyjenkinsUser* 
  getUserWithCompletion(String* organisation, String* user, void (* handler)(SamiSwaggyjenkinsUser*, SamiError*));
  SamiSwaggyjenkinsUser* 
  getUsersWithCompletion(String* organisation, void (* handler)(SamiSwaggyjenkinsUser*, SamiError*));
  String* 
  searchWithCompletion(String* q, void (* handler)(String*, SamiError*));
  String* 
  search_2WithCompletion(String* q, void (* handler)(String*, SamiError*));
  static String getBasePath() {
    return L"http://localhost";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiBlueOceanApi_H_ */
