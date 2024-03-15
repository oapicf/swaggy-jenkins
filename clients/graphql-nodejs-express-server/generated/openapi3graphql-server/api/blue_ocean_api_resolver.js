/**
 * 
 * Swaggy Jenkins
 * 
 * 
 * Jenkins API clients generated from Swagger / Open API specification
 * 
 * Version: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by OpenAPI Generator: https://openapi-generator.tech
 */

// package openapi3graphql-server

// blue_ocean_api

export default {
    Query: {

        // @return User
        GetAuthenticatedUser: ($organization) => {
            return {
                "organization": "organization_example"
            };
        },

        // @return String!
        GetClasses: ($class) => {
            return {
                "class": "class_example"
            };
        },

        // @return String!
        GetJsonWebKey: ($key) => {
            return {
                "key": "56"
            };
        },

        // @return String!
        GetJsonWebToken: ($expiryTimeInMins, $maxExpiryTimeInMins) => {
            return {
                "expiryTimeInMins": "56",
                "maxExpiryTimeInMins": "56"
            };
        },

        // @return Organisation
        GetOrganisation: ($organization) => {
            return {
                "organization": "organization_example"
            };
        },

        // @return Organisation
        GetOrganisations: () => {
            return {
                
            };
        },

        // @return Pipeline
        GetPipeline: ($organization, $pipeline) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example"
            };
        },

        // @return PipelineActivity
        GetPipelineActivities: ($organization, $pipeline) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example"
            };
        },

        // @return BranchImpl
        GetPipelineBranch: ($organization, $pipeline, $branch) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "branch": "branch_example"
            };
        },

        // @return PipelineRun
        GetPipelineBranchRun: ($organization, $pipeline, $branch, $run) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "branch": "branch_example",
                "run": "run_example"
            };
        },

        // @return MultibranchPipeline
        GetPipelineBranches: ($organization, $pipeline) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example"
            };
        },

        // @return PipelineFolderImpl
        GetPipelineFolder: ($organization, $folder) => {
            return {
                "organization": "organization_example",
                "folder": "folder_example"
            };
        },

        // @return PipelineImpl
        GetPipelineFolderPipeline: ($organization, $pipeline, $folder) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "folder": "folder_example"
            };
        },

        // @return QueueItemImpl
        GetPipelineQueue: ($organization, $pipeline) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example"
            };
        },

        // @return PipelineRun
        GetPipelineRun: ($organization, $pipeline, $run) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example"
            };
        },

        // @return String!
        GetPipelineRunLog: ($organization, $pipeline, $run, $start, $download) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example",
                "start": "56",
                "download": "true"
            };
        },

        // @return PipelineRunNode
        GetPipelineRunNode: ($organization, $pipeline, $run, $node) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example",
                "node": "node_example"
            };
        },

        // @return PipelineStepImpl
        GetPipelineRunNodeStep: ($organization, $pipeline, $run, $node, $step) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example",
                "node": "node_example",
                "step": "step_example"
            };
        },

        // @return String!
        GetPipelineRunNodeStepLog: ($organization, $pipeline, $run, $node, $step) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example",
                "node": "node_example",
                "step": "step_example"
            };
        },

        // @return PipelineStepImpl
        GetPipelineRunNodeSteps: ($organization, $pipeline, $run, $node) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example",
                "node": "node_example"
            };
        },

        // @return PipelineRunNode
        GetPipelineRunNodes: ($organization, $pipeline, $run) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example"
            };
        },

        // @return PipelineRun
        GetPipelineRuns: ($organization, $pipeline) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example"
            };
        },

        // @return Pipeline
        GetPipelines: ($organization) => {
            return {
                "organization": "organization_example"
            };
        },

        // @return GithubScm
        GetSCM: ($organization, $scm) => {
            return {
                "organization": "organization_example",
                "scm": "scm_example"
            };
        },

        // @return GithubOrganization
        GetSCMOrganisationRepositories: ($organization, $scm, $scmOrganisation, $credentialId, $pageSize, $pageNumber) => {
            return {
                "organization": "organization_example",
                "scm": "scm_example",
                "scmOrganisation": "scmOrganisation_example",
                "credentialId": "credentialId_example",
                "pageSize": "56",
                "pageNumber": "56"
            };
        },

        // @return GithubOrganization
        GetSCMOrganisationRepository: ($organization, $scm, $scmOrganisation, $repository, $credentialId) => {
            return {
                "organization": "organization_example",
                "scm": "scm_example",
                "scmOrganisation": "scmOrganisation_example",
                "repository": "repository_example",
                "credentialId": "credentialId_example"
            };
        },

        // @return GithubOrganization
        GetSCMOrganisations: ($organization, $scm, $credentialId) => {
            return {
                "organization": "organization_example",
                "scm": "scm_example",
                "credentialId": "credentialId_example"
            };
        },

        // @return User
        GetUser: ($organization, $user) => {
            return {
                "organization": "organization_example",
                "user": "user_example"
            };
        },

        // @return FavoriteImpl
        GetUserFavorites: ($user) => {
            return {
                "user": "user_example"
            };
        },

        // @return User
        GetUsers: ($organization) => {
            return {
                "organization": "organization_example"
            };
        },

        // @return String!
        Search: ($q) => {
            return {
                "q": "q_example"
            };
        },

        // @return String!
        SearchClasses: ($q) => {
            return {
                "q": "q_example"
            };
        },

    },

    Mutation: {

        // @return 
        DeletePipelineQueueItem: ($organization, $pipeline, $queue) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "queue": "queue_example"
            };
        },

        // @return QueueItemImpl
        PostPipelineRun: ($organization, $pipeline, $run) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example"
            };
        },

        // @return QueueItemImpl
        PostPipelineRuns: ($organization, $pipeline) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example"
            };
        },

        // @return FavoriteImpl
        PutPipelineFavorite: ($organization, $pipeline, $body) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "body": "true"
            };
        },

        // @return PipelineRun
        PutPipelineRun: ($organization, $pipeline, $run, $blocking, $timeOutInSecs) => {
            return {
                "organization": "organization_example",
                "pipeline": "pipeline_example",
                "run": "run_example",
                "blocking": "blocking_example",
                "timeOutInSecs": "56"
            };
        },

    }
}