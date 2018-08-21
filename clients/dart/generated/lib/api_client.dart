part of openapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "http://localhost"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['jenkins_auth'] = new HttpBasicAuth();
    _authentications['jwt_auth'] = new ApiKeyAuth("header", "Authorization");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AllView':
          return new AllView.fromJson(value);
        case 'Body':
          return new Body.fromJson(value);
        case 'BranchImpl':
          return new BranchImpl.fromJson(value);
        case 'BranchImpllinks':
          return new BranchImpllinks.fromJson(value);
        case 'BranchImplpermissions':
          return new BranchImplpermissions.fromJson(value);
        case 'CauseAction':
          return new CauseAction.fromJson(value);
        case 'CauseUserIdCause':
          return new CauseUserIdCause.fromJson(value);
        case 'ClassesByClass':
          return new ClassesByClass.fromJson(value);
        case 'ClockDifference':
          return new ClockDifference.fromJson(value);
        case 'ComputerSet':
          return new ComputerSet.fromJson(value);
        case 'DefaultCrumbIssuer':
          return new DefaultCrumbIssuer.fromJson(value);
        case 'DiskSpaceMonitorDescriptorDiskSpace':
          return new DiskSpaceMonitorDescriptorDiskSpace.fromJson(value);
        case 'EmptyChangeLogSet':
          return new EmptyChangeLogSet.fromJson(value);
        case 'ExtensionClassContainerImpl1':
          return new ExtensionClassContainerImpl1.fromJson(value);
        case 'ExtensionClassContainerImpl1links':
          return new ExtensionClassContainerImpl1links.fromJson(value);
        case 'ExtensionClassContainerImpl1map':
          return new ExtensionClassContainerImpl1map.fromJson(value);
        case 'ExtensionClassImpl':
          return new ExtensionClassImpl.fromJson(value);
        case 'ExtensionClassImpllinks':
          return new ExtensionClassImpllinks.fromJson(value);
        case 'FavoriteImpl':
          return new FavoriteImpl.fromJson(value);
        case 'FavoriteImpllinks':
          return new FavoriteImpllinks.fromJson(value);
        case 'FreeStyleBuild':
          return new FreeStyleBuild.fromJson(value);
        case 'FreeStyleProject':
          return new FreeStyleProject.fromJson(value);
        case 'FreeStyleProjectactions':
          return new FreeStyleProjectactions.fromJson(value);
        case 'FreeStyleProjecthealthReport':
          return new FreeStyleProjecthealthReport.fromJson(value);
        case 'GenericResource':
          return new GenericResource.fromJson(value);
        case 'GithubContent':
          return new GithubContent.fromJson(value);
        case 'GithubFile':
          return new GithubFile.fromJson(value);
        case 'GithubOrganization':
          return new GithubOrganization.fromJson(value);
        case 'GithubOrganizationlinks':
          return new GithubOrganizationlinks.fromJson(value);
        case 'GithubRepositories':
          return new GithubRepositories.fromJson(value);
        case 'GithubRepositorieslinks':
          return new GithubRepositorieslinks.fromJson(value);
        case 'GithubRepository':
          return new GithubRepository.fromJson(value);
        case 'GithubRepositorylinks':
          return new GithubRepositorylinks.fromJson(value);
        case 'GithubRepositorypermissions':
          return new GithubRepositorypermissions.fromJson(value);
        case 'GithubRespositoryContainer':
          return new GithubRespositoryContainer.fromJson(value);
        case 'GithubRespositoryContainerlinks':
          return new GithubRespositoryContainerlinks.fromJson(value);
        case 'GithubScm':
          return new GithubScm.fromJson(value);
        case 'GithubScmlinks':
          return new GithubScmlinks.fromJson(value);
        case 'Hudson':
          return new Hudson.fromJson(value);
        case 'HudsonMasterComputer':
          return new HudsonMasterComputer.fromJson(value);
        case 'HudsonMasterComputerexecutors':
          return new HudsonMasterComputerexecutors.fromJson(value);
        case 'HudsonMasterComputermonitorData':
          return new HudsonMasterComputermonitorData.fromJson(value);
        case 'HudsonassignedLabels':
          return new HudsonassignedLabels.fromJson(value);
        case 'InputStepImpl':
          return new InputStepImpl.fromJson(value);
        case 'InputStepImpllinks':
          return new InputStepImpllinks.fromJson(value);
        case 'Label1':
          return new Label1.fromJson(value);
        case 'Link':
          return new Link.fromJson(value);
        case 'ListView':
          return new ListView.fromJson(value);
        case 'MultibranchPipeline':
          return new MultibranchPipeline.fromJson(value);
        case 'NullSCM':
          return new NullSCM.fromJson(value);
        case 'Organisation':
          return new Organisation.fromJson(value);
        case 'Organisations':
          return new Organisations.fromJson(value);
        case 'Pipeline':
          return new Pipeline.fromJson(value);
        case 'PipelineActivities':
          return new PipelineActivities.fromJson(value);
        case 'PipelineActivity':
          return new PipelineActivity.fromJson(value);
        case 'PipelineActivityartifacts':
          return new PipelineActivityartifacts.fromJson(value);
        case 'PipelineBranches':
          return new PipelineBranches.fromJson(value);
        case 'PipelineBranchesitem':
          return new PipelineBranchesitem.fromJson(value);
        case 'PipelineBranchesitemlatestRun':
          return new PipelineBranchesitemlatestRun.fromJson(value);
        case 'PipelineBranchesitempullRequest':
          return new PipelineBranchesitempullRequest.fromJson(value);
        case 'PipelineBranchesitempullRequestlinks':
          return new PipelineBranchesitempullRequestlinks.fromJson(value);
        case 'PipelineFolderImpl':
          return new PipelineFolderImpl.fromJson(value);
        case 'PipelineImpl':
          return new PipelineImpl.fromJson(value);
        case 'PipelineImpllinks':
          return new PipelineImpllinks.fromJson(value);
        case 'PipelineQueue':
          return new PipelineQueue.fromJson(value);
        case 'PipelineRun':
          return new PipelineRun.fromJson(value);
        case 'PipelineRunImpl':
          return new PipelineRunImpl.fromJson(value);
        case 'PipelineRunImpllinks':
          return new PipelineRunImpllinks.fromJson(value);
        case 'PipelineRunNode':
          return new PipelineRunNode.fromJson(value);
        case 'PipelineRunNodeSteps':
          return new PipelineRunNodeSteps.fromJson(value);
        case 'PipelineRunNodeedges':
          return new PipelineRunNodeedges.fromJson(value);
        case 'PipelineRunNodes':
          return new PipelineRunNodes.fromJson(value);
        case 'PipelineRunSteps':
          return new PipelineRunSteps.fromJson(value);
        case 'PipelineRunartifacts':
          return new PipelineRunartifacts.fromJson(value);
        case 'PipelineRuns':
          return new PipelineRuns.fromJson(value);
        case 'PipelineStepImpl':
          return new PipelineStepImpl.fromJson(value);
        case 'PipelineStepImpllinks':
          return new PipelineStepImpllinks.fromJson(value);
        case 'PipelinelatestRun':
          return new PipelinelatestRun.fromJson(value);
        case 'PipelinelatestRunartifacts':
          return new PipelinelatestRunartifacts.fromJson(value);
        case 'Pipelines':
          return new Pipelines.fromJson(value);
        case 'Queue':
          return new Queue.fromJson(value);
        case 'QueueBlockedItem':
          return new QueueBlockedItem.fromJson(value);
        case 'QueueItemImpl':
          return new QueueItemImpl.fromJson(value);
        case 'QueueLeftItem':
          return new QueueLeftItem.fromJson(value);
        case 'ResponseTimeMonitorData':
          return new ResponseTimeMonitorData.fromJson(value);
        case 'ScmOrganisations':
          return new ScmOrganisations.fromJson(value);
        case 'StringParameterDefinition':
          return new StringParameterDefinition.fromJson(value);
        case 'StringParameterValue':
          return new StringParameterValue.fromJson(value);
        case 'SwapSpaceMonitorMemoryUsage2':
          return new SwapSpaceMonitorMemoryUsage2.fromJson(value);
        case 'UnlabeledLoadStatistics':
          return new UnlabeledLoadStatistics.fromJson(value);
        case 'User':
          return new User.fromJson(value);
        case 'UserFavorites':
          return new UserFavorites.fromJson(value);
        case 'Users':
          return new Users.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = JSON.decode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = JSON.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
