//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BlueOceanApi {
  BlueOceanApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deletePipelineQueueItemWithHttpInfo(String organization, String pipeline, String queue, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{queue}', queue);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<void> deletePipelineQueueItem(String organization, String pipeline, String queue, { Future<void>? abortTrigger, }) async {
    final response = await deletePipelineQueueItemWithHttpInfo(organization, pipeline, queue, abortTrigger: abortTrigger,);
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
  Future<Response> getAuthenticatedUserWithHttpInfo(String organization, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/user/'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve authenticated user details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<User?> getAuthenticatedUser(String organization, { Future<void>? abortTrigger, }) async {
    final response = await getAuthenticatedUserWithHttpInfo(organization, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Get a list of class names supported by a given class
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   Name of the class
  Future<Response> getClassesWithHttpInfo(String class_, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/classes/{class}'
      .replaceAll('{class}', class_);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get a list of class names supported by a given class
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   Name of the class
  Future<String?> getClasses(String class_, { Future<void>? abortTrigger, }) async {
    final response = await getClassesWithHttpInfo(class_, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Retrieve JSON Web Key
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] key (required):
  ///   Key ID received as part of JWT header field kid
  Future<Response> getJsonWebKeyWithHttpInfo(int key, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/jwt-auth/jwks/{key}'
      .replaceAll('{key}', key.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve JSON Web Key
  ///
  /// Parameters:
  ///
  /// * [int] key (required):
  ///   Key ID received as part of JWT header field kid
  Future<String?> getJsonWebKey(int key, { Future<void>? abortTrigger, }) async {
    final response = await getJsonWebKeyWithHttpInfo(key, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
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
  Future<Response> getJsonWebTokenWithHttpInfo({ int? expiryTimeInMins, int? maxExpiryTimeInMins, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/jwt-auth/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (expiryTimeInMins != null) {
      queryParams.addAll(_queryParams('', 'expiryTimeInMins', expiryTimeInMins));
    }
    if (maxExpiryTimeInMins != null) {
      queryParams.addAll(_queryParams('', 'maxExpiryTimeInMins', maxExpiryTimeInMins));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<String?> getJsonWebToken({ int? expiryTimeInMins, int? maxExpiryTimeInMins, Future<void>? abortTrigger, }) async {
    final response = await getJsonWebTokenWithHttpInfo(expiryTimeInMins: expiryTimeInMins, maxExpiryTimeInMins: maxExpiryTimeInMins, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Retrieve organization details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Response> getOrganisationWithHttpInfo(String organization, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve organization details
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Organisation?> getOrganisation(String organization, { Future<void>? abortTrigger, }) async {
    final response = await getOrganisationWithHttpInfo(organization, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Organisation',) as Organisation;
    
    }
    return null;
  }

  /// Retrieve all organizations details
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOrganisationsWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve all organizations details
  Future<List<Organisation>?> getOrganisations({ Future<void>? abortTrigger, }) async {
    final response = await getOrganisationsWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Organisation>') as List)
        .cast<Organisation>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getPipelineWithHttpInfo(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<Pipeline?> getPipeline(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineWithHttpInfo(organization, pipeline, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pipeline',) as Pipeline;
    
    }
    return null;
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
  Future<Response> getPipelineActivitiesWithHttpInfo(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<PipelineActivity>?> getPipelineActivities(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineActivitiesWithHttpInfo(organization, pipeline, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineActivity>') as List)
        .cast<PipelineActivity>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getPipelineBranchWithHttpInfo(String organization, String pipeline, String branch, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{branch}', branch);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<BranchImpl?> getPipelineBranch(String organization, String pipeline, String branch, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineBranchWithHttpInfo(organization, pipeline, branch, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BranchImpl',) as BranchImpl;
    
    }
    return null;
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
  Future<Response> getPipelineBranchRunWithHttpInfo(String organization, String pipeline, String branch, String run, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{branch}', branch)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<PipelineRun?> getPipelineBranchRun(String organization, String pipeline, String branch, String run, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineBranchRunWithHttpInfo(organization, pipeline, branch, run, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRun',) as PipelineRun;
    
    }
    return null;
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
  Future<Response> getPipelineBranchesWithHttpInfo(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<MultibranchPipeline?> getPipelineBranches(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineBranchesWithHttpInfo(organization, pipeline, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultibranchPipeline',) as MultibranchPipeline;
    
    }
    return null;
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
  Future<Response> getPipelineFolderWithHttpInfo(String organization, String folder, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{folder}/'
      .replaceAll('{organization}', organization)
      .replaceAll('{folder}', folder);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<PipelineFolderImpl?> getPipelineFolder(String organization, String folder, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineFolderWithHttpInfo(organization, folder, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineFolderImpl',) as PipelineFolderImpl;
    
    }
    return null;
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
  Future<Response> getPipelineFolderPipelineWithHttpInfo(String organization, String pipeline, String folder, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{folder}', folder);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<PipelineImpl?> getPipelineFolderPipeline(String organization, String pipeline, String folder, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineFolderPipelineWithHttpInfo(organization, pipeline, folder, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineImpl',) as PipelineImpl;
    
    }
    return null;
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
  Future<Response> getPipelineQueueWithHttpInfo(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<QueueItemImpl>?> getPipelineQueue(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineQueueWithHttpInfo(organization, pipeline, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<QueueItemImpl>') as List)
        .cast<QueueItemImpl>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getPipelineRunWithHttpInfo(String organization, String pipeline, String run, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<PipelineRun?> getPipelineRun(String organization, String pipeline, String run, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunWithHttpInfo(organization, pipeline, run, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRun',) as PipelineRun;
    
    }
    return null;
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
  Future<Response> getPipelineRunLogWithHttpInfo(String organization, String pipeline, String run, { int? start, bool? download, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (download != null) {
      queryParams.addAll(_queryParams('', 'download', download));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<String?> getPipelineRunLog(String organization, String pipeline, String run, { int? start, bool? download, Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunLogWithHttpInfo(organization, pipeline, run, start: start, download: download, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
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
  Future<Response> getPipelineRunNodeWithHttpInfo(String organization, String pipeline, String run, String node, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<PipelineRunNode?> getPipelineRunNode(String organization, String pipeline, String run, String node, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunNodeWithHttpInfo(organization, pipeline, run, node, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRunNode',) as PipelineRunNode;
    
    }
    return null;
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
  Future<Response> getPipelineRunNodeStepWithHttpInfo(String organization, String pipeline, String run, String node, String step, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node)
      .replaceAll('{step}', step);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<PipelineStepImpl?> getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunNodeStepWithHttpInfo(organization, pipeline, run, node, step, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineStepImpl',) as PipelineStepImpl;
    
    }
    return null;
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
  Future<Response> getPipelineRunNodeStepLogWithHttpInfo(String organization, String pipeline, String run, String node, String step, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node)
      .replaceAll('{step}', step);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<String?> getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunNodeStepLogWithHttpInfo(organization, pipeline, run, node, step, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
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
  Future<Response> getPipelineRunNodeStepsWithHttpInfo(String organization, String pipeline, String run, String node, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run)
      .replaceAll('{node}', node);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<PipelineStepImpl>?> getPipelineRunNodeSteps(String organization, String pipeline, String run, String node, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunNodeStepsWithHttpInfo(organization, pipeline, run, node, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineStepImpl>') as List)
        .cast<PipelineStepImpl>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getPipelineRunNodesWithHttpInfo(String organization, String pipeline, String run, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<PipelineRunNode>?> getPipelineRunNodes(String organization, String pipeline, String run, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunNodesWithHttpInfo(organization, pipeline, run, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineRunNode>') as List)
        .cast<PipelineRunNode>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getPipelineRunsWithHttpInfo(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<PipelineRun>?> getPipelineRuns(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    final response = await getPipelineRunsWithHttpInfo(organization, pipeline, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PipelineRun>') as List)
        .cast<PipelineRun>()
        .toList(growable: false);

    }
    return null;
  }

  /// Retrieve all pipelines details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Response> getPipelinesWithHttpInfo(String organization, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve all pipelines details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<List<Pipeline>?> getPipelines(String organization, { Future<void>? abortTrigger, }) async {
    final response = await getPipelinesWithHttpInfo(organization, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Pipeline>') as List)
        .cast<Pipeline>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getSCMWithHttpInfo(String organization, String scm, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<GithubScm?> getSCM(String organization, String scm, { Future<void>? abortTrigger, }) async {
    final response = await getSCMWithHttpInfo(organization, scm, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubScm',) as GithubScm;
    
    }
    return null;
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
  Future<Response> getSCMOrganisationRepositoriesWithHttpInfo(String organization, String scm, String scmOrganisation, { String? credentialId, int? pageSize, int? pageNumber, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm)
      .replaceAll('{scmOrganisation}', scmOrganisation);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (credentialId != null) {
      queryParams.addAll(_queryParams('', 'credentialId', credentialId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (pageNumber != null) {
      queryParams.addAll(_queryParams('', 'pageNumber', pageNumber));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<GithubOrganization>?> getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, { String? credentialId, int? pageSize, int? pageNumber, Future<void>? abortTrigger, }) async {
    final response = await getSCMOrganisationRepositoriesWithHttpInfo(organization, scm, scmOrganisation, credentialId: credentialId, pageSize: pageSize, pageNumber: pageNumber, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GithubOrganization>') as List)
        .cast<GithubOrganization>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getSCMOrganisationRepositoryWithHttpInfo(String organization, String scm, String scmOrganisation, String repository, { String? credentialId, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm)
      .replaceAll('{scmOrganisation}', scmOrganisation)
      .replaceAll('{repository}', repository);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (credentialId != null) {
      queryParams.addAll(_queryParams('', 'credentialId', credentialId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<GithubOrganization>?> getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, { String? credentialId, Future<void>? abortTrigger, }) async {
    final response = await getSCMOrganisationRepositoryWithHttpInfo(organization, scm, scmOrganisation, repository, credentialId: credentialId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GithubOrganization>') as List)
        .cast<GithubOrganization>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getSCMOrganisationsWithHttpInfo(String organization, String scm, { String? credentialId, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/scm/{scm}/organizations'
      .replaceAll('{organization}', organization)
      .replaceAll('{scm}', scm);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (credentialId != null) {
      queryParams.addAll(_queryParams('', 'credentialId', credentialId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<List<GithubOrganization>?> getSCMOrganisations(String organization, String scm, { String? credentialId, Future<void>? abortTrigger, }) async {
    final response = await getSCMOrganisationsWithHttpInfo(organization, scm, credentialId: credentialId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GithubOrganization>') as List)
        .cast<GithubOrganization>()
        .toList(growable: false);

    }
    return null;
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
  Future<Response> getUserWithHttpInfo(String organization, String user, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/users/{user}'
      .replaceAll('{organization}', organization)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<User?> getUser(String organization, String user, { Future<void>? abortTrigger, }) async {
    final response = await getUserWithHttpInfo(organization, user, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Retrieve user favorites details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] user (required):
  ///   Name of the user
  Future<Response> getUserFavoritesWithHttpInfo(String user, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/users/{user}/favorites'
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve user favorites details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] user (required):
  ///   Name of the user
  Future<List<FavoriteImpl>?> getUserFavorites(String user, { Future<void>? abortTrigger, }) async {
    final response = await getUserFavoritesWithHttpInfo(user, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FavoriteImpl>') as List)
        .cast<FavoriteImpl>()
        .toList(growable: false);

    }
    return null;
  }

  /// Retrieve users details for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<Response> getUsersWithHttpInfo(String organization, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/users/'
      .replaceAll('{organization}', organization);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve users details for an organization
  ///
  /// Parameters:
  ///
  /// * [String] organization (required):
  ///   Name of the organization
  Future<User?> getUsers(String organization, { Future<void>? abortTrigger, }) async {
    final response = await getUsersWithHttpInfo(organization, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
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
  Future<Response> postPipelineRunWithHttpInfo(String organization, String pipeline, String run, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<QueueItemImpl?> postPipelineRun(String organization, String pipeline, String run, { Future<void>? abortTrigger, }) async {
    final response = await postPipelineRunWithHttpInfo(organization, pipeline, run, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueItemImpl',) as QueueItemImpl;
    
    }
    return null;
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
  Future<Response> postPipelineRunsWithHttpInfo(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<QueueItemImpl?> postPipelineRuns(String organization, String pipeline, { Future<void>? abortTrigger, }) async {
    final response = await postPipelineRunsWithHttpInfo(organization, pipeline, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueItemImpl',) as QueueItemImpl;
    
    }
    return null;
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
  Future<Response> putPipelineFavoriteWithHttpInfo(String organization, String pipeline, bool body, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<FavoriteImpl?> putPipelineFavorite(String organization, String pipeline, bool body, { Future<void>? abortTrigger, }) async {
    final response = await putPipelineFavoriteWithHttpInfo(organization, pipeline, body, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FavoriteImpl',) as FavoriteImpl;
    
    }
    return null;
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
  Future<Response> putPipelineRunWithHttpInfo(String organization, String pipeline, String run, { String? blocking, int? timeOutInSecs, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'
      .replaceAll('{organization}', organization)
      .replaceAll('{pipeline}', pipeline)
      .replaceAll('{run}', run);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (blocking != null) {
      queryParams.addAll(_queryParams('', 'blocking', blocking));
    }
    if (timeOutInSecs != null) {
      queryParams.addAll(_queryParams('', 'timeOutInSecs', timeOutInSecs));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
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
  Future<PipelineRun?> putPipelineRun(String organization, String pipeline, String run, { String? blocking, int? timeOutInSecs, Future<void>? abortTrigger, }) async {
    final response = await putPipelineRunWithHttpInfo(organization, pipeline, run, blocking: blocking, timeOutInSecs: timeOutInSecs, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PipelineRun',) as PipelineRun;
    
    }
    return null;
  }

  /// Search for any resource details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string
  Future<Response> searchWithHttpInfo(String q, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/search/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Search for any resource details
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string
  Future<String?> search(String q, { Future<void>? abortTrigger, }) async {
    final response = await searchWithHttpInfo(q, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get classes details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string containing an array of class names
  Future<Response> searchClassesWithHttpInfo(String q, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blue/rest/classes/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get classes details
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Query string containing an array of class names
  Future<String?> searchClasses(String q, { Future<void>? abortTrigger, }) async {
    final response = await searchClassesWithHttpInfo(q, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }
}
