#ifndef ModelFactory_H_
#define ModelFactory_H_

#include "SamiObject.h"

#include "SamiGetClassesByClass.h"
#include "SamiGetMultibranchPipeline.h"
#include "SamiGetOrganisations.h"
#include "SamiGetPipelineBranches.h"
#include "SamiGetPipelineBranchesitem.h"
#include "SamiGetPipelineBranchesitem_latestRun.h"
#include "SamiGetPipelineBranchesitem_pullRequest.h"
#include "SamiGetPipelineBranchesitem_pullRequest__links.h"
#include "SamiGetPipelines.h"
#include "SamiGetUsers.h"
#include "SamiHudsonmodelAllView.h"
#include "SamiHudsonmodelCauseAction.h"
#include "SamiHudsonmodelCauseUserIdCause.h"
#include "SamiHudsonmodelComputerSet.h"
#include "SamiHudsonmodelFreeStyleBuild.h"
#include "SamiHudsonmodelFreeStyleProject.h"
#include "SamiHudsonmodelFreeStyleProjectactions.h"
#include "SamiHudsonmodelFreeStyleProjecthealthReport.h"
#include "SamiHudsonmodelHudson.h"
#include "SamiHudsonmodelHudsonMasterComputer.h"
#include "SamiHudsonmodelHudsonMasterComputer_monitorData.h"
#include "SamiHudsonmodelHudsonMasterComputerexecutors.h"
#include "SamiHudsonmodelHudsonassignedLabels.h"
#include "SamiHudsonmodelLabel1.h"
#include "SamiHudsonmodelListView.h"
#include "SamiHudsonmodelQueue.h"
#include "SamiHudsonmodelQueueBlockedItem.h"
#include "SamiHudsonmodelQueueLeftItem.h"
#include "SamiHudsonmodelStringParameterDefinition.h"
#include "SamiHudsonmodelStringParameterValue.h"
#include "SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace.h"
#include "SamiHudsonnode_monitorsResponseTimeMonitorData.h"
#include "SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2.h"
#include "SamiHudsonscmEmptyChangeLogSet.h"
#include "SamiHudsonscmNullSCM.h"
#include "SamiHudsonsecuritycsrfDefaultCrumbIssuer.h"
#include "SamiHudsonutilClockDifference.h"
#include "SamiIojenkinsblueoceanresthalLink.h"
#include "SamiIojenkinsblueoceanrestimplpipelineBranchImpl.h"
#include "SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl.h"
#include "SamiJenkinsmodelUnlabeledLoadStatistics.h"
#include "SamiSwaggyjenkinsOrganisation.h"
#include "SamiSwaggyjenkinsPipeline.h"
#include "SamiSwaggyjenkinsPipeline_latestRun.h"
#include "SamiSwaggyjenkinsPipeline_latestRunartifacts.h"
#include "SamiSwaggyjenkinsUser.h"

