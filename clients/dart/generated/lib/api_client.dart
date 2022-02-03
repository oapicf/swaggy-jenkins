//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'jenkins_auth'] = HttpBasicAuth();
    _authentications[r'jwt_auth'] = ApiKeyAuth('header', 'Authorization');
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications => Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final uri = Uri.parse('$basePath$path$queryString');

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    for(final authName in authNames) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'AllView':
          return AllView.fromJson(value);
        case 'BranchImpl':
          return BranchImpl.fromJson(value);
        case 'BranchImpllinks':
          return BranchImpllinks.fromJson(value);
        case 'BranchImplpermissions':
          return BranchImplpermissions.fromJson(value);
        case 'CauseAction':
          return CauseAction.fromJson(value);
        case 'CauseUserIdCause':
          return CauseUserIdCause.fromJson(value);
        case 'ClassesByClass':
          return ClassesByClass.fromJson(value);
        case 'ClockDifference':
          return ClockDifference.fromJson(value);
        case 'ComputerSet':
          return ComputerSet.fromJson(value);
        case 'DefaultCrumbIssuer':
          return DefaultCrumbIssuer.fromJson(value);
        case 'DiskSpaceMonitorDescriptorDiskSpace':
          return DiskSpaceMonitorDescriptorDiskSpace.fromJson(value);
        case 'EmptyChangeLogSet':
          return EmptyChangeLogSet.fromJson(value);
        case 'ExtensionClassContainerImpl1':
          return ExtensionClassContainerImpl1.fromJson(value);
        case 'ExtensionClassContainerImpl1links':
          return ExtensionClassContainerImpl1links.fromJson(value);
        case 'ExtensionClassContainerImpl1map':
          return ExtensionClassContainerImpl1map.fromJson(value);
        case 'ExtensionClassImpl':
          return ExtensionClassImpl.fromJson(value);
        case 'ExtensionClassImpllinks':
          return ExtensionClassImpllinks.fromJson(value);
        case 'FavoriteImpl':
          return FavoriteImpl.fromJson(value);
        case 'FavoriteImpllinks':
          return FavoriteImpllinks.fromJson(value);
        case 'FreeStyleBuild':
          return FreeStyleBuild.fromJson(value);
        case 'FreeStyleProject':
          return FreeStyleProject.fromJson(value);
        case 'FreeStyleProjectactions':
          return FreeStyleProjectactions.fromJson(value);
        case 'FreeStyleProjecthealthReport':
          return FreeStyleProjecthealthReport.fromJson(value);
        case 'GenericResource':
          return GenericResource.fromJson(value);
        case 'GithubContent':
          return GithubContent.fromJson(value);
        case 'GithubFile':
          return GithubFile.fromJson(value);
        case 'GithubOrganization':
          return GithubOrganization.fromJson(value);
        case 'GithubOrganizationlinks':
          return GithubOrganizationlinks.fromJson(value);
        case 'GithubRepositories':
          return GithubRepositories.fromJson(value);
        case 'GithubRepositorieslinks':
          return GithubRepositorieslinks.fromJson(value);
        case 'GithubRepository':
          return GithubRepository.fromJson(value);
        case 'GithubRepositorylinks':
          return GithubRepositorylinks.fromJson(value);
        case 'GithubRepositorypermissions':
          return GithubRepositorypermissions.fromJson(value);
        case 'GithubRespositoryContainer':
          return GithubRespositoryContainer.fromJson(value);
        case 'GithubRespositoryContainerlinks':
          return GithubRespositoryContainerlinks.fromJson(value);
        case 'GithubScm':
          return GithubScm.fromJson(value);
        case 'GithubScmlinks':
          return GithubScmlinks.fromJson(value);
        case 'Hudson':
          return Hudson.fromJson(value);
        case 'HudsonMasterComputer':
          return HudsonMasterComputer.fromJson(value);
        case 'HudsonMasterComputerexecutors':
          return HudsonMasterComputerexecutors.fromJson(value);
        case 'HudsonMasterComputermonitorData':
          return HudsonMasterComputermonitorData.fromJson(value);
        case 'HudsonassignedLabels':
          return HudsonassignedLabels.fromJson(value);
        case 'InputStepImpl':
          return InputStepImpl.fromJson(value);
        case 'InputStepImpllinks':
          return InputStepImpllinks.fromJson(value);
        case 'Label1':
          return Label1.fromJson(value);
        case 'Link':
          return Link.fromJson(value);
        case 'ListView':
          return ListView.fromJson(value);
        case 'MultibranchPipeline':
          return MultibranchPipeline.fromJson(value);
        case 'NullSCM':
          return NullSCM.fromJson(value);
        case 'Organisation':
          return Organisation.fromJson(value);
        case 'Pipeline':
          return Pipeline.fromJson(value);
        case 'PipelineActivity':
          return PipelineActivity.fromJson(value);
        case 'PipelineActivityartifacts':
          return PipelineActivityartifacts.fromJson(value);
        case 'PipelineBranchesitem':
          return PipelineBranchesitem.fromJson(value);
        case 'PipelineBranchesitemlatestRun':
          return PipelineBranchesitemlatestRun.fromJson(value);
        case 'PipelineBranchesitempullRequest':
          return PipelineBranchesitempullRequest.fromJson(value);
        case 'PipelineBranchesitempullRequestlinks':
          return PipelineBranchesitempullRequestlinks.fromJson(value);
        case 'PipelineFolderImpl':
          return PipelineFolderImpl.fromJson(value);
        case 'PipelineImpl':
          return PipelineImpl.fromJson(value);
        case 'PipelineImpllinks':
          return PipelineImpllinks.fromJson(value);
        case 'PipelineRun':
          return PipelineRun.fromJson(value);
        case 'PipelineRunImpl':
          return PipelineRunImpl.fromJson(value);
        case 'PipelineRunImpllinks':
          return PipelineRunImpllinks.fromJson(value);
        case 'PipelineRunNode':
          return PipelineRunNode.fromJson(value);
        case 'PipelineRunNodeedges':
          return PipelineRunNodeedges.fromJson(value);
        case 'PipelineRunartifacts':
          return PipelineRunartifacts.fromJson(value);
        case 'PipelineStepImpl':
          return PipelineStepImpl.fromJson(value);
        case 'PipelineStepImpllinks':
          return PipelineStepImpllinks.fromJson(value);
        case 'PipelinelatestRun':
          return PipelinelatestRun.fromJson(value);
        case 'PipelinelatestRunartifacts':
          return PipelinelatestRunartifacts.fromJson(value);
        case 'Queue':
          return Queue.fromJson(value);
        case 'QueueBlockedItem':
          return QueueBlockedItem.fromJson(value);
        case 'QueueItemImpl':
          return QueueItemImpl.fromJson(value);
        case 'QueueLeftItem':
          return QueueLeftItem.fromJson(value);
        case 'ResponseTimeMonitorData':
          return ResponseTimeMonitorData.fromJson(value);
        case 'StringParameterDefinition':
          return StringParameterDefinition.fromJson(value);
        case 'StringParameterValue':
          return StringParameterValue.fromJson(value);
        case 'SwapSpaceMonitorMemoryUsage2':
          return SwapSpaceMonitorMemoryUsage2.fromJson(value);
        case 'UnlabeledLoadStatistics':
          return UnlabeledLoadStatistics.fromJson(value);
        case 'User':
          return User.fromJson(value);
        default:
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable == true,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async => value == null ? '' : json.encode(value);
