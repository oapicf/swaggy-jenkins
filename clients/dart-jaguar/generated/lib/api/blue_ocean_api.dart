import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/branch_impl.dart';
import 'package:openapi/model/unknown_base_type.dart';
import 'package:openapi/model/github_scm.dart';
import 'package:openapi/model/organisation.dart';
import 'package:openapi/model/pipeline_run.dart';
import 'package:openapi/model/queue_item_impl.dart';
import 'package:openapi/model/pipeline.dart';
import 'package:openapi/model/pipeline_step_impl.dart';
import 'package:openapi/model/favorite_impl.dart';
import 'package:openapi/model/pipeline_impl.dart';
import 'package:openapi/model/pipeline_activity.dart';
import 'package:openapi/model/pipeline_folder_impl.dart';
import 'package:openapi/model/multibranch_pipeline.dart';
import 'package:openapi/model/user.dart';
import 'package:openapi/model/pipeline_run_node.dart';
import 'package:openapi/model/github_organization.dart';

part 'blue_ocean_api.jretro.dart';

@GenApiClient()
class BlueOceanApi extends ApiClient with _$BlueOceanApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    BlueOceanApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// 
    ///
    /// Delete queue item from an organization pipeline queue
    @DeleteReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> deletePipelineQueueItem(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("queue") String queue
        ) {
        return super.deletePipelineQueueItem(
        organization, 
        pipeline, 
        queue

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve authenticated user details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/user/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<User> getAuthenticatedUser(
            @PathParam("organization") String organization
        ) {
        return super.getAuthenticatedUser(
        organization

        ).timeout(timeout);
    }

    /// 
    ///
    /// Get a list of class names supported by a given class
    @GetReq(path: "/blue/rest/classes/:class", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<String> getClasses(
            @PathParam("class") String class_
        ) {
        return super.getClasses(
        class_

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve JSON Web Key
    @GetReq(path: "/jwt-auth/jwks/:key")
    Future<String> getJsonWebKey(
            @PathParam("key") int key
        ) {
        return super.getJsonWebKey(
        key

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve JSON Web Token
    @GetReq(path: "/jwt-auth/token")
    Future<String> getJsonWebToken(
        
            @QueryParam("expiryTimeInMins") int expiryTimeInMins, 
        
            @QueryParam("maxExpiryTimeInMins") int maxExpiryTimeInMins
        ) {
        return super.getJsonWebToken(
        
        expiryTimeInMins, 
        
        maxExpiryTimeInMins

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve organization details
    @GetReq(path: "/blue/rest/organizations/:organization", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<Organisation> getOrganisation(
            @PathParam("organization") String organization
        ) {
        return super.getOrganisation(
        organization

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve all organizations details
    @GetReq(path: "/blue/rest/organizations/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<Organisation>> getOrganisations(
        ) {
        return super.getOrganisations(

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve pipeline details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<Pipeline> getPipeline(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline
        ) {
        return super.getPipeline(
        organization, 
        pipeline

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve all activities details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/activities", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<PipelineActivity>> getPipelineActivities(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline
        ) {
        return super.getPipelineActivities(
        organization, 
        pipeline

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve branch details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<BranchImpl> getPipelineBranch(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("branch") String branch
        ) {
        return super.getPipelineBranch(
        organization, 
        pipeline, 
        branch

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve branch run details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<PipelineRun> getPipelineBranchRun(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("branch") String branch, 
            @PathParam("run") String run
        ) {
        return super.getPipelineBranchRun(
        organization, 
        pipeline, 
        branch, 
        run

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve all branches details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/branches", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<MultibranchPipeline> getPipelineBranches(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline
        ) {
        return super.getPipelineBranches(
        organization, 
        pipeline

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve pipeline folder for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:folder/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<PipelineFolderImpl> getPipelineFolder(
            @PathParam("organization") String organization, 
            @PathParam("folder") String folder
        ) {
        return super.getPipelineFolder(
        organization, 
        folder

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve pipeline details for an organization folder
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<PipelineImpl> getPipelineFolderPipeline(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("folder") String folder
        ) {
        return super.getPipelineFolderPipeline(
        organization, 
        pipeline, 
        folder

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve queue details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/queue", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<QueueItemImpl>> getPipelineQueue(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline
        ) {
        return super.getPipelineQueue(
        organization, 
        pipeline

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve run details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<PipelineRun> getPipelineRun(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run
        ) {
        return super.getPipelineRun(
        organization, 
        pipeline, 
        run

        ).timeout(timeout);
    }

    /// 
    ///
    /// Get log for a pipeline run
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<String> getPipelineRunLog(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run
        ,
            @QueryParam("start") int start, 
        
            @QueryParam("download") bool download
        ) {
        return super.getPipelineRunLog(
        organization, 
        pipeline, 
        run
        ,
        start, 
        
        download

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve run node details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<PipelineRunNode> getPipelineRunNode(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run, 
            @PathParam("node") String node
        ) {
        return super.getPipelineRunNode(
        organization, 
        pipeline, 
        run, 
        node

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve run node details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<PipelineStepImpl> getPipelineRunNodeStep(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run, 
            @PathParam("node") String node, 
            @PathParam("step") String step
        ) {
        return super.getPipelineRunNodeStep(
        organization, 
        pipeline, 
        run, 
        node, 
        step

        ).timeout(timeout);
    }

    /// 
    ///
    /// Get log for a pipeline run node step
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<String> getPipelineRunNodeStepLog(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run, 
            @PathParam("node") String node, 
            @PathParam("step") String step
        ) {
        return super.getPipelineRunNodeStepLog(
        organization, 
        pipeline, 
        run, 
        node, 
        step

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve run node steps details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<PipelineStepImpl>> getPipelineRunNodeSteps(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run, 
            @PathParam("node") String node
        ) {
        return super.getPipelineRunNodeSteps(
        organization, 
        pipeline, 
        run, 
        node

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve run nodes details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<PipelineRunNode>> getPipelineRunNodes(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run
        ) {
        return super.getPipelineRunNodes(
        organization, 
        pipeline, 
        run

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve all runs details for an organization pipeline
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<PipelineRun>> getPipelineRuns(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline
        ) {
        return super.getPipelineRuns(
        organization, 
        pipeline

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve all pipelines details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/pipelines/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<Pipeline>> getPipelines(
            @PathParam("organization") String organization
        ) {
        return super.getPipelines(
        organization

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve SCM details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/scm/:scm", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<GithubScm> getSCM(
            @PathParam("organization") String organization, 
            @PathParam("scm") String scm
        ) {
        return super.getSCM(
        organization, 
        scm

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve SCM organization repositories details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<GithubOrganization>> getSCMOrganisationRepositories(
            @PathParam("organization") String organization, 
            @PathParam("scm") String scm, 
            @PathParam("scmOrganisation") String scmOrganisation
        ,
            @QueryParam("credentialId") String credentialId, 
        
            @QueryParam("pageSize") int pageSize, 
        
            @QueryParam("pageNumber") int pageNumber
        ) {
        return super.getSCMOrganisationRepositories(
        organization, 
        scm, 
        scmOrganisation
        ,
        credentialId, 
        
        pageSize, 
        
        pageNumber

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve SCM organization repository details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<GithubOrganization>> getSCMOrganisationRepository(
            @PathParam("organization") String organization, 
            @PathParam("scm") String scm, 
            @PathParam("scmOrganisation") String scmOrganisation, 
            @PathParam("repository") String repository
        ,
            @QueryParam("credentialId") String credentialId
        ) {
        return super.getSCMOrganisationRepository(
        organization, 
        scm, 
        scmOrganisation, 
        repository
        ,
        credentialId

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve SCM organizations details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/scm/:scm/organizations", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<GithubOrganization>> getSCMOrganisations(
            @PathParam("organization") String organization, 
            @PathParam("scm") String scm
        ,
            @QueryParam("credentialId") String credentialId
        ) {
        return super.getSCMOrganisations(
        organization, 
        scm
        ,
        credentialId

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve user details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/users/:user", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<User> getUser(
            @PathParam("organization") String organization, 
            @PathParam("user") String user
        ) {
        return super.getUser(
        organization, 
        user

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve user favorites details for an organization
    @GetReq(path: "/blue/rest/users/:user/favorites", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<List<FavoriteImpl>> getUserFavorites(
            @PathParam("user") String user
        ) {
        return super.getUserFavorites(
        user

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve users details for an organization
    @GetReq(path: "/blue/rest/organizations/:organization/users/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<User> getUsers(
            @PathParam("organization") String organization
        ) {
        return super.getUsers(
        organization

        ).timeout(timeout);
    }

    /// 
    ///
    /// Replay an organization pipeline run
    @PostReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<QueueItemImpl> postPipelineRun(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run
        ) {
        return super.postPipelineRun(
        organization, 
        pipeline, 
        run

        ).timeout(timeout);
    }

    /// 
    ///
    /// Start a build for an organization pipeline
    @PostReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<QueueItemImpl> postPipelineRuns(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline
        ) {
        return super.postPipelineRuns(
        organization, 
        pipeline

        ).timeout(timeout);
    }

    /// 
    ///
    /// Favorite/unfavorite a pipeline
    @PutReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/favorite", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<FavoriteImpl> putPipelineFavorite(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline
            ,
             @AsJson() UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE
        ) {
        return super.putPipelineFavorite(
        organization, 
        pipeline

        ,
        UNKNOWN_BASE_TYPE
        ).timeout(timeout);
    }

    /// 
    ///
    /// Stop a build of an organization pipeline
    @PutReq(path: "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<PipelineRun> putPipelineRun(
            @PathParam("organization") String organization, 
            @PathParam("pipeline") String pipeline, 
            @PathParam("run") String run
        ,
            @QueryParam("blocking") String blocking, 
        
            @QueryParam("timeOutInSecs") int timeOutInSecs
        ) {
        return super.putPipelineRun(
        organization, 
        pipeline, 
        run
        ,
        blocking, 
        
        timeOutInSecs

        ).timeout(timeout);
    }

    /// 
    ///
    /// Search for any resource details
    @GetReq(path: "/blue/rest/search/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<String> search(
        
            @QueryParam("q") String q
        ) {
        return super.search(
        
        q

        ).timeout(timeout);
    }

    /// 
    ///
    /// Get classes details
    @GetReq(path: "/blue/rest/classes/", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<String> searchClasses(
        
            @QueryParam("q") String q
        ) {
        return super.searchClasses(
        
        q

        ).timeout(timeout);
    }


}