namespace Swagger {
  void*
  create(String type) {
    if(type.Equals(L"SamiGetClassesByClass", true)) {
      return new SamiGetClassesByClass();
    }
    if(type.Equals(L"SamiGetMultibranchPipeline", true)) {
      return new SamiGetMultibranchPipeline();
    }
    if(type.Equals(L"SamiGetOrganisations", true)) {
      return new SamiGetOrganisations();
    }
    if(type.Equals(L"SamiGetPipelineBranches", true)) {
      return new SamiGetPipelineBranches();
    }
    if(type.Equals(L"SamiGetPipelineBranchesitem", true)) {
      return new SamiGetPipelineBranchesitem();
    }
    if(type.Equals(L"SamiGetPipelineBranchesitem_latestRun", true)) {
      return new SamiGetPipelineBranchesitem_latestRun();
    }
    if(type.Equals(L"SamiGetPipelineBranchesitem_pullRequest", true)) {
      return new SamiGetPipelineBranchesitem_pullRequest();
    }
    if(type.Equals(L"SamiGetPipelineBranchesitem_pullRequest__links", true)) {
      return new SamiGetPipelineBranchesitem_pullRequest__links();
    }
    if(type.Equals(L"SamiGetPipelines", true)) {
      return new SamiGetPipelines();
    }
    if(type.Equals(L"SamiGetUsers", true)) {
      return new SamiGetUsers();
    }
    if(type.Equals(L"SamiHudsonmodelAllView", true)) {
      return new SamiHudsonmodelAllView();
    }
    if(type.Equals(L"SamiHudsonmodelCauseAction", true)) {
      return new SamiHudsonmodelCauseAction();
    }
    if(type.Equals(L"SamiHudsonmodelCauseUserIdCause", true)) {
      return new SamiHudsonmodelCauseUserIdCause();
    }
    if(type.Equals(L"SamiHudsonmodelComputerSet", true)) {
      return new SamiHudsonmodelComputerSet();
    }
    if(type.Equals(L"SamiHudsonmodelFreeStyleBuild", true)) {
      return new SamiHudsonmodelFreeStyleBuild();
    }
    if(type.Equals(L"SamiHudsonmodelFreeStyleProject", true)) {
      return new SamiHudsonmodelFreeStyleProject();
    }
    if(type.Equals(L"SamiHudsonmodelFreeStyleProjectactions", true)) {
      return new SamiHudsonmodelFreeStyleProjectactions();
    }
    if(type.Equals(L"SamiHudsonmodelFreeStyleProjecthealthReport", true)) {
      return new SamiHudsonmodelFreeStyleProjecthealthReport();
    }
    if(type.Equals(L"SamiHudsonmodelHudson", true)) {
      return new SamiHudsonmodelHudson();
    }
    if(type.Equals(L"SamiHudsonmodelHudsonMasterComputer", true)) {
      return new SamiHudsonmodelHudsonMasterComputer();
    }
    if(type.Equals(L"SamiHudsonmodelHudsonMasterComputer_monitorData", true)) {
      return new SamiHudsonmodelHudsonMasterComputer_monitorData();
    }
    if(type.Equals(L"SamiHudsonmodelHudsonMasterComputerexecutors", true)) {
      return new SamiHudsonmodelHudsonMasterComputerexecutors();
    }
    if(type.Equals(L"SamiHudsonmodelHudsonassignedLabels", true)) {
      return new SamiHudsonmodelHudsonassignedLabels();
    }
    if(type.Equals(L"SamiHudsonmodelLabel1", true)) {
      return new SamiHudsonmodelLabel1();
    }
    if(type.Equals(L"SamiHudsonmodelListView", true)) {
      return new SamiHudsonmodelListView();
    }
    if(type.Equals(L"SamiHudsonmodelQueue", true)) {
      return new SamiHudsonmodelQueue();
    }
    if(type.Equals(L"SamiHudsonmodelQueueBlockedItem", true)) {
      return new SamiHudsonmodelQueueBlockedItem();
    }
    if(type.Equals(L"SamiHudsonmodelQueueLeftItem", true)) {
      return new SamiHudsonmodelQueueLeftItem();
    }
    if(type.Equals(L"SamiHudsonmodelStringParameterDefinition", true)) {
      return new SamiHudsonmodelStringParameterDefinition();
    }
    if(type.Equals(L"SamiHudsonmodelStringParameterValue", true)) {
      return new SamiHudsonmodelStringParameterValue();
    }
    if(type.Equals(L"SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace", true)) {
      return new SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace();
    }
    if(type.Equals(L"SamiHudsonnode_monitorsResponseTimeMonitorData", true)) {
      return new SamiHudsonnode_monitorsResponseTimeMonitorData();
    }
    if(type.Equals(L"SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2", true)) {
      return new SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2();
    }
    if(type.Equals(L"SamiHudsonscmEmptyChangeLogSet", true)) {
      return new SamiHudsonscmEmptyChangeLogSet();
    }
    if(type.Equals(L"SamiHudsonscmNullSCM", true)) {
      return new SamiHudsonscmNullSCM();
    }
    if(type.Equals(L"SamiHudsonsecuritycsrfDefaultCrumbIssuer", true)) {
      return new SamiHudsonsecuritycsrfDefaultCrumbIssuer();
    }
    if(type.Equals(L"SamiHudsonutilClockDifference", true)) {
      return new SamiHudsonutilClockDifference();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanresthalLink", true)) {
      return new SamiIojenkinsblueoceanresthalLink();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanrestimplpipelineBranchImpl", true)) {
      return new SamiIojenkinsblueoceanrestimplpipelineBranchImpl();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions", true)) {
      return new SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1", true)) {
      return new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links", true)) {
      return new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map", true)) {
      return new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl", true)) {
      return new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links", true)) {
      return new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl", true)) {
      return new SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl();
    }
    if(type.Equals(L"SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl", true)) {
      return new SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl();
    }
    if(type.Equals(L"SamiJenkinsmodelUnlabeledLoadStatistics", true)) {
      return new SamiJenkinsmodelUnlabeledLoadStatistics();
    }
    if(type.Equals(L"SamiSwaggyjenkinsOrganisation", true)) {
      return new SamiSwaggyjenkinsOrganisation();
    }
    if(type.Equals(L"SamiSwaggyjenkinsPipeline", true)) {
      return new SamiSwaggyjenkinsPipeline();
    }
    if(type.Equals(L"SamiSwaggyjenkinsPipeline_latestRun", true)) {
      return new SamiSwaggyjenkinsPipeline_latestRun();
    }
    if(type.Equals(L"SamiSwaggyjenkinsPipeline_latestRunartifacts", true)) {
      return new SamiSwaggyjenkinsPipeline_latestRunartifacts();
    }
    if(type.Equals(L"SamiSwaggyjenkinsUser", true)) {
      return new SamiSwaggyjenkinsUser();
    }
    
    if(type.Equals(L"String", true)) {
      return new String();
    }
    if(type.Equals(L"Integer", true)) {
      return new Integer();
    }
    if(type.Equals(L"Long", true)) {
      return new Long();
    }
    if(type.Equals(L"DateTime", true)) {
      return new DateTime();
    }
    return null;
  }
} /* namespace Swagger */

#endif /* ModelFactory_H_ */
