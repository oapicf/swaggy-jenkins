//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RemoteAccessApi {
  RemoteAccessApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve computer details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] depth (required):
  ///   Recursion depth in response model
  Future<Response> getComputerWithHttpInfo(int depth,) async {
    // Verify required params are set.
    if (depth == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: depth');
    }

    // ignore: prefer_const_declarations
    final path = r'/computer/api/json';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'depth', depth));

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

  /// Retrieve computer details
  ///
  /// Parameters:
  ///
  /// * [int] depth (required):
  ///   Recursion depth in response model
  Future<ComputerSet> getComputer(int depth,) async {
    final response = await getComputerWithHttpInfo(depth,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ComputerSet',) as ComputerSet;
    
    }
    return Future<ComputerSet>.value();
  }

  /// Retrieve Jenkins details
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getJenkinsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/json';

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

  /// Retrieve Jenkins details
  Future<Hudson> getJenkins() async {
    final response = await getJenkinsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Hudson',) as Hudson;
    
    }
    return Future<Hudson>.value();
  }

  /// Retrieve job details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  Future<Response> getJobWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/api/json'
      .replaceAll('{name}', name);

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

  /// Retrieve job details
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  Future<FreeStyleProject> getJob(String name,) async {
    final response = await getJobWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FreeStyleProject',) as FreeStyleProject;
    
    }
    return Future<FreeStyleProject>.value();
  }

  /// Retrieve job configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  Future<Response> getJobConfigWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/config.xml'
      .replaceAll('{name}', name);

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

  /// Retrieve job configuration
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  Future<String> getJobConfig(String name,) async {
    final response = await getJobConfigWithHttpInfo(name,);
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

  /// Retrieve job's last build details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  Future<Response> getJobLastBuildWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/lastBuild/api/json'
      .replaceAll('{name}', name);

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

  /// Retrieve job's last build details
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  Future<FreeStyleBuild> getJobLastBuild(String name,) async {
    final response = await getJobLastBuildWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FreeStyleBuild',) as FreeStyleBuild;
    
    }
    return Future<FreeStyleBuild>.value();
  }

  /// Retrieve job's build progressive text output
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] number (required):
  ///   Build number
  ///
  /// * [String] start (required):
  ///   Starting point of progressive text output
  Future<Response> getJobProgressiveTextWithHttpInfo(String name, String number, String start,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (number == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: number');
    }
    if (start == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: start');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/{number}/logText/progressiveText'
      .replaceAll('{name}', name)
      .replaceAll('{number}', number);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'start', start));

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

  /// Retrieve job's build progressive text output
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] number (required):
  ///   Build number
  ///
  /// * [String] start (required):
  ///   Starting point of progressive text output
  Future<void> getJobProgressiveText(String name, String number, String start,) async {
    final response = await getJobProgressiveTextWithHttpInfo(name, number, start,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve queue details
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getQueueWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/queue/api/json';

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

  /// Retrieve queue details
  Future<Queue> getQueue() async {
    final response = await getQueueWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Queue',) as Queue;
    
    }
    return Future<Queue>.value();
  }

  /// Retrieve queued item details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] number (required):
  ///   Queue number
  Future<Response> getQueueItemWithHttpInfo(String number,) async {
    // Verify required params are set.
    if (number == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: number');
    }

    // ignore: prefer_const_declarations
    final path = r'/queue/item/{number}/api/json'
      .replaceAll('{number}', number);

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

  /// Retrieve queued item details
  ///
  /// Parameters:
  ///
  /// * [String] number (required):
  ///   Queue number
  Future<Queue> getQueueItem(String number,) async {
    final response = await getQueueItemWithHttpInfo(number,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Queue',) as Queue;
    
    }
    return Future<Queue>.value();
  }

  /// Retrieve view details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the view
  Future<Response> getViewWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/view/{name}/api/json'
      .replaceAll('{name}', name);

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

  /// Retrieve view details
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the view
  Future<ListView> getView(String name,) async {
    final response = await getViewWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListView',) as ListView;
    
    }
    return Future<ListView>.value();
  }

  /// Retrieve view configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the view
  Future<Response> getViewConfigWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/view/{name}/config.xml'
      .replaceAll('{name}', name);

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

  /// Retrieve view configuration
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the view
  Future<String> getViewConfig(String name,) async {
    final response = await getViewConfigWithHttpInfo(name,);
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

  /// Retrieve Jenkins headers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> headJenkinsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/json';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'HEAD',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve Jenkins headers
  Future<void> headJenkins() async {
    final response = await headJenkinsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a new job using job configuration, or copied from an existing job
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the new job
  ///
  /// * [String] from:
  ///   Existing job to copy from
  ///
  /// * [String] mode:
  ///   Set to 'copy' for copying an existing job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  ///
  /// * [String] contentType:
  ///   Content type header application/xml
  ///
  /// * [String] body:
  ///   Job configuration in config.xml format
  Future<Response> postCreateItemWithHttpInfo(String name, { String from, String mode, String jenkinsCrumb, String contentType, String body, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/createItem';

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    if (from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from', from));
    }
    if (mode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'mode', mode));
    }

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>['application/json'];


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

  /// Create a new job using job configuration, or copied from an existing job
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the new job
  ///
  /// * [String] from:
  ///   Existing job to copy from
  ///
  /// * [String] mode:
  ///   Set to 'copy' for copying an existing job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  ///
  /// * [String] contentType:
  ///   Content type header application/xml
  ///
  /// * [String] body:
  ///   Job configuration in config.xml format
  Future<void> postCreateItem(String name, { String from, String mode, String jenkinsCrumb, String contentType, String body, }) async {
    final response = await postCreateItemWithHttpInfo(name,  from: from, mode: mode, jenkinsCrumb: jenkinsCrumb, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a new view using view configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the new view
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  ///
  /// * [String] contentType:
  ///   Content type header application/xml
  ///
  /// * [String] body:
  ///   View configuration in config.xml format
  Future<Response> postCreateViewWithHttpInfo(String name, { String jenkinsCrumb, String contentType, String body, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/createView';

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>['application/json'];


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

  /// Create a new view using view configuration
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the new view
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  ///
  /// * [String] contentType:
  ///   Content type header application/xml
  ///
  /// * [String] body:
  ///   View configuration in config.xml format
  Future<void> postCreateView(String name, { String jenkinsCrumb, String contentType, String body, }) async {
    final response = await postCreateViewWithHttpInfo(name,  jenkinsCrumb: jenkinsCrumb, contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Build a job
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] json (required):
  ///
  /// * [String] token:
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<Response> postJobBuildWithHttpInfo(String name, String json, { String token, String jenkinsCrumb, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (json == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: json');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/build'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'json', json));
    if (token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'token', token));
    }

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }

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

  /// Build a job
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] json (required):
  ///
  /// * [String] token:
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<void> postJobBuild(String name, String json, { String token, String jenkinsCrumb, }) async {
    final response = await postJobBuildWithHttpInfo(name, json,  token: token, jenkinsCrumb: jenkinsCrumb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update job configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] body (required):
  ///   Job configuration in config.xml format
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<Response> postJobConfigWithHttpInfo(String name, String body, { String jenkinsCrumb, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/config.xml'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>['application/json'];


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

  /// Update job configuration
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] body (required):
  ///   Job configuration in config.xml format
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<void> postJobConfig(String name, String body, { String jenkinsCrumb, }) async {
    final response = await postJobConfigWithHttpInfo(name, body,  jenkinsCrumb: jenkinsCrumb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a job
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<Response> postJobDeleteWithHttpInfo(String name, { String jenkinsCrumb, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/doDelete'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }

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

  /// Delete a job
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<void> postJobDelete(String name, { String jenkinsCrumb, }) async {
    final response = await postJobDeleteWithHttpInfo(name,  jenkinsCrumb: jenkinsCrumb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disable a job
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<Response> postJobDisableWithHttpInfo(String name, { String jenkinsCrumb, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/disable'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }

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

  /// Disable a job
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<void> postJobDisable(String name, { String jenkinsCrumb, }) async {
    final response = await postJobDisableWithHttpInfo(name,  jenkinsCrumb: jenkinsCrumb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Enable a job
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<Response> postJobEnableWithHttpInfo(String name, { String jenkinsCrumb, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/enable'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }

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

  /// Enable a job
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<void> postJobEnable(String name, { String jenkinsCrumb, }) async {
    final response = await postJobEnableWithHttpInfo(name,  jenkinsCrumb: jenkinsCrumb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stop a job
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<Response> postJobLastBuildStopWithHttpInfo(String name, { String jenkinsCrumb, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/job/{name}/lastBuild/stop'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }

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

  /// Stop a job
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the job
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<void> postJobLastBuildStop(String name, { String jenkinsCrumb, }) async {
    final response = await postJobLastBuildStopWithHttpInfo(name,  jenkinsCrumb: jenkinsCrumb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update view configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the view
  ///
  /// * [String] body (required):
  ///   View configuration in config.xml format
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<Response> postViewConfigWithHttpInfo(String name, String body, { String jenkinsCrumb, }) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/view/{name}/config.xml'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jenkinsCrumb != null) {
      headerParams[r'Jenkins-Crumb'] = parameterToString(jenkinsCrumb);
    }

    const authNames = <String>['jenkins_auth'];
    const contentTypes = <String>['application/json'];


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

  /// Update view configuration
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the view
  ///
  /// * [String] body (required):
  ///   View configuration in config.xml format
  ///
  /// * [String] jenkinsCrumb:
  ///   CSRF protection token
  Future<void> postViewConfig(String name, String body, { String jenkinsCrumb, }) async {
    final response = await postViewConfigWithHttpInfo(name, body,  jenkinsCrumb: jenkinsCrumb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
