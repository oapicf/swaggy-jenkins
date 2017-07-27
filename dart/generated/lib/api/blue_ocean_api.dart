part of swagger.api;



class BlueOceanApi {
  final ApiClient apiClient;

  BlueOceanApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Retrieve authenticated user details for an organisation
  Future<SwaggyjenkinsUser> getAuthenticatedUser(String organisation) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/user/".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SwaggyjenkinsUser') as SwaggyjenkinsUser ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of class names supported by a given class
  Future<String> getClasses(String _class) async {
    Object postBody = null;

    // verify required params are set
    if(_class == null) {
     throw new ApiException(400, "Missing required param: _class");
    }

    // create path and map variables
    String path = "/blue/rest/classes/{class}".replaceAll("{format}","json").replaceAll("{" + "class" + "}", _class.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve organisation details
  Future<SwaggyjenkinsOrganisation> getOrganisation(String organisation) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SwaggyjenkinsOrganisation') as SwaggyjenkinsOrganisation ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all organisations details
  Future<GetOrganisations> getOrganisations() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/blue/rest/organizations/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'GetOrganisations') as GetOrganisations ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve branch details for an organisation pipeline
  Future<IojenkinsblueoceanrestimplpipelineBranchImpl> getPipelineBranchByOrg(String organisation, String pipeline, String branch) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(branch == null) {
     throw new ApiException(400, "Missing required param: branch");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "branch" + "}", branch.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'IojenkinsblueoceanrestimplpipelineBranchImpl') as IojenkinsblueoceanrestimplpipelineBranchImpl ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all branches details for an organisation pipeline
  Future<GetMultibranchPipeline> getPipelineBranchesByOrg(String organisation, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'GetMultibranchPipeline') as GetMultibranchPipeline ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve pipeline details for an organisation
  Future<SwaggyjenkinsPipeline> getPipelineByOrg(String organisation, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SwaggyjenkinsPipeline') as SwaggyjenkinsPipeline ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve pipeline folder for an organisation
  Future<IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl> getPipelineFolderByOrg(String organisation, String folder) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }
    if(folder == null) {
     throw new ApiException(400, "Missing required param: folder");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/pipelines/{folder}/".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString()).replaceAll("{" + "folder" + "}", folder.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl') as IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve pipeline details for an organisation folder
  Future<IojenkinsblueoceanserviceembeddedrestPipelineImpl> getPipelineFolderByOrg_1(String organisation, String pipeline, String folder) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(folder == null) {
     throw new ApiException(400, "Missing required param: folder");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "folder" + "}", folder.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'IojenkinsblueoceanserviceembeddedrestPipelineImpl') as IojenkinsblueoceanserviceembeddedrestPipelineImpl ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all pipelines details for an organisation
  Future<GetPipelines> getPipelinesByOrg(String organisation) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/pipelines/".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'GetPipelines') as GetPipelines ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve user details for an organisation
  Future<SwaggyjenkinsUser> getUser(String organisation, String user) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }
    if(user == null) {
     throw new ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/users/{user}".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString()).replaceAll("{" + "user" + "}", user.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SwaggyjenkinsUser') as SwaggyjenkinsUser ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve users details for an organisation
  Future<SwaggyjenkinsUser> getUsers(String organisation) async {
    Object postBody = null;

    // verify required params are set
    if(organisation == null) {
     throw new ApiException(400, "Missing required param: organisation");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organisation}/users/".replaceAll("{format}","json").replaceAll("{" + "organisation" + "}", organisation.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SwaggyjenkinsUser') as SwaggyjenkinsUser ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get classes details
  Future<String> search(String q) async {
    Object postBody = null;

    // verify required params are set
    if(q == null) {
     throw new ApiException(400, "Missing required param: q");
    }

    // create path and map variables
    String path = "/blue/rest/classes/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Search for any resource details
  Future<String> search_2(String q) async {
    Object postBody = null;

    // verify required params are set
    if(q == null) {
     throw new ApiException(400, "Missing required param: q");
    }

    // create path and map variables
    String path = "/blue/rest/search/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
}
