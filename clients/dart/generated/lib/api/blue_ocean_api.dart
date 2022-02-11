//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BlueOceanApi {
  BlueOceanApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete queue item from an organization pipeline queue
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] queue (required):
  ///   Name of the queue item
  Future<Response> deletePipelineQueueItemWithHttpInfo(String organization, String pipeline, String queue,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (queue == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: queue');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{queue}', queue);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Delete queue item from an organization pipeline queue
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] queue (required):
  ///   Name of the queue item
  Future<void> deletePipelineQueueItem(String organization, String pipeline, String queue,) async {
    final response = await deletePipelineQueueItemWithHttpInfo(organization, pipeline, queue,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve authenticated user details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Response> getAuthenticatedUserWithHttpInfo(String organization,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/user/'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve authenticated user details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<User> getAuthenticatedUser(String organization,) async {
    final response = await getAuthenticatedUserWithHttpInfo(organization,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return Future<User>.value();
  }

  /// Get a list of class names supported by a given class
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   Name of the class
  Future<Response> getClassesWithHttpInfo(String class_,) async {
    // Verify required params are set.
    if (class_ == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: class_');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/classes/{class}'
      .replaceAll('{class}', class_);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get a list of class names supported by a given class
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   Name of the class
  Future<String> getClasses(String class_,) async {
    final response = await getClassesWithHttpInfo(class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Retrieve JSON Web Key
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] key (required):
  ///   Key ID received as part of JWT header field kid
  Future<Response> getJsonWebKeyWithHttpInfo(int key,) async {
    // Verify required params are set.
    if (key == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: key');
    }

    // ignore: prefer_const_declarations
    final path = r'/jwt-auth/jwks/{key}'
      .replaceAll('{key}', key.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve JSON Web Key
  ///
  /// Parameters:
  ///
  /// * [int] key (required):
  ///   Key ID received as part of JWT header field kid
  Future<String> getJsonWebKey(int key,) async {
    final response = await getJsonWebKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Retrieve JSON Web Token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] expiryTimeInMins:
  ///   Token expiry time in minutes, default: 30 minutes
  ///
  /// * [int] maxExpiryTimeInMins:
  ///   Maximum token expiry time in minutes, default: 480 minutes
  Future<Response> getJsonWebTokenWithHttpInfo({ int expiryTimeInMins, int maxExpiryTimeInMins, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/jwt-auth/token';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (expiryTimeInMins != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiryTimeInMins', expiryTimeInMins));
    }
    if (maxExpiryTimeInMins != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'maxExpiryTimeInMins', maxExpiryTimeInMins));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve JSON Web Token
  ///
  /// Parameters:
  ///
  /// * [int] expiryTimeInMins:
  ///   Token expiry time in minutes, default: 30 minutes
  ///
  /// * [int] maxExpiryTimeInMins:
  ///   Maximum token expiry time in minutes, default: 480 minutes
  Future<String> getJsonWebToken({ int expiryTimeInMins, int maxExpiryTimeInMins, }) async {
    final response = await getJsonWebTokenWithHttpInfo( expiryTimeInMins: expiryTimeInMins, maxExpiryTimeInMins: maxExpiryTimeInMins, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Retrieve organization details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Response> getOrganisationWithHttpInfo(String organization,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve organization details
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Organisation> getOrganisation(String organization,) async {
    final response = await getOrganisationWithHttpInfo(organization,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Organisation',) as Organisation;
    
    }
    return Future<Organisation>.value();
  }

  /// Retrieve all organizations details
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOrganisationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve all organizations details
  Future<List<Organisation>> getOrganisations() async {
    final response = await getOrganisationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Organisation>') as List)
        .cast<Organisation>()
        .toList(growable: false);

    }
    return Future<List<Organisation>>.value();
  }

  /// Retrieve pipeline details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<Response> getPipelineWithHttpInfo(String organization, String pipeline,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve pipeline details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<Pipeline> getPipeline(String organization, String pipeline,) async {
    final response = await getPipelineWithHttpInfo(organization, pipeline,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pipeline',) as Pipeline;
    
    }
    return Future<Pipeline>.value();
  }

  /// Retrieve all activities details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<Response> getPipelineActivitiesWithHttpInfo(String organization, String pipeline,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve all activities details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<List<PipelineActivity>> getPipelineActivities(String organization, String pipeline,) async {
    final response = await getPipelineActivitiesWithHttpInfo(organization, pipeline,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineActivity>') as List)
        .cast<PipelineActivity>()
        .toList(growable: false);

    }
    return Future<List<PipelineActivity>>.value();
  }

  /// Retrieve branch details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] branch (required):
  ///   Name of the branch
  Future<Response> getPipelineBranchWithHttpInfo(String organization, String pipeline, String branch,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (branch == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: branch');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{branch}', branch);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve branch details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] branch (required):
  ///   Name of the branch
  Future<BranchImpl> getPipelineBranch(String organization, String pipeline, String branch,) async {
    final response = await getPipelineBranchWithHttpInfo(organization, pipeline, branch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BranchImpl',) as BranchImpl;
    
    }
    return Future<BranchImpl>.value();
  }

  /// Retrieve branch run details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] branch (required):
  ///   Name of the branch
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<Response> getPipelineBranchRunWithHttpInfo(String organization, String pipeline, String branch, String run,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (branch == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: branch');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{branch}', branch)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve branch run details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] branch (required):
  ///   Name of the branch
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<PipelineRun> getPipelineBranchRun(String organization, String pipeline, String branch, String run,) async {
    final response = await getPipelineBranchRunWithHttpInfo(organization, pipeline, branch, run,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRun',) as PipelineRun;
    
    }
    return Future<PipelineRun>.value();
  }

  /// Retrieve all branches details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<Response> getPipelineBranchesWithHttpInfo(String organization, String pipeline,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve all branches details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<MultibranchPipeline> getPipelineBranches(String organization, String pipeline,) async {
    final response = await getPipelineBranchesWithHttpInfo(organization, pipeline,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultibranchPipeline',) as MultibranchPipeline;
    
    }
    return Future<MultibranchPipeline>.value();
  }

  /// Retrieve pipeline folder for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] folder (required):
  ///   Name of the folder
  Future<Response> getPipelineFolderWithHttpInfo(String organization, String folder,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (folder == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: folder');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{folder}/'
      .replaceAll('{organization}', organization)
      .replaceAll('{folder}', folder);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve pipeline folder for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] folder (required):
  ///   Name of the folder
  Future<PipelineFolderImpl> getPipelineFolder(String organization, String folder,) async {
    final response = await getPipelineFolderWithHttpInfo(organization, folder,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineFolderImpl',) as PipelineFolderImpl;
    
    }
    return Future<PipelineFolderImpl>.value();
  }

  /// Retrieve pipeline details for an organization folder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] folder (required):
  ///   Name of the folder
  Future<Response> getPipelineFolderPipelineWithHttpInfo(String organization, String pipeline, String folder,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (folder == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: folder');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{folder}', folder);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve pipeline details for an organization folder
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] folder (required):
  ///   Name of the folder
  Future<PipelineImpl> getPipelineFolderPipeline(String organization, String pipeline, String folder,) async {
    final response = await getPipelineFolderPipelineWithHttpInfo(organization, pipeline, folder,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineImpl',) as PipelineImpl;
    
    }
    return Future<PipelineImpl>.value();
  }

  /// Retrieve queue details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<Response> getPipelineQueueWithHttpInfo(String organization, String pipeline,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve queue details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<List<QueueItemImpl>> getPipelineQueue(String organization, String pipeline,) async {
    final response = await getPipelineQueueWithHttpInfo(organization, pipeline,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<QueueItemImpl>') as List)
        .cast<QueueItemImpl>()
        .toList(growable: false);

    }
    return Future<List<QueueItemImpl>>.value();
  }

  /// Retrieve run details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<Response> getPipelineRunWithHttpInfo(String organization, String pipeline, String run,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve run details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<PipelineRun> getPipelineRun(String organization, String pipeline, String run,) async {
    final response = await getPipelineRunWithHttpInfo(organization, pipeline, run,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRun',) as PipelineRun;
    
    }
    return Future<PipelineRun>.value();
  }

  /// Get log for a pipeline run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [int] start:
  ///   Start position of the log
  ///
  /// * [bool] download:
  ///   Set to true in order to download the file, otherwise it's passed as a response body
  Future<Response> getPipelineRunLogWithHttpInfo(String organization, String pipeline, String run, { int start, bool download, }) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'start', start));
    }
    if (download != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'download', download));
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get log for a pipeline run
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [int] start:
  ///   Start position of the log
  ///
  /// * [bool] download:
  ///   Set to true in order to download the file, otherwise it's passed as a response body
  Future<String> getPipelineRunLog(String organization, String pipeline, String run, { int start, bool download, }) async {
    final response = await getPipelineRunLogWithHttpInfo(organization, pipeline, run,  start: start, download: download, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Retrieve run node details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  Future<Response> getPipelineRunNodeWithHttpInfo(String organization, String pipeline, String run, String node,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }
    if (node == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: node');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve run node details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  Future<PipelineRunNode> getPipelineRunNode(String organization, String pipeline, String run, String node,) async {
    final response = await getPipelineRunNodeWithHttpInfo(organization, pipeline, run, node,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRunNode',) as PipelineRunNode;
    
    }
    return Future<PipelineRunNode>.value();
  }

  /// Retrieve run node details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  ///
  /// * [String] step (required):
  ///   Name of the step
  Future<Response> getPipelineRunNodeStepWithHttpInfo(String organization, String pipeline, String run, String node, String step,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }
    if (node == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: node');
    }
    if (step == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: step');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node)
      .replaceAll('{step}', step);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve run node details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  ///
  /// * [String] step (required):
  ///   Name of the step
  Future<PipelineStepImpl> getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step,) async {
    final response = await getPipelineRunNodeStepWithHttpInfo(organization, pipeline, run, node, step,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineStepImpl',) as PipelineStepImpl;
    
    }
    return Future<PipelineStepImpl>.value();
  }

  /// Get log for a pipeline run node step
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  ///
  /// * [String] step (required):
  ///   Name of the step
  Future<Response> getPipelineRunNodeStepLogWithHttpInfo(String organization, String pipeline, String run, String node, String step,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }
    if (node == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: node');
    }
    if (step == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: step');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node)
      .replaceAll('{step}', step);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get log for a pipeline run node step
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  ///
  /// * [String] step (required):
  ///   Name of the step
  Future<String> getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step,) async {
    final response = await getPipelineRunNodeStepLogWithHttpInfo(organization, pipeline, run, node, step,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Retrieve run node steps details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  Future<Response> getPipelineRunNodeStepsWithHttpInfo(String organization, String pipeline, String run, String node,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }
    if (node == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: node');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve run node steps details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] node (required):
  ///   Name of the node
  Future<List<PipelineStepImpl>> getPipelineRunNodeSteps(String organization, String pipeline, String run, String node,) async {
    final response = await getPipelineRunNodeStepsWithHttpInfo(organization, pipeline, run, node,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineStepImpl>') as List)
        .cast<PipelineStepImpl>()
        .toList(growable: false);

    }
    return Future<List<PipelineStepImpl>>.value();
  }

  /// Retrieve run nodes details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<Response> getPipelineRunNodesWithHttpInfo(String organization, String pipeline, String run,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve run nodes details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<List<PipelineRunNode>> getPipelineRunNodes(String organization, String pipeline, String run,) async {
    final response = await getPipelineRunNodesWithHttpInfo(organization, pipeline, run,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineRunNode>') as List)
        .cast<PipelineRunNode>()
        .toList(growable: false);

    }
    return Future<List<PipelineRunNode>>.value();
  }

  /// Retrieve all runs details for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<Response> getPipelineRunsWithHttpInfo(String organization, String pipeline,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve all runs details for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<List<PipelineRun>> getPipelineRuns(String organization, String pipeline,) async {
    final response = await getPipelineRunsWithHttpInfo(organization, pipeline,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineRun>') as List)
        .cast<PipelineRun>()
        .toList(growable: false);

    }
    return Future<List<PipelineRun>>.value();
  }

  /// Retrieve all pipelines details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Response> getPipelinesWithHttpInfo(String organization,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve all pipelines details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<List<Pipeline>> getPipelines(String organization,) async {
    final response = await getPipelinesWithHttpInfo(organization,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Pipeline>') as List)
        .cast<Pipeline>()
        .toList(growable: false);

    }
    return Future<List<Pipeline>>.value();
  }

  /// Retrieve SCM details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  Future<Response> getSCMWithHttpInfo(String organization, String scm,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (scm == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scm');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve SCM details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  Future<GithubScm> getSCM(String organization, String scm,) async {
    final response = await getSCMWithHttpInfo(organization, scm,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubScm',) as GithubScm;
    
    }
    return Future<GithubScm>.value();
  }

  /// Retrieve SCM organization repositories details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  ///
  /// * [String] scmOrganisation (required):
  ///   Name of the SCM organization
  ///
  /// * [String] credentialId:
  ///   Credential ID
  ///
  /// * [int] pageSize:
  ///   Number of items in a page
  ///
  /// * [int] pageNumber:
  ///   Page number
  Future<Response> getSCMOrganisationRepositoriesWithHttpInfo(String organization, String scm, String scmOrganisation, { String credentialId, int pageSize, int pageNumber, }) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (scm == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scm');
    }
    if (scmOrganisation == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scmOrganisation');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm)
      .replaceAll('{scmOrganisation}', scmOrganisation);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (credentialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'credentialId', credentialId));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
    }
    if (pageNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageNumber', pageNumber));
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve SCM organization repositories details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  ///
  /// * [String] scmOrganisation (required):
  ///   Name of the SCM organization
  ///
  /// * [String] credentialId:
  ///   Credential ID
  ///
  /// * [int] pageSize:
  ///   Number of items in a page
  ///
  /// * [int] pageNumber:
  ///   Page number
  Future<List<GithubOrganization>> getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, { String credentialId, int pageSize, int pageNumber, }) async {
    final response = await getSCMOrganisationRepositoriesWithHttpInfo(organization, scm, scmOrganisation,  credentialId: credentialId, pageSize: pageSize, pageNumber: pageNumber, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GithubOrganization>') as List)
        .cast<GithubOrganization>()
        .toList(growable: false);

    }
    return Future<List<GithubOrganization>>.value();
  }

  /// Retrieve SCM organization repository details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  ///
  /// * [String] scmOrganisation (required):
  ///   Name of the SCM organization
  ///
  /// * [String] repository (required):
  ///   Name of the SCM repository
  ///
  /// * [String] credentialId:
  ///   Credential ID
  Future<Response> getSCMOrganisationRepositoryWithHttpInfo(String organization, String scm, String scmOrganisation, String repository, { String credentialId, }) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (scm == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scm');
    }
    if (scmOrganisation == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scmOrganisation');
    }
    if (repository == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: repository');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm)
      .replaceAll('{scmOrganisation}', scmOrganisation)
      .replaceAll('{repository}', repository);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (credentialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'credentialId', credentialId));
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve SCM organization repository details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  ///
  /// * [String] scmOrganisation (required):
  ///   Name of the SCM organization
  ///
  /// * [String] repository (required):
  ///   Name of the SCM repository
  ///
  /// * [String] credentialId:
  ///   Credential ID
  Future<List<GithubOrganization>> getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, { String credentialId, }) async {
    final response = await getSCMOrganisationRepositoryWithHttpInfo(organization, scm, scmOrganisation, repository,  credentialId: credentialId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GithubOrganization>') as List)
        .cast<GithubOrganization>()
        .toList(growable: false);

    }
    return Future<List<GithubOrganization>>.value();
  }

  /// Retrieve SCM organizations details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  ///
  /// * [String] credentialId:
  ///   Credential ID
  Future<Response> getSCMOrganisationsWithHttpInfo(String organization, String scm, { String credentialId, }) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (scm == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scm');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}/organizations'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (credentialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'credentialId', credentialId));
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve SCM organizations details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] scm (required):
  ///   Name of SCM
  ///
  /// * [String] credentialId:
  ///   Credential ID
  Future<List<GithubOrganization>> getSCMOrganisations(String organization, String scm, { String credentialId, }) async {
    final response = await getSCMOrganisationsWithHttpInfo(organization, scm,  credentialId: credentialId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GithubOrganization>') as List)
        .cast<GithubOrganization>()
        .toList(growable: false);

    }
    return Future<List<GithubOrganization>>.value();
  }

  /// Retrieve user details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] user (required):
  ///   Name of the user
  Future<Response> getUserWithHttpInfo(String organization, String user,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (user == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: user');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/users/{user}'
      .replaceAll('{organization}', organization)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve user details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] user (required):
  ///   Name of the user
  Future<User> getUser(String organization, String user,) async {
    final response = await getUserWithHttpInfo(organization, user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return Future<User>.value();
  }

  /// Retrieve user favorites details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] user (required):
  ///   Name of the user
  Future<Response> getUserFavoritesWithHttpInfo(String user,) async {
    // Verify required params are set.
    if (user == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: user');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/users/{user}/favorites'
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve user favorites details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] user (required):
  ///   Name of the user
  Future<List<FavoriteImpl>> getUserFavorites(String user,) async {
    final response = await getUserFavoritesWithHttpInfo(user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FavoriteImpl>') as List)
        .cast<FavoriteImpl>()
        .toList(growable: false);

    }
    return Future<List<FavoriteImpl>>.value();
  }

  /// Retrieve users details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Response> getUsersWithHttpInfo(String organization,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/users/'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve users details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<User> getUsers(String organization,) async {
    final response = await getUsersWithHttpInfo(organization,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return Future<User>.value();
  }

  /// Replay an organization pipeline run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<Response> postPipelineRunWithHttpInfo(String organization, String pipeline, String run,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Replay an organization pipeline run
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  Future<QueueItemImpl> postPipelineRun(String organization, String pipeline, String run,) async {
    final response = await postPipelineRunWithHttpInfo(organization, pipeline, run,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueItemImpl',) as QueueItemImpl;
    
    }
    return Future<QueueItemImpl>.value();
  }

  /// Start a build for an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<Response> postPipelineRunsWithHttpInfo(String organization, String pipeline,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Start a build for an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  Future<QueueItemImpl> postPipelineRuns(String organization, String pipeline,) async {
    final response = await postPipelineRunsWithHttpInfo(organization, pipeline,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueItemImpl',) as QueueItemImpl;
    
    }
    return Future<QueueItemImpl>.value();
  }

  /// Favorite/unfavorite a pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [bool] body (required):
  ///   Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
  Future<Response> putPipelineFavoriteWithHttpInfo(String organization, String pipeline, bool body,) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Favorite/unfavorite a pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [bool] body (required):
  ///   Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
  Future<FavoriteImpl> putPipelineFavorite(String organization, String pipeline, bool body,) async {
    final response = await putPipelineFavoriteWithHttpInfo(organization, pipeline, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FavoriteImpl',) as FavoriteImpl;
    
    }
    return Future<FavoriteImpl>.value();
  }

  /// Stop a build of an organization pipeline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] blocking:
  ///   Set to true to make blocking stop, default: false
  ///
  /// * [int] timeOutInSecs:
  ///   Timeout in seconds, default: 10 seconds
  Future<Response> putPipelineRunWithHttpInfo(String organization, String pipeline, String run, { String blocking, int timeOutInSecs, }) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (pipeline == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pipeline');
    }
    if (run == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: run');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (blocking != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'blocking', blocking));
    }
    if (timeOutInSecs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeOutInSecs', timeOutInSecs));
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Stop a build of an organization pipeline
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  ///
  /// * [String] pipeline (required):
  ///   Name of the pipeline
  ///
  /// * [String] run (required):
  ///   Name of the run
  ///
  /// * [String] blocking:
  ///   Set to true to make blocking stop, default: false
  ///
  /// * [int] timeOutInSecs:
  ///   Timeout in seconds, default: 10 seconds
  Future<PipelineRun> putPipelineRun(String organization, String pipeline, String run, { String blocking, int timeOutInSecs, }) async {
    final response = await putPipelineRunWithHttpInfo(organization, pipeline, run,  blocking: blocking, timeOutInSecs: timeOutInSecs, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRun',) as PipelineRun;
    
    }
    return Future<PipelineRun>.value();
  }

  /// Search for any resource details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string
  Future<Response> searchWithHttpInfo(String q,) async {
    // Verify required params are set.
    if (q == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: q');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/search/';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'q', q));

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Search for any resource details
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string
  Future<String> search(String q,) async {
    final response = await searchWithHttpInfo(q,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Get classes details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string containing an array of class names
  Future<Response> searchClassesWithHttpInfo(String q,) async {
    // Verify required params are set.
    if (q == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: q');
    }

    // ignore: prefer_const_declarations
    final path = r'/blue/rest/classes/';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'q', q));

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get classes details
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string containing an array of class names
  Future<String> searchClasses(String q,) async {
    final response = await searchClassesWithHttpInfo(q,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }
}
