part of swagger.api;

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

  final dson = new Dartson.JSON()
                   ..addTransformer(new DateTimeParser(), DateTime);

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "http://localhost"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['jenkins_auth'] = new HttpBasicAuth();
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
          return dson.map(value, new AllView());
        case 'Body':
          return dson.map(value, new Body());
        case 'BranchImpl':
          return dson.map(value, new BranchImpl());
        case 'BranchImpllinks':
          return dson.map(value, new BranchImpllinks());
        case 'BranchImplpermissions':
          return dson.map(value, new BranchImplpermissions());
        case 'CauseAction':
          return dson.map(value, new CauseAction());
        case 'CauseUserIdCause':
          return dson.map(value, new CauseUserIdCause());
        case 'ClassesByClass':
          return dson.map(value, new ClassesByClass());
        case 'ClockDifference':
          return dson.map(value, new ClockDifference());
        case 'ComputerSet':
          return dson.map(value, new ComputerSet());
        case 'DefaultCrumbIssuer':
          return dson.map(value, new DefaultCrumbIssuer());
        case 'DiskSpaceMonitorDescriptorDiskSpace':
          return dson.map(value, new DiskSpaceMonitorDescriptorDiskSpace());
        case 'EmptyChangeLogSet':
          return dson.map(value, new EmptyChangeLogSet());
        case 'ExtensionClassContainerImpl1':
          return dson.map(value, new ExtensionClassContainerImpl1());
        case 'ExtensionClassContainerImpl1links':
          return dson.map(value, new ExtensionClassContainerImpl1links());
        case 'ExtensionClassContainerImpl1map':
          return dson.map(value, new ExtensionClassContainerImpl1map());
        case 'ExtensionClassImpl':
          return dson.map(value, new ExtensionClassImpl());
        case 'ExtensionClassImpllinks':
          return dson.map(value, new ExtensionClassImpllinks());
        case 'FavoriteImpl':
          return dson.map(value, new FavoriteImpl());
        case 'FavoriteImpllinks':
          return dson.map(value, new FavoriteImpllinks());
        case 'FreeStyleBuild':
          return dson.map(value, new FreeStyleBuild());
        case 'FreeStyleProject':
          return dson.map(value, new FreeStyleProject());
        case 'FreeStyleProjectactions':
          return dson.map(value, new FreeStyleProjectactions());
        case 'FreeStyleProjecthealthReport':
          return dson.map(value, new FreeStyleProjecthealthReport());
        case 'GenericResource':
          return dson.map(value, new GenericResource());
        case 'GithubContent':
          return dson.map(value, new GithubContent());
        case 'GithubFile':
          return dson.map(value, new GithubFile());
        case 'GithubOrganization':
          return dson.map(value, new GithubOrganization());
        case 'GithubOrganizationlinks':
          return dson.map(value, new GithubOrganizationlinks());
        case 'GithubRepositories':
          return dson.map(value, new GithubRepositories());
        case 'GithubRepositorieslinks':
          return dson.map(value, new GithubRepositorieslinks());
        case 'GithubRepository':
          return dson.map(value, new GithubRepository());
        case 'GithubRepositorylinks':
          return dson.map(value, new GithubRepositorylinks());
        case 'GithubRepositorypermissions':
          return dson.map(value, new GithubRepositorypermissions());
        case 'GithubRespositoryContainer':
          return dson.map(value, new GithubRespositoryContainer());
        case 'GithubRespositoryContainerlinks':
          return dson.map(value, new GithubRespositoryContainerlinks());
        case 'GithubScm':
          return dson.map(value, new GithubScm());
        case 'GithubScmlinks':
          return dson.map(value, new GithubScmlinks());
        case 'Hudson':
          return dson.map(value, new Hudson());
        case 'HudsonMasterComputer':
          return dson.map(value, new HudsonMasterComputer());
        case 'HudsonMasterComputerexecutors':
          return dson.map(value, new HudsonMasterComputerexecutors());
        case 'HudsonMasterComputermonitorData':
          return dson.map(value, new HudsonMasterComputermonitorData());
        case 'HudsonassignedLabels':
          return dson.map(value, new HudsonassignedLabels());
        case 'InputStepImpl':
          return dson.map(value, new InputStepImpl());
        case 'InputStepImpllinks':
          return dson.map(value, new InputStepImpllinks());
        case 'Label1':
          return dson.map(value, new Label1());
        case 'Link':
          return dson.map(value, new Link());
        case 'ListView':
          return dson.map(value, new ListView());
        case 'MultibranchPipeline':
          return dson.map(value, new MultibranchPipeline());
        case 'NullSCM':
          return dson.map(value, new NullSCM());
        case 'Organisation':
          return dson.map(value, new Organisation());
        case 'Organisations':
          return dson.map(value, new Organisations());
        case 'Pipeline':
          return dson.map(value, new Pipeline());
        case 'PipelineActivities':
          return dson.map(value, new PipelineActivities());
        case 'PipelineActivity':
          return dson.map(value, new PipelineActivity());
        case 'PipelineActivityartifacts':
          return dson.map(value, new PipelineActivityartifacts());
        case 'PipelineBranches':
          return dson.map(value, new PipelineBranches());
        case 'PipelineBranchesitem':
          return dson.map(value, new PipelineBranchesitem());
        case 'PipelineBranchesitemlatestRun':
          return dson.map(value, new PipelineBranchesitemlatestRun());
        case 'PipelineBranchesitempullRequest':
          return dson.map(value, new PipelineBranchesitempullRequest());
        case 'PipelineBranchesitempullRequestlinks':
          return dson.map(value, new PipelineBranchesitempullRequestlinks());
        case 'PipelineFolderImpl':
          return dson.map(value, new PipelineFolderImpl());
        case 'PipelineImpl':
          return dson.map(value, new PipelineImpl());
        case 'PipelineImpllinks':
          return dson.map(value, new PipelineImpllinks());
        case 'PipelineQueue':
          return dson.map(value, new PipelineQueue());
        case 'PipelineRun':
          return dson.map(value, new PipelineRun());
        case 'PipelineRunImpl':
          return dson.map(value, new PipelineRunImpl());
        case 'PipelineRunImpllinks':
          return dson.map(value, new PipelineRunImpllinks());
        case 'PipelineRunNode':
          return dson.map(value, new PipelineRunNode());
        case 'PipelineRunNodeSteps':
          return dson.map(value, new PipelineRunNodeSteps());
        case 'PipelineRunNodeedges':
          return dson.map(value, new PipelineRunNodeedges());
        case 'PipelineRunNodes':
          return dson.map(value, new PipelineRunNodes());
        case 'PipelineRunSteps':
          return dson.map(value, new PipelineRunSteps());
        case 'PipelineRunartifacts':
          return dson.map(value, new PipelineRunartifacts());
        case 'PipelineRuns':
          return dson.map(value, new PipelineRuns());
        case 'PipelineStepImpl':
          return dson.map(value, new PipelineStepImpl());
        case 'PipelineStepImpllinks':
          return dson.map(value, new PipelineStepImpllinks());
        case 'PipelinelatestRun':
          return dson.map(value, new PipelinelatestRun());
        case 'PipelinelatestRunartifacts':
          return dson.map(value, new PipelinelatestRunartifacts());
        case 'Pipelines':
          return dson.map(value, new Pipelines());
        case 'Queue':
          return dson.map(value, new Queue());
        case 'QueueBlockedItem':
          return dson.map(value, new QueueBlockedItem());
        case 'QueueItemImpl':
          return dson.map(value, new QueueItemImpl());
        case 'QueueLeftItem':
          return dson.map(value, new QueueLeftItem());
        case 'ResponseTimeMonitorData':
          return dson.map(value, new ResponseTimeMonitorData());
        case 'ScmOrganisations':
          return dson.map(value, new ScmOrganisations());
        case 'StringParameterDefinition':
          return dson.map(value, new StringParameterDefinition());
        case 'StringParameterValue':
          return dson.map(value, new StringParameterValue());
        case 'SwapSpaceMonitorMemoryUsage2':
          return dson.map(value, new SwapSpaceMonitorMemoryUsage2());
        case 'UnlabeledLoadStatistics':
          return dson.map(value, new UnlabeledLoadStatistics());
        case 'User':
          return dson.map(value, new User());
        case 'UserFavorites':
          return dson.map(value, new UserFavorites());
        case 'Users':
          return dson.map(value, new Users());
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
    } else if (obj is String) {
      serialized = obj;
    } else {
      serialized = dson.encode(obj);
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
}
