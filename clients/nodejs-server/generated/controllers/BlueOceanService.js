'use strict';

exports.getAuthenticatedUser = function(args, res, next) {
  /**
   * Retrieve authenticated user details for an organisation
   *
   * organisation String Name of the organisation
   * returns swaggyjenkinsUser
   **/
  var examples = {};
  examples['application/json'] = {
  "name" : "aeiou",
  "fullName" : "aeiou",
  "_class" : "aeiou",
  "id" : "aeiou",
  "email" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getClasses = function(args, res, next) {
  /**
   * Get a list of class names supported by a given class
   *
   * _class String Name of the class
   * returns String
   **/
  var examples = {};
  examples['application/json'] = "aeiou";
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getOrganisation = function(args, res, next) {
  /**
   * Retrieve organisation details
   *
   * organisation String Name of the organisation
   * returns swaggyjenkinsOrganisation
   **/
  var examples = {};
  examples['application/json'] = {
  "name" : "aeiou",
  "_class" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getOrganisations = function(args, res, next) {
  /**
   * Retrieve all organisations details
   *
   * returns getOrganisations
   **/
  var examples = {};
  examples['application/json'] = "";
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getPipelineBranchByOrg = function(args, res, next) {
  /**
   * Retrieve branch details for an organisation pipeline
   *
   * organisation String Name of the organisation
   * pipeline String Name of the pipeline
   * branch String Name of the branch
   * returns iojenkinsblueoceanrestimplpipelineBranchImpl
   **/
  var examples = {};
  examples['application/json'] = {
  "weatherScore" : 6,
  "displayName" : "aeiou",
  "permissions" : {
    "read" : true,
    "stop" : true,
    "start" : true,
    "create" : true,
    "_class" : "aeiou"
  },
  "organization" : "aeiou",
  "estimatedDurationInMillis" : 0,
  "name" : "aeiou",
  "fullDisplayName" : "aeiou",
  "fullName" : "aeiou",
  "_class" : "aeiou",
  "parameters" : [ {
    "name" : "aeiou",
    "description" : "aeiou",
    "_class" : "aeiou",
    "type" : "aeiou",
    "defaultParameterValue" : {
      "name" : "aeiou",
      "_class" : "aeiou",
      "value" : "aeiou"
    }
  } ],
  "pullRequest" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getPipelineBranchesByOrg = function(args, res, next) {
  /**
   * Retrieve all branches details for an organisation pipeline
   *
   * organisation String Name of the organisation
   * pipeline String Name of the pipeline
   * returns getMultibranchPipeline
   **/
  var examples = {};
  examples['application/json'] = {
  "weatherScore" : 6,
  "latestRun" : "aeiou",
  "displayName" : "aeiou",
  "totalNumberOfPullRequests" : 9,
  "numberOfFailingPullRequests" : 5,
  "branchNames" : [ "aeiou" ],
  "organization" : "aeiou",
  "totalNumberOfBranches" : 7,
  "estimatedDurationInMillis" : 0,
  "name" : "aeiou",
  "numberOfSuccessfulPullRequests" : 2,
  "numberOfSuccessfulBranches" : 5,
  "numberOfFailingBranches" : 1,
  "_class" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getPipelineByOrg = function(args, res, next) {
  /**
   * Retrieve pipeline details for an organisation
   *
   * organisation String Name of the organisation
   * pipeline String Name of the pipeline
   * returns swaggyjenkinsPipeline
   **/
  var examples = {};
  examples['application/json'] = {
  "weatherScore" : 0,
  "latestRun" : {
    "runSummary" : "aeiou",
    "durationInMillis" : 5,
    "commitId" : "aeiou",
    "type" : "aeiou",
    "pipeline" : "aeiou",
    "result" : "aeiou",
    "organization" : "aeiou",
    "estimatedDurationInMillis" : 5,
    "enQueueTime" : "aeiou",
    "startTime" : "aeiou",
    "endTime" : "aeiou",
    "id" : "aeiou",
    "state" : "aeiou",
    "_class" : "aeiou",
    "artifacts" : [ {
      "size" : 1,
      "name" : "aeiou",
      "_class" : "aeiou",
      "url" : "aeiou"
    } ]
  },
  "displayName" : "aeiou",
  "organization" : "aeiou",
  "name" : "aeiou",
  "estimatedDurationInMillis" : 6,
  "fullName" : "aeiou",
  "_class" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getPipelineFolderByOrg = function(args, res, next) {
  /**
   * Retrieve pipeline folder for an organisation
   *
   * organisation String Name of the organisation
   * folder String Name of the folder
   * returns iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
   **/
  var examples = {};
  examples['application/json'] = {
  "numberOfPipelines" : 6,
  "displayName" : "aeiou",
  "numberOfFolders" : 0,
  "organization" : "aeiou",
  "name" : "aeiou",
  "fullName" : "aeiou",
  "_class" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getPipelineFolderByOrg_0 = function(args, res, next) {
  /**
   * Retrieve pipeline details for an organisation folder
   *
   * organisation String Name of the organisation
   * pipeline String Name of the pipeline
   * folder String Name of the folder
   * returns iojenkinsblueoceanserviceembeddedrestPipelineImpl
   **/
  var examples = {};
  examples['application/json'] = {
  "weatherScore" : 6,
  "latestRun" : "aeiou",
  "displayName" : "aeiou",
  "organization" : "aeiou",
  "estimatedDurationInMillis" : 0,
  "name" : "aeiou",
  "fullName" : "aeiou",
  "_class" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getPipelinesByOrg = function(args, res, next) {
  /**
   * Retrieve all pipelines details for an organisation
   *
   * organisation String Name of the organisation
   * returns getPipelines
   **/
  var examples = {};
  examples['application/json'] = "";
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getUser = function(args, res, next) {
  /**
   * Retrieve user details for an organisation
   *
   * organisation String Name of the organisation
   * user String Name of the user
   * returns swaggyjenkinsUser
   **/
  var examples = {};
  examples['application/json'] = {
  "name" : "aeiou",
  "fullName" : "aeiou",
  "_class" : "aeiou",
  "id" : "aeiou",
  "email" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getUsers = function(args, res, next) {
  /**
   * Retrieve users details for an organisation
   *
   * organisation String Name of the organisation
   * returns swaggyjenkinsUser
   **/
  var examples = {};
  examples['application/json'] = {
  "name" : "aeiou",
  "fullName" : "aeiou",
  "_class" : "aeiou",
  "id" : "aeiou",
  "email" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.search = function(args, res, next) {
  /**
   * Get classes details
   *
   * q String Query string containing an array of class names
   * returns String
   **/
  var examples = {};
  examples['application/json'] = "aeiou";
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.search_0 = function(args, res, next) {
  /**
   * Search for any resource details
   *
   * q String Query string
   * returns String
   **/
  var examples = {};
  examples['application/json'] = "aeiou";
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

