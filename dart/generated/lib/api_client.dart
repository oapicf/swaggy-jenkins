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
        case 'GetClassesByClass':
          return dson.map(value, new GetClassesByClass());
        case 'GetMultibranchPipeline':
          return dson.map(value, new GetMultibranchPipeline());
        case 'GetOrganisations':
          return dson.map(value, new GetOrganisations());
        case 'GetPipelineBranches':
          return dson.map(value, new GetPipelineBranches());
        case 'GetPipelineBranchesitem':
          return dson.map(value, new GetPipelineBranchesitem());
        case 'GetPipelineBranchesitemLatestRun':
          return dson.map(value, new GetPipelineBranchesitemLatestRun());
        case 'GetPipelineBranchesitemPullRequest':
          return dson.map(value, new GetPipelineBranchesitemPullRequest());
        case 'GetPipelineBranchesitemPullRequestLinks':
          return dson.map(value, new GetPipelineBranchesitemPullRequestLinks());
        case 'GetPipelines':
          return dson.map(value, new GetPipelines());
        case 'GetUsers':
          return dson.map(value, new GetUsers());
        case 'HudsonmodelAllView':
          return dson.map(value, new HudsonmodelAllView());
        case 'HudsonmodelCauseAction':
          return dson.map(value, new HudsonmodelCauseAction());
        case 'HudsonmodelCauseUserIdCause':
          return dson.map(value, new HudsonmodelCauseUserIdCause());
        case 'HudsonmodelComputerSet':
          return dson.map(value, new HudsonmodelComputerSet());
        case 'HudsonmodelFreeStyleBuild':
          return dson.map(value, new HudsonmodelFreeStyleBuild());
        case 'HudsonmodelFreeStyleProject':
          return dson.map(value, new HudsonmodelFreeStyleProject());
        case 'HudsonmodelFreeStyleProjectactions':
          return dson.map(value, new HudsonmodelFreeStyleProjectactions());
        case 'HudsonmodelFreeStyleProjecthealthReport':
          return dson.map(value, new HudsonmodelFreeStyleProjecthealthReport());
        case 'HudsonmodelHudson':
          return dson.map(value, new HudsonmodelHudson());
        case 'HudsonmodelHudsonMasterComputer':
          return dson.map(value, new HudsonmodelHudsonMasterComputer());
        case 'HudsonmodelHudsonMasterComputerMonitorData':
          return dson.map(value, new HudsonmodelHudsonMasterComputerMonitorData());
        case 'HudsonmodelHudsonMasterComputerexecutors':
          return dson.map(value, new HudsonmodelHudsonMasterComputerexecutors());
        case 'HudsonmodelHudsonassignedLabels':
          return dson.map(value, new HudsonmodelHudsonassignedLabels());
        case 'HudsonmodelLabel1':
          return dson.map(value, new HudsonmodelLabel1());
        case 'HudsonmodelListView':
          return dson.map(value, new HudsonmodelListView());
        case 'HudsonmodelQueue':
          return dson.map(value, new HudsonmodelQueue());
        case 'HudsonmodelQueueBlockedItem':
          return dson.map(value, new HudsonmodelQueueBlockedItem());
        case 'HudsonmodelQueueLeftItem':
          return dson.map(value, new HudsonmodelQueueLeftItem());
        case 'HudsonmodelStringParameterDefinition':
          return dson.map(value, new HudsonmodelStringParameterDefinition());
        case 'HudsonmodelStringParameterValue':
          return dson.map(value, new HudsonmodelStringParameterValue());
        case 'HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace':
          return dson.map(value, new HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace());
        case 'HudsonnodeMonitorsResponseTimeMonitorData':
          return dson.map(value, new HudsonnodeMonitorsResponseTimeMonitorData());
        case 'HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2':
          return dson.map(value, new HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2());
        case 'HudsonscmEmptyChangeLogSet':
          return dson.map(value, new HudsonscmEmptyChangeLogSet());
        case 'HudsonscmNullSCM':
          return dson.map(value, new HudsonscmNullSCM());
        case 'HudsonsecuritycsrfDefaultCrumbIssuer':
          return dson.map(value, new HudsonsecuritycsrfDefaultCrumbIssuer());
        case 'HudsonutilClockDifference':
          return dson.map(value, new HudsonutilClockDifference());
        case 'IojenkinsblueoceanresthalLink':
          return dson.map(value, new IojenkinsblueoceanresthalLink());
        case 'IojenkinsblueoceanrestimplpipelineBranchImpl':
          return dson.map(value, new IojenkinsblueoceanrestimplpipelineBranchImpl());
        case 'IojenkinsblueoceanrestimplpipelineBranchImplPermissions':
          return dson.map(value, new IojenkinsblueoceanrestimplpipelineBranchImplPermissions());
        case 'IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1':
          return dson.map(value, new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1());
        case 'IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links':
          return dson.map(value, new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links());
        case 'IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map':
          return dson.map(value, new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map());
        case 'IojenkinsblueoceanserviceembeddedrestExtensionClassImpl':
          return dson.map(value, new IojenkinsblueoceanserviceembeddedrestExtensionClassImpl());
        case 'IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks':
          return dson.map(value, new IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks());
        case 'IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl':
          return dson.map(value, new IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl());
        case 'IojenkinsblueoceanserviceembeddedrestPipelineImpl':
          return dson.map(value, new IojenkinsblueoceanserviceembeddedrestPipelineImpl());
        case 'JenkinsmodelUnlabeledLoadStatistics':
          return dson.map(value, new JenkinsmodelUnlabeledLoadStatistics());
        case 'SwaggyjenkinsOrganisation':
          return dson.map(value, new SwaggyjenkinsOrganisation());
        case 'SwaggyjenkinsPipeline':
          return dson.map(value, new SwaggyjenkinsPipeline());
        case 'SwaggyjenkinsPipelineLatestRun':
          return dson.map(value, new SwaggyjenkinsPipelineLatestRun());
        case 'SwaggyjenkinsPipelineLatestRunartifacts':
          return dson.map(value, new SwaggyjenkinsPipelineLatestRunartifacts());
        case 'SwaggyjenkinsUser':
          return dson.map(value, new SwaggyjenkinsUser());
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
