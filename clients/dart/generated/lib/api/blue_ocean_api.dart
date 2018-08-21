part of openapi.api;



class BlueOceanApi {
  final ApiClient apiClient;

  BlueOceanApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Delete queue item from an organization pipeline queue
  Future deletePipelineQueueItem(String organization, String pipeline, String queue) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(queue == null) {
     throw new ApiException(400, "Missing required param: queue");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "queue" + "}", queue.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
    } else {
      return;
    }
  }
  /// 
  ///
  /// Retrieve authenticated user details for an organization
  Future<User> getAuthenticatedUser(String organization) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/user/".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'User') as User;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of class names supported by a given class
  Future<String> getClasses(String class_) async {
    Object postBody = null;

    // verify required params are set
    if(class_ == null) {
     throw new ApiException(400, "Missing required param: class_");
    }

    // create path and map variables
    String path = "/blue/rest/classes/{class}".replaceAll("{format}","json").replaceAll("{" + "class" + "}", class_.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve JSON Web Key
  Future<String> getJsonWebKey(int key) async {
    Object postBody = null;

    // verify required params are set
    if(key == null) {
     throw new ApiException(400, "Missing required param: key");
    }

    // create path and map variables
    String path = "/jwt-auth/jwks/{key}".replaceAll("{format}","json").replaceAll("{" + "key" + "}", key.toString());

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve JSON Web Token
  Future<String> getJsonWebToken({ int expiryTimeInMins, int maxExpiryTimeInMins }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/jwt-auth/token".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(expiryTimeInMins != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expiryTimeInMins", expiryTimeInMins));
    }
    if(maxExpiryTimeInMins != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxExpiryTimeInMins", maxExpiryTimeInMins));
    }

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve organization details
  Future<Organisation> getOrganisation(String organization) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'Organisation') as Organisation;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all organizations details
  Future<Organisations> getOrganisations() async {
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
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'Organisations') as Organisations;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve pipeline details for an organization
  Future<Pipeline> getPipeline(String organization, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'Pipeline') as Pipeline;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all activities details for an organization pipeline
  Future<PipelineActivities> getPipelineActivities(String organization, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineActivities') as PipelineActivities;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve branch details for an organization pipeline
  Future<BranchImpl> getPipelineBranch(String organization, String pipeline, String branch) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(branch == null) {
     throw new ApiException(400, "Missing required param: branch");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "branch" + "}", branch.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'BranchImpl') as BranchImpl;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve branch run details for an organization pipeline
  Future<PipelineRun> getPipelineBranchRun(String organization, String pipeline, String branch, String run) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(branch == null) {
     throw new ApiException(400, "Missing required param: branch");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "branch" + "}", branch.toString()).replaceAll("{" + "run" + "}", run.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineRun') as PipelineRun;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all branches details for an organization pipeline
  Future<MultibranchPipeline> getPipelineBranches(String organization, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'MultibranchPipeline') as MultibranchPipeline;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve pipeline folder for an organization
  Future<PipelineFolderImpl> getPipelineFolder(String organization, String folder) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(folder == null) {
     throw new ApiException(400, "Missing required param: folder");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{folder}/".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "folder" + "}", folder.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineFolderImpl') as PipelineFolderImpl;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve pipeline details for an organization folder
  Future<PipelineImpl> getPipelineFolderPipeline(String organization, String pipeline, String folder) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(folder == null) {
     throw new ApiException(400, "Missing required param: folder");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "folder" + "}", folder.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineImpl') as PipelineImpl;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve queue details for an organization pipeline
  Future<PipelineQueue> getPipelineQueue(String organization, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineQueue') as PipelineQueue;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve run details for an organization pipeline
  Future<PipelineRun> getPipelineRun(String organization, String pipeline, String run) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineRun') as PipelineRun;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get log for a pipeline run
  Future<String> getPipelineRunLog(String organization, String pipeline, String run, { int start, bool download }) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(start != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start", start));
    }
    if(download != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "download", download));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve run node details for an organization pipeline
  Future<PipelineRunNode> getPipelineRunNode(String organization, String pipeline, String run, String node) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }
    if(node == null) {
     throw new ApiException(400, "Missing required param: node");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString()).replaceAll("{" + "node" + "}", node.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineRunNode') as PipelineRunNode;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve run node details for an organization pipeline
  Future<PipelineStepImpl> getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }
    if(node == null) {
     throw new ApiException(400, "Missing required param: node");
    }
    if(step == null) {
     throw new ApiException(400, "Missing required param: step");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString()).replaceAll("{" + "node" + "}", node.toString()).replaceAll("{" + "step" + "}", step.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineStepImpl') as PipelineStepImpl;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get log for a pipeline run node step
  Future<String> getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }
    if(node == null) {
     throw new ApiException(400, "Missing required param: node");
    }
    if(step == null) {
     throw new ApiException(400, "Missing required param: step");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString()).replaceAll("{" + "node" + "}", node.toString()).replaceAll("{" + "step" + "}", step.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve run node steps details for an organization pipeline
  Future<PipelineRunNodeSteps> getPipelineRunNodeSteps(String organization, String pipeline, String run, String node) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }
    if(node == null) {
     throw new ApiException(400, "Missing required param: node");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString()).replaceAll("{" + "node" + "}", node.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineRunNodeSteps') as PipelineRunNodeSteps;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve run nodes details for an organization pipeline
  Future<PipelineRunNodes> getPipelineRunNodes(String organization, String pipeline, String run) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineRunNodes') as PipelineRunNodes;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all runs details for an organization pipeline
  Future<PipelineRuns> getPipelineRuns(String organization, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'PipelineRuns') as PipelineRuns;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all pipelines details for an organization
  Future<Pipelines> getPipelines(String organization) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'Pipelines') as Pipelines;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve SCM details for an organization
  Future<GithubScm> getSCM(String organization, String scm) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(scm == null) {
     throw new ApiException(400, "Missing required param: scm");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/scm/{scm}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "scm" + "}", scm.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'GithubScm') as GithubScm;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve SCM organization repositories details for an organization
  Future<ScmOrganisations> getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, { String credentialId, int pageSize, int pageNumber }) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(scm == null) {
     throw new ApiException(400, "Missing required param: scm");
    }
    if(scmOrganisation == null) {
     throw new ApiException(400, "Missing required param: scmOrganisation");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "scm" + "}", scm.toString()).replaceAll("{" + "scmOrganisation" + "}", scmOrganisation.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(credentialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "credentialId", credentialId));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(pageNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageNumber", pageNumber));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'ScmOrganisations') as ScmOrganisations;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve SCM organization repository details for an organization
  Future<ScmOrganisations> getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, { String credentialId }) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(scm == null) {
     throw new ApiException(400, "Missing required param: scm");
    }
    if(scmOrganisation == null) {
     throw new ApiException(400, "Missing required param: scmOrganisation");
    }
    if(repository == null) {
     throw new ApiException(400, "Missing required param: repository");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "scm" + "}", scm.toString()).replaceAll("{" + "scmOrganisation" + "}", scmOrganisation.toString()).replaceAll("{" + "repository" + "}", repository.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(credentialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "credentialId", credentialId));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'ScmOrganisations') as ScmOrganisations;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve SCM organizations details for an organization
  Future<ScmOrganisations> getSCMOrganisations(String organization, String scm, { String credentialId }) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(scm == null) {
     throw new ApiException(400, "Missing required param: scm");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "scm" + "}", scm.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(credentialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "credentialId", credentialId));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'ScmOrganisations') as ScmOrganisations;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve user details for an organization
  Future<User> getUser(String organization, String user) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(user == null) {
     throw new ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/users/{user}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "user" + "}", user.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'User') as User;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve user favorites details for an organization
  Future<UserFavorites> getUserFavorites(String user) async {
    Object postBody = null;

    // verify required params are set
    if(user == null) {
     throw new ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/blue/rest/users/{user}/favorites".replaceAll("{format}","json").replaceAll("{" + "user" + "}", user.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'UserFavorites') as UserFavorites;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve users details for an organization
  Future<User> getUsers(String organization) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/users/".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'User') as User;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Replay an organization pipeline run
  Future<QueueItemImpl> postPipelineRun(String organization, String pipeline, String run) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'QueueItemImpl') as QueueItemImpl;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Start a build for an organization pipeline
  Future<QueueItemImpl> postPipelineRuns(String organization, String pipeline) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'QueueItemImpl') as QueueItemImpl;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Favorite/unfavorite a pipeline
  Future<FavoriteImpl> putPipelineFavorite(String organization, String pipeline, Body body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'FavoriteImpl') as FavoriteImpl;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Stop a build of an organization pipeline
  Future<PipelineRun> putPipelineRun(String organization, String pipeline, String run, { String blocking, int timeOutInSecs }) async {
    Object postBody = null;

    // verify required params are set
    if(organization == null) {
     throw new ApiException(400, "Missing required param: organization");
    }
    if(pipeline == null) {
     throw new ApiException(400, "Missing required param: pipeline");
    }
    if(run == null) {
     throw new ApiException(400, "Missing required param: run");
    }

    // create path and map variables
    String path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pipeline" + "}", pipeline.toString()).replaceAll("{" + "run" + "}", run.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(blocking != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "blocking", blocking));
    }
    if(timeOutInSecs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeOutInSecs", timeOutInSecs));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["jenkins_auth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'PipelineRun') as PipelineRun;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Search for any resource details
  Future<String> search(String q) async {
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
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get classes details
  Future<String> searchClasses(String q) async {
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
    List<String> authNames = ["jenkins_auth"];

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
}
