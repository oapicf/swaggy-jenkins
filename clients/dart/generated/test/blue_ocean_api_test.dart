//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for BlueOceanApi
void main() {
  final instance = BlueOceanApi();

  group('tests for BlueOceanApi', () {
    // Delete queue item from an organization pipeline queue
    //
    //Future deletePipelineQueueItem(String organization, String pipeline, String queue) async
    test('test deletePipelineQueueItem', () async {
      // TODO
    });

    // Retrieve authenticated user details for an organization
    //
    //Future<User> getAuthenticatedUser(String organization) async
    test('test getAuthenticatedUser', () async {
      // TODO
    });

    // Get a list of class names supported by a given class
    //
    //Future<String> getClasses(String class_) async
    test('test getClasses', () async {
      // TODO
    });

    // Retrieve JSON Web Key
    //
    //Future<String> getJsonWebKey(int key) async
    test('test getJsonWebKey', () async {
      // TODO
    });

    // Retrieve JSON Web Token
    //
    //Future<String> getJsonWebToken({ int expiryTimeInMins, int maxExpiryTimeInMins }) async
    test('test getJsonWebToken', () async {
      // TODO
    });

    // Retrieve organization details
    //
    //Future<Organisation> getOrganisation(String organization) async
    test('test getOrganisation', () async {
      // TODO
    });

    // Retrieve all organizations details
    //
    //Future<List<Organisation>> getOrganisations() async
    test('test getOrganisations', () async {
      // TODO
    });

    // Retrieve pipeline details for an organization
    //
    //Future<Pipeline> getPipeline(String organization, String pipeline) async
    test('test getPipeline', () async {
      // TODO
    });

    // Retrieve all activities details for an organization pipeline
    //
    //Future<List<PipelineActivity>> getPipelineActivities(String organization, String pipeline) async
    test('test getPipelineActivities', () async {
      // TODO
    });

    // Retrieve branch details for an organization pipeline
    //
    //Future<BranchImpl> getPipelineBranch(String organization, String pipeline, String branch) async
    test('test getPipelineBranch', () async {
      // TODO
    });

    // Retrieve branch run details for an organization pipeline
    //
    //Future<PipelineRun> getPipelineBranchRun(String organization, String pipeline, String branch, String run) async
    test('test getPipelineBranchRun', () async {
      // TODO
    });

    // Retrieve all branches details for an organization pipeline
    //
    //Future<MultibranchPipeline> getPipelineBranches(String organization, String pipeline) async
    test('test getPipelineBranches', () async {
      // TODO
    });

    // Retrieve pipeline folder for an organization
    //
    //Future<PipelineFolderImpl> getPipelineFolder(String organization, String folder) async
    test('test getPipelineFolder', () async {
      // TODO
    });

    // Retrieve pipeline details for an organization folder
    //
    //Future<PipelineImpl> getPipelineFolderPipeline(String organization, String pipeline, String folder) async
    test('test getPipelineFolderPipeline', () async {
      // TODO
    });

    // Retrieve queue details for an organization pipeline
    //
    //Future<List<QueueItemImpl>> getPipelineQueue(String organization, String pipeline) async
    test('test getPipelineQueue', () async {
      // TODO
    });

    // Retrieve run details for an organization pipeline
    //
    //Future<PipelineRun> getPipelineRun(String organization, String pipeline, String run) async
    test('test getPipelineRun', () async {
      // TODO
    });

    // Get log for a pipeline run
    //
    //Future<String> getPipelineRunLog(String organization, String pipeline, String run, { int start, bool download }) async
    test('test getPipelineRunLog', () async {
      // TODO
    });

    // Retrieve run node details for an organization pipeline
    //
    //Future<PipelineRunNode> getPipelineRunNode(String organization, String pipeline, String run, String node) async
    test('test getPipelineRunNode', () async {
      // TODO
    });

    // Retrieve run node details for an organization pipeline
    //
    //Future<PipelineStepImpl> getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step) async
    test('test getPipelineRunNodeStep', () async {
      // TODO
    });

    // Get log for a pipeline run node step
    //
    //Future<String> getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step) async
    test('test getPipelineRunNodeStepLog', () async {
      // TODO
    });

    // Retrieve run node steps details for an organization pipeline
    //
    //Future<List<PipelineStepImpl>> getPipelineRunNodeSteps(String organization, String pipeline, String run, String node) async
    test('test getPipelineRunNodeSteps', () async {
      // TODO
    });

    // Retrieve run nodes details for an organization pipeline
    //
    //Future<List<PipelineRunNode>> getPipelineRunNodes(String organization, String pipeline, String run) async
    test('test getPipelineRunNodes', () async {
      // TODO
    });

    // Retrieve all runs details for an organization pipeline
    //
    //Future<List<PipelineRun>> getPipelineRuns(String organization, String pipeline) async
    test('test getPipelineRuns', () async {
      // TODO
    });

    // Retrieve all pipelines details for an organization
    //
    //Future<List<Pipeline>> getPipelines(String organization) async
    test('test getPipelines', () async {
      // TODO
    });

    // Retrieve SCM details for an organization
    //
    //Future<GithubScm> getSCM(String organization, String scm) async
    test('test getSCM', () async {
      // TODO
    });

    // Retrieve SCM organization repositories details for an organization
    //
    //Future<List<GithubOrganization>> getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, { String credentialId, int pageSize, int pageNumber }) async
    test('test getSCMOrganisationRepositories', () async {
      // TODO
    });

    // Retrieve SCM organization repository details for an organization
    //
    //Future<List<GithubOrganization>> getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, { String credentialId }) async
    test('test getSCMOrganisationRepository', () async {
      // TODO
    });

    // Retrieve SCM organizations details for an organization
    //
    //Future<List<GithubOrganization>> getSCMOrganisations(String organization, String scm, { String credentialId }) async
    test('test getSCMOrganisations', () async {
      // TODO
    });

    // Retrieve user details for an organization
    //
    //Future<User> getUser(String organization, String user) async
    test('test getUser', () async {
      // TODO
    });

    // Retrieve user favorites details for an organization
    //
    //Future<List<FavoriteImpl>> getUserFavorites(String user) async
    test('test getUserFavorites', () async {
      // TODO
    });

    // Retrieve users details for an organization
    //
    //Future<User> getUsers(String organization) async
    test('test getUsers', () async {
      // TODO
    });

    // Replay an organization pipeline run
    //
    //Future<QueueItemImpl> postPipelineRun(String organization, String pipeline, String run) async
    test('test postPipelineRun', () async {
      // TODO
    });

    // Start a build for an organization pipeline
    //
    //Future<QueueItemImpl> postPipelineRuns(String organization, String pipeline) async
    test('test postPipelineRuns', () async {
      // TODO
    });

    // Favorite/unfavorite a pipeline
    //
    //Future<FavoriteImpl> putPipelineFavorite(String organization, String pipeline, bool body) async
    test('test putPipelineFavorite', () async {
      // TODO
    });

    // Stop a build of an organization pipeline
    //
    //Future<PipelineRun> putPipelineRun(String organization, String pipeline, String run, { String blocking, int timeOutInSecs }) async
    test('test putPipelineRun', () async {
      // TODO
    });

    // Search for any resource details
    //
    //Future<String> search(String q) async
    test('test search', () async {
      // TODO
    });

    // Get classes details
    //
    //Future<String> searchClasses(String q) async
    test('test searchClasses', () async {
      // TODO
    });

  });
}
