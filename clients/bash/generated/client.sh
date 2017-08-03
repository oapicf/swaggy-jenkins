#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! swagger-codegen (https://github.com/swagger-api/swagger-codegen)
# ! FROM SWAGGER SPECIFICATION IN JSON.
# !
# ! Generated on: 2017-08-03T23:30:07.663Z
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for Swaggy Jenkins.
#
# LICENSE:
# 
#
# CONTACT:
# blah@cliffano.com
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statemets
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=`basename "$0"`

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurences
operation_parameters_minimum_occurences["deletePipelineQueueItem:::organization"]=1
operation_parameters_minimum_occurences["deletePipelineQueueItem:::pipeline"]=1
operation_parameters_minimum_occurences["deletePipelineQueueItem:::queue"]=1
operation_parameters_minimum_occurences["getAuthenticatedUser:::organization"]=1
operation_parameters_minimum_occurences["getClasses:::class"]=1
operation_parameters_minimum_occurences["getOrganisation:::organization"]=1
operation_parameters_minimum_occurences["getPipeline:::organization"]=1
operation_parameters_minimum_occurences["getPipeline:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineActivities:::organization"]=1
operation_parameters_minimum_occurences["getPipelineActivities:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineBranch:::organization"]=1
operation_parameters_minimum_occurences["getPipelineBranch:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineBranch:::branch"]=1
operation_parameters_minimum_occurences["getPipelineBranchRun:::organization"]=1
operation_parameters_minimum_occurences["getPipelineBranchRun:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineBranchRun:::branch"]=1
operation_parameters_minimum_occurences["getPipelineBranchRun:::run"]=1
operation_parameters_minimum_occurences["getPipelineBranches:::organization"]=1
operation_parameters_minimum_occurences["getPipelineBranches:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineFolder:::organization"]=1
operation_parameters_minimum_occurences["getPipelineFolder:::folder"]=1
operation_parameters_minimum_occurences["getPipelineFolderPipeline:::organization"]=1
operation_parameters_minimum_occurences["getPipelineFolderPipeline:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineFolderPipeline:::folder"]=1
operation_parameters_minimum_occurences["getPipelineQueue:::organization"]=1
operation_parameters_minimum_occurences["getPipelineQueue:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRun:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRun:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRun:::run"]=1
operation_parameters_minimum_occurences["getPipelineRunLog:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRunLog:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRunLog:::run"]=1
operation_parameters_minimum_occurences["getPipelineRunLog:::start"]=0
operation_parameters_minimum_occurences["getPipelineRunLog:::download"]=0
operation_parameters_minimum_occurences["getPipelineRunNode:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRunNode:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRunNode:::run"]=1
operation_parameters_minimum_occurences["getPipelineRunNode:::node"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStep:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStep:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStep:::run"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStep:::node"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStep:::step"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStepLog:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStepLog:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStepLog:::run"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStepLog:::node"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeStepLog:::step"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeSteps:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeSteps:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeSteps:::run"]=1
operation_parameters_minimum_occurences["getPipelineRunNodeSteps:::node"]=1
operation_parameters_minimum_occurences["getPipelineRunNodes:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRunNodes:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelineRunNodes:::run"]=1
operation_parameters_minimum_occurences["getPipelineRuns:::organization"]=1
operation_parameters_minimum_occurences["getPipelineRuns:::pipeline"]=1
operation_parameters_minimum_occurences["getPipelines:::organization"]=1
operation_parameters_minimum_occurences["getSCM:::organization"]=1
operation_parameters_minimum_occurences["getSCM:::scm"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepositories:::organization"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepositories:::scm"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepositories:::scmOrganisation"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepositories:::credentialId"]=0
operation_parameters_minimum_occurences["getSCMOrganisationRepositories:::pageSize"]=0
operation_parameters_minimum_occurences["getSCMOrganisationRepositories:::pageNumber"]=0
operation_parameters_minimum_occurences["getSCMOrganisationRepository:::organization"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepository:::scm"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepository:::scmOrganisation"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepository:::repository"]=1
operation_parameters_minimum_occurences["getSCMOrganisationRepository:::credentialId"]=0
operation_parameters_minimum_occurences["getSCMOrganisations:::organization"]=1
operation_parameters_minimum_occurences["getSCMOrganisations:::scm"]=1
operation_parameters_minimum_occurences["getSCMOrganisations:::credentialId"]=0
operation_parameters_minimum_occurences["getUser:::organization"]=1
operation_parameters_minimum_occurences["getUser:::user"]=1
operation_parameters_minimum_occurences["getUserFavorites:::user"]=1
operation_parameters_minimum_occurences["getUsers:::organization"]=1
operation_parameters_minimum_occurences["postPipelineRun:::organization"]=1
operation_parameters_minimum_occurences["postPipelineRun:::pipeline"]=1
operation_parameters_minimum_occurences["postPipelineRun:::run"]=1
operation_parameters_minimum_occurences["postPipelineRuns:::organization"]=1
operation_parameters_minimum_occurences["postPipelineRuns:::pipeline"]=1
operation_parameters_minimum_occurences["putPipelineFavorite:::organization"]=1
operation_parameters_minimum_occurences["putPipelineFavorite:::pipeline"]=1
operation_parameters_minimum_occurences["putPipelineFavorite:::body"]=1
operation_parameters_minimum_occurences["putPipelineRun:::organization"]=1
operation_parameters_minimum_occurences["putPipelineRun:::pipeline"]=1
operation_parameters_minimum_occurences["putPipelineRun:::run"]=1
operation_parameters_minimum_occurences["putPipelineRun:::blocking"]=0
operation_parameters_minimum_occurences["putPipelineRun:::timeOutInSecs"]=0
operation_parameters_minimum_occurences["search:::q"]=1
operation_parameters_minimum_occurences["searchClasses:::q"]=1
operation_parameters_minimum_occurences["getComputer:::depth"]=1
operation_parameters_minimum_occurences["getJob:::name"]=1
operation_parameters_minimum_occurences["getJobConfig:::name"]=1
operation_parameters_minimum_occurences["getJobLastBuild:::name"]=1
operation_parameters_minimum_occurences["getJobProgressiveText:::name"]=1
operation_parameters_minimum_occurences["getJobProgressiveText:::number"]=1
operation_parameters_minimum_occurences["getJobProgressiveText:::start"]=1
operation_parameters_minimum_occurences["getQueueItem:::number"]=1
operation_parameters_minimum_occurences["getView:::name"]=1
operation_parameters_minimum_occurences["getViewConfig:::name"]=1
operation_parameters_minimum_occurences["postCreateItem:::name"]=1
operation_parameters_minimum_occurences["postCreateItem:::from"]=0
operation_parameters_minimum_occurences["postCreateItem:::mode"]=0
operation_parameters_minimum_occurences["postCreateItem:::body"]=0
operation_parameters_minimum_occurences["postCreateItem:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postCreateItem:::Content-Type"]=0
operation_parameters_minimum_occurences["postCreateView:::name"]=1
operation_parameters_minimum_occurences["postCreateView:::body"]=0
operation_parameters_minimum_occurences["postCreateView:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postCreateView:::Content-Type"]=0
operation_parameters_minimum_occurences["postJobBuild:::name"]=1
operation_parameters_minimum_occurences["postJobBuild:::json"]=1
operation_parameters_minimum_occurences["postJobBuild:::token"]=0
operation_parameters_minimum_occurences["postJobBuild:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postJobConfig:::name"]=1
operation_parameters_minimum_occurences["postJobConfig:::body"]=1
operation_parameters_minimum_occurences["postJobConfig:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postJobDelete:::name"]=1
operation_parameters_minimum_occurences["postJobDelete:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postJobDisable:::name"]=1
operation_parameters_minimum_occurences["postJobDisable:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postJobEnable:::name"]=1
operation_parameters_minimum_occurences["postJobEnable:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postJobLastBuildStop:::name"]=1
operation_parameters_minimum_occurences["postJobLastBuildStop:::Jenkins-Crumb"]=0
operation_parameters_minimum_occurences["postViewConfig:::name"]=1
operation_parameters_minimum_occurences["postViewConfig:::body"]=1
operation_parameters_minimum_occurences["postViewConfig:::Jenkins-Crumb"]=0

##
# This array stores the maximum number of allowed occurences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurences
operation_parameters_maximum_occurences["deletePipelineQueueItem:::organization"]=0
operation_parameters_maximum_occurences["deletePipelineQueueItem:::pipeline"]=0
operation_parameters_maximum_occurences["deletePipelineQueueItem:::queue"]=0
operation_parameters_maximum_occurences["getAuthenticatedUser:::organization"]=0
operation_parameters_maximum_occurences["getClasses:::class"]=0
operation_parameters_maximum_occurences["getOrganisation:::organization"]=0
operation_parameters_maximum_occurences["getPipeline:::organization"]=0
operation_parameters_maximum_occurences["getPipeline:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineActivities:::organization"]=0
operation_parameters_maximum_occurences["getPipelineActivities:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineBranch:::organization"]=0
operation_parameters_maximum_occurences["getPipelineBranch:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineBranch:::branch"]=0
operation_parameters_maximum_occurences["getPipelineBranchRun:::organization"]=0
operation_parameters_maximum_occurences["getPipelineBranchRun:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineBranchRun:::branch"]=0
operation_parameters_maximum_occurences["getPipelineBranchRun:::run"]=0
operation_parameters_maximum_occurences["getPipelineBranches:::organization"]=0
operation_parameters_maximum_occurences["getPipelineBranches:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineFolder:::organization"]=0
operation_parameters_maximum_occurences["getPipelineFolder:::folder"]=0
operation_parameters_maximum_occurences["getPipelineFolderPipeline:::organization"]=0
operation_parameters_maximum_occurences["getPipelineFolderPipeline:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineFolderPipeline:::folder"]=0
operation_parameters_maximum_occurences["getPipelineQueue:::organization"]=0
operation_parameters_maximum_occurences["getPipelineQueue:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRun:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRun:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRun:::run"]=0
operation_parameters_maximum_occurences["getPipelineRunLog:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRunLog:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRunLog:::run"]=0
operation_parameters_maximum_occurences["getPipelineRunLog:::start"]=0
operation_parameters_maximum_occurences["getPipelineRunLog:::download"]=0
operation_parameters_maximum_occurences["getPipelineRunNode:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRunNode:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRunNode:::run"]=0
operation_parameters_maximum_occurences["getPipelineRunNode:::node"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStep:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStep:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStep:::run"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStep:::node"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStep:::step"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStepLog:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStepLog:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStepLog:::run"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStepLog:::node"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeStepLog:::step"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeSteps:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeSteps:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeSteps:::run"]=0
operation_parameters_maximum_occurences["getPipelineRunNodeSteps:::node"]=0
operation_parameters_maximum_occurences["getPipelineRunNodes:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRunNodes:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelineRunNodes:::run"]=0
operation_parameters_maximum_occurences["getPipelineRuns:::organization"]=0
operation_parameters_maximum_occurences["getPipelineRuns:::pipeline"]=0
operation_parameters_maximum_occurences["getPipelines:::organization"]=0
operation_parameters_maximum_occurences["getSCM:::organization"]=0
operation_parameters_maximum_occurences["getSCM:::scm"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepositories:::organization"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepositories:::scm"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepositories:::scmOrganisation"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepositories:::credentialId"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepositories:::pageSize"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepositories:::pageNumber"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepository:::organization"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepository:::scm"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepository:::scmOrganisation"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepository:::repository"]=0
operation_parameters_maximum_occurences["getSCMOrganisationRepository:::credentialId"]=0
operation_parameters_maximum_occurences["getSCMOrganisations:::organization"]=0
operation_parameters_maximum_occurences["getSCMOrganisations:::scm"]=0
operation_parameters_maximum_occurences["getSCMOrganisations:::credentialId"]=0
operation_parameters_maximum_occurences["getUser:::organization"]=0
operation_parameters_maximum_occurences["getUser:::user"]=0
operation_parameters_maximum_occurences["getUserFavorites:::user"]=0
operation_parameters_maximum_occurences["getUsers:::organization"]=0
operation_parameters_maximum_occurences["postPipelineRun:::organization"]=0
operation_parameters_maximum_occurences["postPipelineRun:::pipeline"]=0
operation_parameters_maximum_occurences["postPipelineRun:::run"]=0
operation_parameters_maximum_occurences["postPipelineRuns:::organization"]=0
operation_parameters_maximum_occurences["postPipelineRuns:::pipeline"]=0
operation_parameters_maximum_occurences["putPipelineFavorite:::organization"]=0
operation_parameters_maximum_occurences["putPipelineFavorite:::pipeline"]=0
operation_parameters_maximum_occurences["putPipelineFavorite:::body"]=0
operation_parameters_maximum_occurences["putPipelineRun:::organization"]=0
operation_parameters_maximum_occurences["putPipelineRun:::pipeline"]=0
operation_parameters_maximum_occurences["putPipelineRun:::run"]=0
operation_parameters_maximum_occurences["putPipelineRun:::blocking"]=0
operation_parameters_maximum_occurences["putPipelineRun:::timeOutInSecs"]=0
operation_parameters_maximum_occurences["search:::q"]=0
operation_parameters_maximum_occurences["searchClasses:::q"]=0
operation_parameters_maximum_occurences["getComputer:::depth"]=0
operation_parameters_maximum_occurences["getJob:::name"]=0
operation_parameters_maximum_occurences["getJobConfig:::name"]=0
operation_parameters_maximum_occurences["getJobLastBuild:::name"]=0
operation_parameters_maximum_occurences["getJobProgressiveText:::name"]=0
operation_parameters_maximum_occurences["getJobProgressiveText:::number"]=0
operation_parameters_maximum_occurences["getJobProgressiveText:::start"]=0
operation_parameters_maximum_occurences["getQueueItem:::number"]=0
operation_parameters_maximum_occurences["getView:::name"]=0
operation_parameters_maximum_occurences["getViewConfig:::name"]=0
operation_parameters_maximum_occurences["postCreateItem:::name"]=0
operation_parameters_maximum_occurences["postCreateItem:::from"]=0
operation_parameters_maximum_occurences["postCreateItem:::mode"]=0
operation_parameters_maximum_occurences["postCreateItem:::body"]=0
operation_parameters_maximum_occurences["postCreateItem:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postCreateItem:::Content-Type"]=0
operation_parameters_maximum_occurences["postCreateView:::name"]=0
operation_parameters_maximum_occurences["postCreateView:::body"]=0
operation_parameters_maximum_occurences["postCreateView:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postCreateView:::Content-Type"]=0
operation_parameters_maximum_occurences["postJobBuild:::name"]=0
operation_parameters_maximum_occurences["postJobBuild:::json"]=0
operation_parameters_maximum_occurences["postJobBuild:::token"]=0
operation_parameters_maximum_occurences["postJobBuild:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postJobConfig:::name"]=0
operation_parameters_maximum_occurences["postJobConfig:::body"]=0
operation_parameters_maximum_occurences["postJobConfig:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postJobDelete:::name"]=0
operation_parameters_maximum_occurences["postJobDelete:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postJobDisable:::name"]=0
operation_parameters_maximum_occurences["postJobDisable:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postJobEnable:::name"]=0
operation_parameters_maximum_occurences["postJobEnable:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postJobLastBuildStop:::name"]=0
operation_parameters_maximum_occurences["postJobLastBuildStop:::Jenkins-Crumb"]=0
operation_parameters_maximum_occurences["postViewConfig:::name"]=0
operation_parameters_maximum_occurences["postViewConfig:::body"]=0
operation_parameters_maximum_occurences["postViewConfig:::Jenkins-Crumb"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["deletePipelineQueueItem:::organization"]=""
operation_parameters_collection_type["deletePipelineQueueItem:::pipeline"]=""
operation_parameters_collection_type["deletePipelineQueueItem:::queue"]=""
operation_parameters_collection_type["getAuthenticatedUser:::organization"]=""
operation_parameters_collection_type["getClasses:::class"]=""
operation_parameters_collection_type["getOrganisation:::organization"]=""
operation_parameters_collection_type["getPipeline:::organization"]=""
operation_parameters_collection_type["getPipeline:::pipeline"]=""
operation_parameters_collection_type["getPipelineActivities:::organization"]=""
operation_parameters_collection_type["getPipelineActivities:::pipeline"]=""
operation_parameters_collection_type["getPipelineBranch:::organization"]=""
operation_parameters_collection_type["getPipelineBranch:::pipeline"]=""
operation_parameters_collection_type["getPipelineBranch:::branch"]=""
operation_parameters_collection_type["getPipelineBranchRun:::organization"]=""
operation_parameters_collection_type["getPipelineBranchRun:::pipeline"]=""
operation_parameters_collection_type["getPipelineBranchRun:::branch"]=""
operation_parameters_collection_type["getPipelineBranchRun:::run"]=""
operation_parameters_collection_type["getPipelineBranches:::organization"]=""
operation_parameters_collection_type["getPipelineBranches:::pipeline"]=""
operation_parameters_collection_type["getPipelineFolder:::organization"]=""
operation_parameters_collection_type["getPipelineFolder:::folder"]=""
operation_parameters_collection_type["getPipelineFolderPipeline:::organization"]=""
operation_parameters_collection_type["getPipelineFolderPipeline:::pipeline"]=""
operation_parameters_collection_type["getPipelineFolderPipeline:::folder"]=""
operation_parameters_collection_type["getPipelineQueue:::organization"]=""
operation_parameters_collection_type["getPipelineQueue:::pipeline"]=""
operation_parameters_collection_type["getPipelineRun:::organization"]=""
operation_parameters_collection_type["getPipelineRun:::pipeline"]=""
operation_parameters_collection_type["getPipelineRun:::run"]=""
operation_parameters_collection_type["getPipelineRunLog:::organization"]=""
operation_parameters_collection_type["getPipelineRunLog:::pipeline"]=""
operation_parameters_collection_type["getPipelineRunLog:::run"]=""
operation_parameters_collection_type["getPipelineRunLog:::start"]=""
operation_parameters_collection_type["getPipelineRunLog:::download"]=""
operation_parameters_collection_type["getPipelineRunNode:::organization"]=""
operation_parameters_collection_type["getPipelineRunNode:::pipeline"]=""
operation_parameters_collection_type["getPipelineRunNode:::run"]=""
operation_parameters_collection_type["getPipelineRunNode:::node"]=""
operation_parameters_collection_type["getPipelineRunNodeStep:::organization"]=""
operation_parameters_collection_type["getPipelineRunNodeStep:::pipeline"]=""
operation_parameters_collection_type["getPipelineRunNodeStep:::run"]=""
operation_parameters_collection_type["getPipelineRunNodeStep:::node"]=""
operation_parameters_collection_type["getPipelineRunNodeStep:::step"]=""
operation_parameters_collection_type["getPipelineRunNodeStepLog:::organization"]=""
operation_parameters_collection_type["getPipelineRunNodeStepLog:::pipeline"]=""
operation_parameters_collection_type["getPipelineRunNodeStepLog:::run"]=""
operation_parameters_collection_type["getPipelineRunNodeStepLog:::node"]=""
operation_parameters_collection_type["getPipelineRunNodeStepLog:::step"]=""
operation_parameters_collection_type["getPipelineRunNodeSteps:::organization"]=""
operation_parameters_collection_type["getPipelineRunNodeSteps:::pipeline"]=""
operation_parameters_collection_type["getPipelineRunNodeSteps:::run"]=""
operation_parameters_collection_type["getPipelineRunNodeSteps:::node"]=""
operation_parameters_collection_type["getPipelineRunNodes:::organization"]=""
operation_parameters_collection_type["getPipelineRunNodes:::pipeline"]=""
operation_parameters_collection_type["getPipelineRunNodes:::run"]=""
operation_parameters_collection_type["getPipelineRuns:::organization"]=""
operation_parameters_collection_type["getPipelineRuns:::pipeline"]=""
operation_parameters_collection_type["getPipelines:::organization"]=""
operation_parameters_collection_type["getSCM:::organization"]=""
operation_parameters_collection_type["getSCM:::scm"]=""
operation_parameters_collection_type["getSCMOrganisationRepositories:::organization"]=""
operation_parameters_collection_type["getSCMOrganisationRepositories:::scm"]=""
operation_parameters_collection_type["getSCMOrganisationRepositories:::scmOrganisation"]=""
operation_parameters_collection_type["getSCMOrganisationRepositories:::credentialId"]=""
operation_parameters_collection_type["getSCMOrganisationRepositories:::pageSize"]=""
operation_parameters_collection_type["getSCMOrganisationRepositories:::pageNumber"]=""
operation_parameters_collection_type["getSCMOrganisationRepository:::organization"]=""
operation_parameters_collection_type["getSCMOrganisationRepository:::scm"]=""
operation_parameters_collection_type["getSCMOrganisationRepository:::scmOrganisation"]=""
operation_parameters_collection_type["getSCMOrganisationRepository:::repository"]=""
operation_parameters_collection_type["getSCMOrganisationRepository:::credentialId"]=""
operation_parameters_collection_type["getSCMOrganisations:::organization"]=""
operation_parameters_collection_type["getSCMOrganisations:::scm"]=""
operation_parameters_collection_type["getSCMOrganisations:::credentialId"]=""
operation_parameters_collection_type["getUser:::organization"]=""
operation_parameters_collection_type["getUser:::user"]=""
operation_parameters_collection_type["getUserFavorites:::user"]=""
operation_parameters_collection_type["getUsers:::organization"]=""
operation_parameters_collection_type["postPipelineRun:::organization"]=""
operation_parameters_collection_type["postPipelineRun:::pipeline"]=""
operation_parameters_collection_type["postPipelineRun:::run"]=""
operation_parameters_collection_type["postPipelineRuns:::organization"]=""
operation_parameters_collection_type["postPipelineRuns:::pipeline"]=""
operation_parameters_collection_type["putPipelineFavorite:::organization"]=""
operation_parameters_collection_type["putPipelineFavorite:::pipeline"]=""
operation_parameters_collection_type["putPipelineFavorite:::body"]=""
operation_parameters_collection_type["putPipelineRun:::organization"]=""
operation_parameters_collection_type["putPipelineRun:::pipeline"]=""
operation_parameters_collection_type["putPipelineRun:::run"]=""
operation_parameters_collection_type["putPipelineRun:::blocking"]=""
operation_parameters_collection_type["putPipelineRun:::timeOutInSecs"]=""
operation_parameters_collection_type["search:::q"]=""
operation_parameters_collection_type["searchClasses:::q"]=""
operation_parameters_collection_type["getComputer:::depth"]=""
operation_parameters_collection_type["getJob:::name"]=""
operation_parameters_collection_type["getJobConfig:::name"]=""
operation_parameters_collection_type["getJobLastBuild:::name"]=""
operation_parameters_collection_type["getJobProgressiveText:::name"]=""
operation_parameters_collection_type["getJobProgressiveText:::number"]=""
operation_parameters_collection_type["getJobProgressiveText:::start"]=""
operation_parameters_collection_type["getQueueItem:::number"]=""
operation_parameters_collection_type["getView:::name"]=""
operation_parameters_collection_type["getViewConfig:::name"]=""
operation_parameters_collection_type["postCreateItem:::name"]=""
operation_parameters_collection_type["postCreateItem:::from"]=""
operation_parameters_collection_type["postCreateItem:::mode"]=""
operation_parameters_collection_type["postCreateItem:::body"]=""
operation_parameters_collection_type["postCreateItem:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postCreateItem:::Content-Type"]=""
operation_parameters_collection_type["postCreateView:::name"]=""
operation_parameters_collection_type["postCreateView:::body"]=""
operation_parameters_collection_type["postCreateView:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postCreateView:::Content-Type"]=""
operation_parameters_collection_type["postJobBuild:::name"]=""
operation_parameters_collection_type["postJobBuild:::json"]=""
operation_parameters_collection_type["postJobBuild:::token"]=""
operation_parameters_collection_type["postJobBuild:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postJobConfig:::name"]=""
operation_parameters_collection_type["postJobConfig:::body"]=""
operation_parameters_collection_type["postJobConfig:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postJobDelete:::name"]=""
operation_parameters_collection_type["postJobDelete:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postJobDisable:::name"]=""
operation_parameters_collection_type["postJobDisable:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postJobEnable:::name"]=""
operation_parameters_collection_type["postJobEnable:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postJobLastBuildStop:::name"]=""
operation_parameters_collection_type["postJobLastBuildStop:::Jenkins-Crumb"]=""
operation_parameters_collection_type["postViewConfig:::name"]=""
operation_parameters_collection_type["postViewConfig:::body"]=""
operation_parameters_collection_type["postViewConfig:::Jenkins-Crumb"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\t/%09/g' \
       -e 's/?/%3F/g' <<<$raw_url);

    echo $value
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type=$1

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo ${mime_type_abbreviations[$mime_type]}
    else
        echo $1
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add convertion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local body_parameter_count=${#body_parameters[@]}
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input paramaters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values=($(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}"))

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        if [[ $path_template =~ (.*)(\{$pparam\})(.*) ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    local query_parameter_count=${#query_params[@]}
    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_values=($(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}"))
        local parameter_value=""

        if [[ -n "${parameter_values[@]}" ]]; then
            if [[ $((count++)) -gt 0 ]]; then
                query_request_part+="&"
            fi
        fi

        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
 [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo $path_template
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}Swaggy Jenkins command line client (API version 0.1.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Basic AUTH${OFF} - add '-u <username>:<password>' before ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[blueOcean]${OFF}"
read -d '' ops <<EOF
  ${CYAN}deletePipelineQueueItem${OFF}; (AUTH)
  ${CYAN}getAuthenticatedUser${OFF}; (AUTH)
  ${CYAN}getClasses${OFF}; (AUTH)
  ${CYAN}getOrganisation${OFF}; (AUTH)
  ${CYAN}getOrganisations${OFF}; (AUTH)
  ${CYAN}getPipeline${OFF}; (AUTH)
  ${CYAN}getPipelineActivities${OFF}; (AUTH)
  ${CYAN}getPipelineBranch${OFF}; (AUTH)
  ${CYAN}getPipelineBranchRun${OFF}; (AUTH)
  ${CYAN}getPipelineBranches${OFF}; (AUTH)
  ${CYAN}getPipelineFolder${OFF}; (AUTH)
  ${CYAN}getPipelineFolderPipeline${OFF}; (AUTH)
  ${CYAN}getPipelineQueue${OFF}; (AUTH)
  ${CYAN}getPipelineRun${OFF}; (AUTH)
  ${CYAN}getPipelineRunLog${OFF}; (AUTH)
  ${CYAN}getPipelineRunNode${OFF}; (AUTH)
  ${CYAN}getPipelineRunNodeStep${OFF}; (AUTH)
  ${CYAN}getPipelineRunNodeStepLog${OFF}; (AUTH)
  ${CYAN}getPipelineRunNodeSteps${OFF}; (AUTH)
  ${CYAN}getPipelineRunNodes${OFF}; (AUTH)
  ${CYAN}getPipelineRuns${OFF}; (AUTH)
  ${CYAN}getPipelines${OFF}; (AUTH)
  ${CYAN}getSCM${OFF}; (AUTH)
  ${CYAN}getSCMOrganisationRepositories${OFF}; (AUTH)
  ${CYAN}getSCMOrganisationRepository${OFF}; (AUTH)
  ${CYAN}getSCMOrganisations${OFF}; (AUTH)
  ${CYAN}getUser${OFF}; (AUTH)
  ${CYAN}getUserFavorites${OFF}; (AUTH)
  ${CYAN}getUsers${OFF}; (AUTH)
  ${CYAN}postPipelineRun${OFF}; (AUTH)
  ${CYAN}postPipelineRuns${OFF}; (AUTH)
  ${CYAN}putPipelineFavorite${OFF}; (AUTH)
  ${CYAN}putPipelineRun${OFF}; (AUTH)
  ${CYAN}search${OFF}; (AUTH)
  ${CYAN}searchClasses${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[remoteAccess]${OFF}"
read -d '' ops <<EOF
  ${CYAN}getComputer${OFF}; (AUTH)
  ${CYAN}getCrumb${OFF}; (AUTH)
  ${CYAN}getJenkins${OFF}; (AUTH)
  ${CYAN}getJob${OFF}; (AUTH)
  ${CYAN}getJobConfig${OFF}; (AUTH)
  ${CYAN}getJobLastBuild${OFF}; (AUTH)
  ${CYAN}getJobProgressiveText${OFF}; (AUTH)
  ${CYAN}getQueue${OFF}; (AUTH)
  ${CYAN}getQueueItem${OFF}; (AUTH)
  ${CYAN}getView${OFF}; (AUTH)
  ${CYAN}getViewConfig${OFF}; (AUTH)
  ${CYAN}headJenkins${OFF}; (AUTH)
  ${CYAN}postCreateItem${OFF}; (AUTH)
  ${CYAN}postCreateView${OFF}; (AUTH)
  ${CYAN}postJobBuild${OFF}; (AUTH)
  ${CYAN}postJobConfig${OFF}; (AUTH)
  ${CYAN}postJobDelete${OFF}; (AUTH)
  ${CYAN}postJobDisable${OFF}; (AUTH)
  ${CYAN}postJobEnable${OFF}; (AUTH)
  ${CYAN}postJobLastBuildStop${OFF}; (AUTH)
  ${CYAN}postViewConfig${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\t\t\t\tPrint this help"
    echo -e "  -V,--version\t\t\t\tPrint API version"
    echo -e "  --about\t\t\t\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\t\t\t\tSpecify the host URL "

echo -e "              \t\t\t\t(e.g. 'https://127.0.0.1:8080')"
    echo -e "  --force\t\t\t\tForce command invocation in spite of missing"
    echo -e "         \t\t\t\trequired parameters or wrong content type"
    echo -e "  --dry-run\t\t\t\tPrint out the cURL command without"
    echo -e "           \t\t\t\texecuting it"
    echo -e "  -nc,--no-colors\t\t\tEnforce print without colors, otherwise autodected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\t\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\tSet the 'Content-type' header in "
    echo -e "                                \tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}Swaggy Jenkins command line client (API version 0.1.0)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: blah@cliffano.com"
    echo ""
read -d '' appdescription <<EOF

Jenkins API clients generated from Swagger / Open API specification
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}Swaggy Jenkins command line client (API version 0.1.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for deletePipelineQueueItem operation
#
##############################################################################
print_deletePipelineQueueItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePipelineQueueItem - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete queue item from an organization pipeline queue" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}queue${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the queue item ${YELLOW}Specify as: queue=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully deleted queue item${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAuthenticatedUser operation
#
##############################################################################
print_getAuthenticatedUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAuthenticatedUser - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve authenticated user details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved authenticated user details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getClasses operation
#
##############################################################################
print_getClasses_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getClasses - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a list of class names supported by a given class" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the class ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved class names${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getOrganisation operation
#
##############################################################################
print_getOrganisation_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getOrganisation - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve organization details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved pipeline details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Pipeline cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getOrganisations operation
#
##############################################################################
print_getOrganisations_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getOrganisations - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve all organizations details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved pipelines details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipeline operation
#
##############################################################################
print_getPipeline_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipeline - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve pipeline details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved pipeline details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Pipeline cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineActivities operation
#
##############################################################################
print_getPipelineActivities_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineActivities - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve all activities details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved all activities details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineBranch operation
#
##############################################################################
print_getPipelineBranch_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineBranch - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve branch details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}branch${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the branch ${YELLOW}Specify as: branch=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved branch details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineBranchRun operation
#
##############################################################################
print_getPipelineBranchRun_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineBranchRun - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve branch run details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}branch${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the branch ${YELLOW}Specify as: branch=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved run details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineBranches operation
#
##############################################################################
print_getPipelineBranches_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineBranches - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve all branches details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved all branches details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineFolder operation
#
##############################################################################
print_getPipelineFolder_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineFolder - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve pipeline folder for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}folder${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the folder ${YELLOW}Specify as: folder=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved folder details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineFolderPipeline operation
#
##############################################################################
print_getPipelineFolderPipeline_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineFolderPipeline - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve pipeline details for an organization folder" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}folder${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the folder ${YELLOW}Specify as: folder=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved pipeline details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineQueue operation
#
##############################################################################
print_getPipelineQueue_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineQueue - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve queue details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved queue details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRun operation
#
##############################################################################
print_getPipelineRun_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRun - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve run details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved run details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRunLog operation
#
##############################################################################
print_getPipelineRunLog_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRunLog - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get log for a pipeline run" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start${OFF} ${BLUE}[Integer]${OFF}${OFF} - Start position of the log${YELLOW} Specify as: start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}download${OFF} ${BLUE}[Boolean]${OFF}${OFF} - Set to true in order to download the file, otherwise it's passed as a response body${YELLOW} Specify as: download=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved pipeline run log${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRunNode operation
#
##############################################################################
print_getPipelineRunNode_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRunNode - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve run node details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}node${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the node ${YELLOW}Specify as: node=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved run node details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRunNodeStep operation
#
##############################################################################
print_getPipelineRunNodeStep_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRunNodeStep - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve run node details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}node${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the node ${YELLOW}Specify as: node=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}step${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the step ${YELLOW}Specify as: step=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved run node step details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRunNodeStepLog operation
#
##############################################################################
print_getPipelineRunNodeStepLog_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRunNodeStepLog - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get log for a pipeline run node step" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}node${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the node ${YELLOW}Specify as: node=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}step${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the step ${YELLOW}Specify as: step=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved pipeline run node step log${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRunNodeSteps operation
#
##############################################################################
print_getPipelineRunNodeSteps_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRunNodeSteps - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve run node steps details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}node${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the node ${YELLOW}Specify as: node=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved run node steps details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRunNodes operation
#
##############################################################################
print_getPipelineRunNodes_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRunNodes - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve run nodes details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved run nodes details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelineRuns operation
#
##############################################################################
print_getPipelineRuns_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelineRuns - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve all runs details for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved runs details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPipelines operation
#
##############################################################################
print_getPipelines_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPipelines - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve all pipelines details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved pipelines details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getSCM operation
#
##############################################################################
print_getSCM_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSCM - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve SCM details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scm${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of SCM ${YELLOW}Specify as: scm=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved SCM details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getSCMOrganisationRepositories operation
#
##############################################################################
print_getSCMOrganisationRepositories_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSCMOrganisationRepositories - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve SCM organization repositories details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scm${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of SCM ${YELLOW}Specify as: scm=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scmOrganisation${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the SCM organization ${YELLOW}Specify as: scmOrganisation=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}credentialId${OFF} ${BLUE}[String]${OFF}${OFF} - Credential ID${YELLOW} Specify as: credentialId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pageSize${OFF} ${BLUE}[Integer]${OFF}${OFF} - Number of items in a page${YELLOW} Specify as: pageSize=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pageNumber${OFF} ${BLUE}[Integer]${OFF}${OFF} - Page number${YELLOW} Specify as: pageNumber=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved SCM organization repositories details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getSCMOrganisationRepository operation
#
##############################################################################
print_getSCMOrganisationRepository_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSCMOrganisationRepository - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve SCM organization repository details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scm${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of SCM ${YELLOW}Specify as: scm=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scmOrganisation${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the SCM organization ${YELLOW}Specify as: scmOrganisation=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}repository${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the SCM repository ${YELLOW}Specify as: repository=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}credentialId${OFF} ${BLUE}[String]${OFF}${OFF} - Credential ID${YELLOW} Specify as: credentialId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved SCM organizations details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getSCMOrganisations operation
#
##############################################################################
print_getSCMOrganisations_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSCMOrganisations - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve SCM organizations details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scm${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of SCM ${YELLOW}Specify as: scm=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}credentialId${OFF} ${BLUE}[String]${OFF}${OFF} - Credential ID${YELLOW} Specify as: credentialId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved SCM organizations details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getUser operation
#
##############################################################################
print_getUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUser - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve user details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the user ${YELLOW}Specify as: user=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved users details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getUserFavorites operation
#
##############################################################################
print_getUserFavorites_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUserFavorites - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve user favorites details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the user ${YELLOW}Specify as: user=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved users favorites details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getUsers operation
#
##############################################################################
print_getUsers_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUsers - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve users details for an organization" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved users details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postPipelineRun operation
#
##############################################################################
print_postPipelineRun_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postPipelineRun - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Replay an organization pipeline run" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully replayed a pipeline run${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postPipelineRuns operation
#
##############################################################################
print_postPipelineRuns_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postPipelineRuns - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Start a build for an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully started a build${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for putPipelineFavorite operation
#
##############################################################################
print_putPipelineFavorite_help() {
    echo ""
    echo -e "${BOLD}${WHITE}putPipelineFavorite - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Favorite/unfavorite a pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF} ${RED}(required)${OFF}${OFF} - Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully favorited/unfavorited a pipeline${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for putPipelineRun operation
#
##############################################################################
print_putPipelineRun_help() {
    echo ""
    echo -e "${BOLD}${WHITE}putPipelineRun - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Stop a build of an organization pipeline" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}organization${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the organization ${YELLOW}Specify as: organization=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pipeline${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the pipeline ${YELLOW}Specify as: pipeline=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}run${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the run ${YELLOW}Specify as: run=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blocking${OFF} ${BLUE}[String]${OFF}${OFF} - Set to true to make blocking stop, default: false${YELLOW} Specify as: blocking=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}timeOutInSecs${OFF} ${BLUE}[Integer]${OFF}${OFF} - Timeout in seconds, default: 10 seconds${YELLOW} Specify as: timeOutInSecs=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully stopped a build${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for search operation
#
##############################################################################
print_search_help() {
    echo ""
    echo -e "${BOLD}${WHITE}search - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Search for any resource details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}q${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Query string${YELLOW} Specify as: q=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved search result${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for searchClasses operation
#
##############################################################################
print_searchClasses_help() {
    echo ""
    echo -e "${BOLD}${WHITE}searchClasses - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get classes details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}q${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Query string containing an array of class names${YELLOW} Specify as: q=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved search result${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getComputer operation
#
##############################################################################
print_getComputer_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getComputer - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve computer details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}depth${OFF} ${BLUE}[Integer]${OFF} ${RED}(required)${OFF}${OFF} - Recursion depth in response model${YELLOW} Specify as: depth=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved computer details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCrumb operation
#
##############################################################################
print_getCrumb_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCrumb - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve CSRF protection token" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved CSRF protection token${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getJenkins operation
#
##############################################################################
print_getJenkins_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getJenkins - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve Jenkins details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved Jenkins details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getJob operation
#
##############################################################################
print_getJob_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getJob - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve job details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved job details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getJobConfig operation
#
##############################################################################
print_getJobConfig_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getJobConfig - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve job configuration" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved job configuration in config.xml format${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getJobLastBuild operation
#
##############################################################################
print_getJobLastBuild_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getJobLastBuild - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve job's last build details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved job's last build details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getJobProgressiveText operation
#
##############################################################################
print_getJobProgressiveText_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getJobProgressiveText - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve job's build progressive text output" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}number${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Build number ${YELLOW}Specify as: number=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Starting point of progressive text output${YELLOW} Specify as: start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved job's build progressive text output${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getQueue operation
#
##############################################################################
print_getQueue_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getQueue - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve queue details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved queue details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getQueueItem operation
#
##############################################################################
print_getQueueItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getQueueItem - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve queued item details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}number${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Queue number ${YELLOW}Specify as: number=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved queued item details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getView operation
#
##############################################################################
print_getView_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getView - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve view details" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the view ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved view details${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;View cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getViewConfig operation
#
##############################################################################
print_getViewConfig_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getViewConfig - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve view configuration" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the view ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved view configuration in config.xml format${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;View cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for headJenkins operation
#
##############################################################################
print_headJenkins_help() {
    echo ""
    echo -e "${BOLD}${WHITE}headJenkins - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve Jenkins headers" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved Jenkins headers${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        echo -e "       ${BOLD}${WHITE}Response headers${OFF}"
        echo -e "       ${BLUE}x-jenkins${OFF} - Jenkins version number" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postCreateItem operation
#
##############################################################################
print_postCreateItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postCreateItem - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a new job using job configuration, or copied from an existing job" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the new job${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}from${OFF} ${BLUE}[String]${OFF}${OFF} - Existing job to copy from${YELLOW} Specify as: from=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mode${OFF} ${BLUE}[String]${OFF}${OFF} - Set to 'copy' for copying an existing job${YELLOW} Specify as: mode=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Content-Type${OFF} ${BLUE}[String]${OFF}${OFF} - Content type header application/xml ${YELLOW}Specify as: Content-Type:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF}${OFF} - Job configuration in config.xml format" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully created a new job${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;An error has occurred - error message is embedded inside the HTML response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postCreateView operation
#
##############################################################################
print_postCreateView_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postCreateView - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a new view using view configuration" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the new view${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Content-Type${OFF} ${BLUE}[String]${OFF}${OFF} - Content type header application/xml ${YELLOW}Specify as: Content-Type:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF}${OFF} - View configuration in config.xml format" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully created the view${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;An error has occurred - error message is embedded inside the HTML response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postJobBuild operation
#
##############################################################################
print_postJobBuild_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postJobBuild - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Build a job" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}json${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - ${YELLOW} Specify as: json=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token${OFF} ${BLUE}[String]${OFF}${OFF} - ${YELLOW} Specify as: token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully built the job (backward compatibility for older versions of Jenkins)${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Successfully built the job${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postJobConfig operation
#
##############################################################################
print_postJobConfig_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postJobConfig - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update job configuration" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF} ${RED}(required)${OFF}${OFF} - Job configuration in config.xml format" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully retrieved job configuration in config.xml format${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;An error has occurred - error message is embedded inside the HTML response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postJobDelete operation
#
##############################################################################
print_postJobDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postJobDelete - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a job" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully deleted the job${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postJobDisable operation
#
##############################################################################
print_postJobDisable_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postJobDisable - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Disable a job" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully disabled the job${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postJobEnable operation
#
##############################################################################
print_postJobEnable_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postJobEnable - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Enable a job" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully enabled the job${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postJobLastBuildStop operation
#
##############################################################################
print_postJobLastBuildStop_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postJobLastBuildStop - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Stop a job" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the job ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully stopped the job${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Job cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postViewConfig operation
#
##############################################################################
print_postViewConfig_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postViewConfig - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update view configuration" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[String]${OFF} ${RED}(required)${OFF}${OFF} - Name of the view ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}Jenkins-Crumb${OFF} ${BLUE}[String]${OFF}${OFF} - CSRF protection token ${YELLOW}Specify as: Jenkins-Crumb:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[]${OFF} ${RED}(required)${OFF}${OFF} - View configuration in config.xml format" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successfully updated view configuration${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;An error has occurred - error message is embedded inside the HTML response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Authentication failed - incorrect username and/or password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Jenkins requires authentication - please set username and password${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;View cannot be found on Jenkins instance${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call deletePipelineQueueItem operation
#
##############################################################################
call_deletePipelineQueueItem() {
    local path_parameter_names=(organization pipeline queue)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAuthenticatedUser operation
#
##############################################################################
call_getAuthenticatedUser() {
    local path_parameter_names=(organization)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/user/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getClasses operation
#
##############################################################################
call_getClasses() {
    local path_parameter_names=(class)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/classes/{class}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getOrganisation operation
#
##############################################################################
call_getOrganisation() {
    local path_parameter_names=(organization)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getOrganisations operation
#
##############################################################################
call_getOrganisations() {
    local path_parameter_names=()
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipeline operation
#
##############################################################################
call_getPipeline() {
    local path_parameter_names=(organization pipeline)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineActivities operation
#
##############################################################################
call_getPipelineActivities() {
    local path_parameter_names=(organization pipeline)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineBranch operation
#
##############################################################################
call_getPipelineBranch() {
    local path_parameter_names=(organization pipeline branch)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineBranchRun operation
#
##############################################################################
call_getPipelineBranchRun() {
    local path_parameter_names=(organization pipeline branch run)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineBranches operation
#
##############################################################################
call_getPipelineBranches() {
    local path_parameter_names=(organization pipeline)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineFolder operation
#
##############################################################################
call_getPipelineFolder() {
    local path_parameter_names=(organization folder)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{folder}/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineFolderPipeline operation
#
##############################################################################
call_getPipelineFolderPipeline() {
    local path_parameter_names=(organization pipeline folder)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineQueue operation
#
##############################################################################
call_getPipelineQueue() {
    local path_parameter_names=(organization pipeline)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRun operation
#
##############################################################################
call_getPipelineRun() {
    local path_parameter_names=(organization pipeline run)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRunLog operation
#
##############################################################################
call_getPipelineRunLog() {
    local path_parameter_names=(organization pipeline run)
    local query_parameter_names=(start download  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRunNode operation
#
##############################################################################
call_getPipelineRunNode() {
    local path_parameter_names=(organization pipeline run node)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRunNodeStep operation
#
##############################################################################
call_getPipelineRunNodeStep() {
    local path_parameter_names=(organization pipeline run node step)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRunNodeStepLog operation
#
##############################################################################
call_getPipelineRunNodeStepLog() {
    local path_parameter_names=(organization pipeline run node step)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRunNodeSteps operation
#
##############################################################################
call_getPipelineRunNodeSteps() {
    local path_parameter_names=(organization pipeline run node)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRunNodes operation
#
##############################################################################
call_getPipelineRunNodes() {
    local path_parameter_names=(organization pipeline run)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelineRuns operation
#
##############################################################################
call_getPipelineRuns() {
    local path_parameter_names=(organization pipeline)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPipelines operation
#
##############################################################################
call_getPipelines() {
    local path_parameter_names=(organization)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getSCM operation
#
##############################################################################
call_getSCM() {
    local path_parameter_names=(organization scm)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/scm/{scm}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getSCMOrganisationRepositories operation
#
##############################################################################
call_getSCMOrganisationRepositories() {
    local path_parameter_names=(organization scm scmOrganisation)
    local query_parameter_names=(credentialId pageSize pageNumber  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getSCMOrganisationRepository operation
#
##############################################################################
call_getSCMOrganisationRepository() {
    local path_parameter_names=(organization scm scmOrganisation repository)
    local query_parameter_names=(credentialId  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getSCMOrganisations operation
#
##############################################################################
call_getSCMOrganisations() {
    local path_parameter_names=(organization scm)
    local query_parameter_names=(credentialId  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/scm/{scm}/organizations" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUser operation
#
##############################################################################
call_getUser() {
    local path_parameter_names=(organization user)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/users/{user}" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUserFavorites operation
#
##############################################################################
call_getUserFavorites() {
    local path_parameter_names=(user)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/users/{user}/favorites" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUsers operation
#
##############################################################################
call_getUsers() {
    local path_parameter_names=(organization)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/users/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postPipelineRun operation
#
##############################################################################
call_postPipelineRun() {
    local path_parameter_names=(organization pipeline run)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postPipelineRuns operation
#
##############################################################################
call_postPipelineRuns() {
    local path_parameter_names=(organization pipeline)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call putPipelineFavorite operation
#
##############################################################################
call_putPipelineFavorite() {
    local path_parameter_names=(organization pipeline)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call putPipelineRun operation
#
##############################################################################
call_putPipelineRun() {
    local path_parameter_names=(organization pipeline run)
    local query_parameter_names=(blocking timeOutInSecs  )
    local path

    path=$(build_request_path "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call search operation
#
##############################################################################
call_search() {
    local path_parameter_names=()
    local query_parameter_names=(q  )
    local path

    path=$(build_request_path "/blue/rest/search/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call searchClasses operation
#
##############################################################################
call_searchClasses() {
    local path_parameter_names=()
    local query_parameter_names=(q  )
    local path

    path=$(build_request_path "/blue/rest/classes/" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getComputer operation
#
##############################################################################
call_getComputer() {
    local path_parameter_names=()
    local query_parameter_names=(depth  )
    local path

    path=$(build_request_path "/computer/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getCrumb operation
#
##############################################################################
call_getCrumb() {
    local path_parameter_names=()
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/crumbIssuer/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getJenkins operation
#
##############################################################################
call_getJenkins() {
    local path_parameter_names=()
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getJob operation
#
##############################################################################
call_getJob() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getJobConfig operation
#
##############################################################################
call_getJobConfig() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/config.xml" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getJobLastBuild operation
#
##############################################################################
call_getJobLastBuild() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/lastBuild/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getJobProgressiveText operation
#
##############################################################################
call_getJobProgressiveText() {
    local path_parameter_names=(name number)
    local query_parameter_names=(start  )
    local path

    path=$(build_request_path "/job/{name}/{number}/logText/progressiveText" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getQueue operation
#
##############################################################################
call_getQueue() {
    local path_parameter_names=()
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/queue/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getQueueItem operation
#
##############################################################################
call_getQueueItem() {
    local path_parameter_names=(number)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/queue/item/{number}/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getView operation
#
##############################################################################
call_getView() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/view/{name}/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getViewConfig operation
#
##############################################################################
call_getViewConfig() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/view/{name}/config.xml" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call headJenkins operation
#
##############################################################################
call_headJenkins() {
    local path_parameter_names=()
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/api/json" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="HEAD"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postCreateItem operation
#
##############################################################################
call_postCreateItem() {
    local path_parameter_names=()
    local query_parameter_names=(name from mode  )
    local path

    path=$(build_request_path "/createItem" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call postCreateView operation
#
##############################################################################
call_postCreateView() {
    local path_parameter_names=()
    local query_parameter_names=(name  )
    local path

    path=$(build_request_path "/createView" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call postJobBuild operation
#
##############################################################################
call_postJobBuild() {
    local path_parameter_names=(name)
    local query_parameter_names=(json token  )
    local path

    path=$(build_request_path "/job/{name}/build" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postJobConfig operation
#
##############################################################################
call_postJobConfig() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/config.xml" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call postJobDelete operation
#
##############################################################################
call_postJobDelete() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/doDelete" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postJobDisable operation
#
##############################################################################
call_postJobDisable() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/disable" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postJobEnable operation
#
##############################################################################
call_postJobEnable() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/enable" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postJobLastBuildStop operation
#
##############################################################################
call_postJobLastBuildStop() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/job/{name}/lastBuild/stop" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call postViewConfig operation
#
##############################################################################
call_postViewConfig() {
    local path_parameter_names=(name)
    local query_parameter_names=(  )
    local path

    path=$(build_request_path "/view/{name}/config.xml" path_parameter_names query_parameter_names)
    if [ $? -ne 0 ]; then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguemnts before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    deletePipelineQueueItem)
    operation="deletePipelineQueueItem"
    ;;
    getAuthenticatedUser)
    operation="getAuthenticatedUser"
    ;;
    getClasses)
    operation="getClasses"
    ;;
    getOrganisation)
    operation="getOrganisation"
    ;;
    getOrganisations)
    operation="getOrganisations"
    ;;
    getPipeline)
    operation="getPipeline"
    ;;
    getPipelineActivities)
    operation="getPipelineActivities"
    ;;
    getPipelineBranch)
    operation="getPipelineBranch"
    ;;
    getPipelineBranchRun)
    operation="getPipelineBranchRun"
    ;;
    getPipelineBranches)
    operation="getPipelineBranches"
    ;;
    getPipelineFolder)
    operation="getPipelineFolder"
    ;;
    getPipelineFolderPipeline)
    operation="getPipelineFolderPipeline"
    ;;
    getPipelineQueue)
    operation="getPipelineQueue"
    ;;
    getPipelineRun)
    operation="getPipelineRun"
    ;;
    getPipelineRunLog)
    operation="getPipelineRunLog"
    ;;
    getPipelineRunNode)
    operation="getPipelineRunNode"
    ;;
    getPipelineRunNodeStep)
    operation="getPipelineRunNodeStep"
    ;;
    getPipelineRunNodeStepLog)
    operation="getPipelineRunNodeStepLog"
    ;;
    getPipelineRunNodeSteps)
    operation="getPipelineRunNodeSteps"
    ;;
    getPipelineRunNodes)
    operation="getPipelineRunNodes"
    ;;
    getPipelineRuns)
    operation="getPipelineRuns"
    ;;
    getPipelines)
    operation="getPipelines"
    ;;
    getSCM)
    operation="getSCM"
    ;;
    getSCMOrganisationRepositories)
    operation="getSCMOrganisationRepositories"
    ;;
    getSCMOrganisationRepository)
    operation="getSCMOrganisationRepository"
    ;;
    getSCMOrganisations)
    operation="getSCMOrganisations"
    ;;
    getUser)
    operation="getUser"
    ;;
    getUserFavorites)
    operation="getUserFavorites"
    ;;
    getUsers)
    operation="getUsers"
    ;;
    postPipelineRun)
    operation="postPipelineRun"
    ;;
    postPipelineRuns)
    operation="postPipelineRuns"
    ;;
    putPipelineFavorite)
    operation="putPipelineFavorite"
    ;;
    putPipelineRun)
    operation="putPipelineRun"
    ;;
    search)
    operation="search"
    ;;
    searchClasses)
    operation="searchClasses"
    ;;
    getComputer)
    operation="getComputer"
    ;;
    getCrumb)
    operation="getCrumb"
    ;;
    getJenkins)
    operation="getJenkins"
    ;;
    getJob)
    operation="getJob"
    ;;
    getJobConfig)
    operation="getJobConfig"
    ;;
    getJobLastBuild)
    operation="getJobLastBuild"
    ;;
    getJobProgressiveText)
    operation="getJobProgressiveText"
    ;;
    getQueue)
    operation="getQueue"
    ;;
    getQueueItem)
    operation="getQueueItem"
    ;;
    getView)
    operation="getView"
    ;;
    getViewConfig)
    operation="getViewConfig"
    ;;
    headJenkins)
    operation="headJenkins"
    ;;
    postCreateItem)
    operation="postCreateItem"
    ;;
    postCreateView)
    operation="postCreateView"
    ;;
    postJobBuild)
    operation="postJobBuild"
    ;;
    postJobConfig)
    operation="postJobConfig"
    ;;
    postJobDelete)
    operation="postJobDelete"
    ;;
    postJobDisable)
    operation="postJobDisable"
    ;;
    postJobEnable)
    operation="postJobEnable"
    ;;
    postJobLastBuildStop)
    operation="postJobLastBuildStop"
    ;;
    postViewConfig)
    operation="postViewConfig"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        IFS=':=' read body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > $body_content_temp_file
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    deletePipelineQueueItem)
    call_deletePipelineQueueItem
    ;;
    getAuthenticatedUser)
    call_getAuthenticatedUser
    ;;
    getClasses)
    call_getClasses
    ;;
    getOrganisation)
    call_getOrganisation
    ;;
    getOrganisations)
    call_getOrganisations
    ;;
    getPipeline)
    call_getPipeline
    ;;
    getPipelineActivities)
    call_getPipelineActivities
    ;;
    getPipelineBranch)
    call_getPipelineBranch
    ;;
    getPipelineBranchRun)
    call_getPipelineBranchRun
    ;;
    getPipelineBranches)
    call_getPipelineBranches
    ;;
    getPipelineFolder)
    call_getPipelineFolder
    ;;
    getPipelineFolderPipeline)
    call_getPipelineFolderPipeline
    ;;
    getPipelineQueue)
    call_getPipelineQueue
    ;;
    getPipelineRun)
    call_getPipelineRun
    ;;
    getPipelineRunLog)
    call_getPipelineRunLog
    ;;
    getPipelineRunNode)
    call_getPipelineRunNode
    ;;
    getPipelineRunNodeStep)
    call_getPipelineRunNodeStep
    ;;
    getPipelineRunNodeStepLog)
    call_getPipelineRunNodeStepLog
    ;;
    getPipelineRunNodeSteps)
    call_getPipelineRunNodeSteps
    ;;
    getPipelineRunNodes)
    call_getPipelineRunNodes
    ;;
    getPipelineRuns)
    call_getPipelineRuns
    ;;
    getPipelines)
    call_getPipelines
    ;;
    getSCM)
    call_getSCM
    ;;
    getSCMOrganisationRepositories)
    call_getSCMOrganisationRepositories
    ;;
    getSCMOrganisationRepository)
    call_getSCMOrganisationRepository
    ;;
    getSCMOrganisations)
    call_getSCMOrganisations
    ;;
    getUser)
    call_getUser
    ;;
    getUserFavorites)
    call_getUserFavorites
    ;;
    getUsers)
    call_getUsers
    ;;
    postPipelineRun)
    call_postPipelineRun
    ;;
    postPipelineRuns)
    call_postPipelineRuns
    ;;
    putPipelineFavorite)
    call_putPipelineFavorite
    ;;
    putPipelineRun)
    call_putPipelineRun
    ;;
    search)
    call_search
    ;;
    searchClasses)
    call_searchClasses
    ;;
    getComputer)
    call_getComputer
    ;;
    getCrumb)
    call_getCrumb
    ;;
    getJenkins)
    call_getJenkins
    ;;
    getJob)
    call_getJob
    ;;
    getJobConfig)
    call_getJobConfig
    ;;
    getJobLastBuild)
    call_getJobLastBuild
    ;;
    getJobProgressiveText)
    call_getJobProgressiveText
    ;;
    getQueue)
    call_getQueue
    ;;
    getQueueItem)
    call_getQueueItem
    ;;
    getView)
    call_getView
    ;;
    getViewConfig)
    call_getViewConfig
    ;;
    headJenkins)
    call_headJenkins
    ;;
    postCreateItem)
    call_postCreateItem
    ;;
    postCreateView)
    call_postCreateView
    ;;
    postJobBuild)
    call_postJobBuild
    ;;
    postJobConfig)
    call_postJobConfig
    ;;
    postJobDelete)
    call_postJobDelete
    ;;
    postJobDisable)
    call_postJobDisable
    ;;
    postJobEnable)
    call_postJobEnable
    ;;
    postJobLastBuildStop)
    call_postJobLastBuildStop
    ;;
    postViewConfig)
    call_postViewConfig
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
