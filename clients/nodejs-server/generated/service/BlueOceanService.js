'use strict';


/**
 * Delete queue item from an organization pipeline queue
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * queue String Name of the queue item
 * no response value expected for this operation
 **/
exports.deletePipelineQueueItem = function(organization,pipeline,queue) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Retrieve authenticated user details for an organization
 *
 * organization String Name of the organization
 * returns User
 **/
exports.getAuthenticatedUser = function(organization) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "name" : "name",
  "fullName" : "fullName",
  "_class" : "_class",
  "id" : "id",
  "email" : "email"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get a list of class names supported by a given class
 *
 * _class String Name of the class
 * returns String
 **/
exports.getClasses = function(_class) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve JSON Web Key
 *
 * key Integer Key ID received as part of JWT header field kid
 * returns String
 **/
exports.getJsonWebKey = function(key) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve JSON Web Token
 *
 * expiryTimeInMins Integer Token expiry time in minutes, default: 30 minutes (optional)
 * maxExpiryTimeInMins Integer Maximum token expiry time in minutes, default: 480 minutes (optional)
 * returns String
 **/
exports.getJsonWebToken = function(expiryTimeInMins,maxExpiryTimeInMins) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve organization details
 *
 * organization String Name of the organization
 * returns Organisation
 **/
exports.getOrganisation = function(organization) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "name" : "name",
  "_class" : "_class"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve all organizations details
 *
 * returns Organisations
 **/
exports.getOrganisations = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve pipeline details for an organization
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * returns Pipeline
 **/
exports.getPipeline = function(organization,pipeline) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "weatherScore" : 0,
  "latestRun" : {
    "runSummary" : "runSummary",
    "durationInMillis" : 5,
    "commitId" : "commitId",
    "type" : "type",
    "pipeline" : "pipeline",
    "result" : "result",
    "organization" : "organization",
    "estimatedDurationInMillis" : 5,
    "enQueueTime" : "enQueueTime",
    "startTime" : "startTime",
    "endTime" : "endTime",
    "id" : "id",
    "state" : "state",
    "_class" : "_class",
    "artifacts" : [ {
      "size" : 1,
      "name" : "name",
      "_class" : "_class",
      "url" : "url"
    }, {
      "size" : 1,
      "name" : "name",
      "_class" : "_class",
      "url" : "url"
    } ]
  },
  "displayName" : "displayName",
  "organization" : "organization",
  "name" : "name",
  "estimatedDurationInMillis" : 6,
  "fullName" : "fullName",
  "_class" : "_class"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve all activities details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * returns PipelineActivities
 **/
exports.getPipelineActivities = function(organization,pipeline) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve branch details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * branch String Name of the branch
 * returns BranchImpl
 **/
exports.getPipelineBranch = function(organization,pipeline,branch) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "weatherScore" : 6,
  "latestRun" : {
    "runSummary" : "runSummary",
    "_links" : {
      "nodes" : {
        "_class" : "_class",
        "href" : "href"
      },
      "log" : {
        "_class" : "_class",
        "href" : "href"
      },
      "self" : {
        "_class" : "_class",
        "href" : "href"
      },
      "_class" : "_class",
      "actions" : {
        "_class" : "_class",
        "href" : "href"
      },
      "steps" : {
        "_class" : "_class",
        "href" : "href"
      }
    },
    "durationInMillis" : 1,
    "commitId" : "commitId",
    "type" : "type",
    "pipeline" : "pipeline",
    "result" : "result",
    "organization" : "organization",
    "enQueueTime" : "enQueueTime",
    "estimatedDurationInMillis" : 5,
    "startTime" : "startTime",
    "_class" : "_class",
    "endTime" : "endTime",
    "id" : "id",
    "state" : "state"
  },
  "_links" : {
    "self" : {
      "_class" : "_class",
      "href" : "href"
    },
    "_class" : "_class",
    "actions" : {
      "_class" : "_class",
      "href" : "href"
    },
    "runs" : {
      "_class" : "_class",
      "href" : "href"
    },
    "queue" : {
      "_class" : "_class",
      "href" : "href"
    }
  },
  "displayName" : "displayName",
  "fullDisplayName" : "fullDisplayName",
  "fullName" : "fullName",
  "pullRequest" : "pullRequest",
  "permissions" : {
    "read" : true,
    "stop" : true,
    "start" : true,
    "create" : true,
    "_class" : "_class"
  },
  "organization" : "organization",
  "estimatedDurationInMillis" : 0,
  "name" : "name",
  "_class" : "_class",
  "parameters" : [ {
    "name" : "name",
    "description" : "description",
    "_class" : "_class",
    "type" : "type",
    "defaultParameterValue" : {
      "name" : "name",
      "_class" : "_class",
      "value" : "value"
    }
  }, {
    "name" : "name",
    "description" : "description",
    "_class" : "_class",
    "type" : "type",
    "defaultParameterValue" : {
      "name" : "name",
      "_class" : "_class",
      "value" : "value"
    }
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve branch run details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * branch String Name of the branch
 * run String Name of the run
 * returns PipelineRun
 **/
exports.getPipelineBranchRun = function(organization,pipeline,branch,run) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "runSummary" : "runSummary",
  "durationInMillis" : 6,
  "commitId" : "commitId",
  "type" : "type",
  "pipeline" : "pipeline",
  "result" : "result",
  "organization" : "organization",
  "estimatedDurationInMillis" : 1,
  "enQueueTime" : "enQueueTime",
  "startTime" : "startTime",
  "_class" : "_class",
  "endTime" : "endTime",
  "id" : "id",
  "state" : "state",
  "artifacts" : [ {
    "size" : 0,
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  }, {
    "size" : 0,
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve all branches details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * returns MultibranchPipeline
 **/
exports.getPipelineBranches = function(organization,pipeline) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "weatherScore" : 6,
  "latestRun" : "latestRun",
  "displayName" : "displayName",
  "totalNumberOfPullRequests" : 9,
  "numberOfFailingPullRequests" : 5,
  "branchNames" : [ "branchNames", "branchNames" ],
  "organization" : "organization",
  "totalNumberOfBranches" : 7,
  "estimatedDurationInMillis" : 0,
  "name" : "name",
  "numberOfSuccessfulPullRequests" : 2,
  "numberOfSuccessfulBranches" : 5,
  "numberOfFailingBranches" : 1,
  "_class" : "_class"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve pipeline folder for an organization
 *
 * organization String Name of the organization
 * folder String Name of the folder
 * returns PipelineFolderImpl
 **/
exports.getPipelineFolder = function(organization,folder) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "numberOfPipelines" : 6,
  "displayName" : "displayName",
  "numberOfFolders" : 0,
  "organization" : "organization",
  "name" : "name",
  "fullName" : "fullName",
  "_class" : "_class"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve pipeline details for an organization folder
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * folder String Name of the folder
 * returns PipelineImpl
 **/
exports.getPipelineFolderPipeline = function(organization,pipeline,folder) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "weatherScore" : 6,
  "latestRun" : "latestRun",
  "_links" : {
    "self" : {
      "_class" : "_class",
      "href" : "href"
    },
    "_class" : "_class",
    "runs" : {
      "_class" : "_class",
      "href" : "href"
    },
    "actions" : {
      "_class" : "_class",
      "href" : "href"
    },
    "queue" : {
      "_class" : "_class",
      "href" : "href"
    }
  },
  "displayName" : "displayName",
  "organization" : "organization",
  "estimatedDurationInMillis" : 0,
  "name" : "name",
  "fullName" : "fullName",
  "_class" : "_class"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve queue details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * returns PipelineQueue
 **/
exports.getPipelineQueue = function(organization,pipeline) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve run details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * returns PipelineRun
 **/
exports.getPipelineRun = function(organization,pipeline,run) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "runSummary" : "runSummary",
  "durationInMillis" : 6,
  "commitId" : "commitId",
  "type" : "type",
  "pipeline" : "pipeline",
  "result" : "result",
  "organization" : "organization",
  "estimatedDurationInMillis" : 1,
  "enQueueTime" : "enQueueTime",
  "startTime" : "startTime",
  "_class" : "_class",
  "endTime" : "endTime",
  "id" : "id",
  "state" : "state",
  "artifacts" : [ {
    "size" : 0,
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  }, {
    "size" : 0,
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get log for a pipeline run
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * start Integer Start position of the log (optional)
 * download Boolean Set to true in order to download the file, otherwise it's passed as a response body (optional)
 * returns String
 **/
exports.getPipelineRunLog = function(organization,pipeline,run,start,download) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve run node details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * node String Name of the node
 * returns PipelineRunNode
 **/
exports.getPipelineRunNode = function(organization,pipeline,run,node) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "result" : "result",
  "durationInMillis" : 0,
  "displayName" : "displayName",
  "edges" : [ {
    "id" : "id",
    "_class" : "_class"
  }, {
    "id" : "id",
    "_class" : "_class"
  } ],
  "startTime" : "startTime",
  "_class" : "_class",
  "id" : "id",
  "state" : "state"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve run node details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * node String Name of the node
 * step String Name of the step
 * returns PipelineStepImpl
 **/
exports.getPipelineRunNodeStep = function(organization,pipeline,run,node,step) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "result" : "result",
  "input" : {
    "submitter" : "submitter",
    "_links" : {
      "self" : {
        "_class" : "_class",
        "href" : "href"
      },
      "_class" : "_class"
    },
    "_class" : "_class",
    "id" : "id",
    "message" : "message",
    "ok" : "ok",
    "parameters" : [ {
      "name" : "name",
      "description" : "description",
      "_class" : "_class",
      "type" : "type",
      "defaultParameterValue" : {
        "name" : "name",
        "_class" : "_class",
        "value" : "value"
      }
    }, {
      "name" : "name",
      "description" : "description",
      "_class" : "_class",
      "type" : "type",
      "defaultParameterValue" : {
        "name" : "name",
        "_class" : "_class",
        "value" : "value"
      }
    } ]
  },
  "_links" : {
    "self" : {
      "_class" : "_class",
      "href" : "href"
    },
    "_class" : "_class",
    "actions" : {
      "_class" : "_class",
      "href" : "href"
    }
  },
  "durationInMillis" : 0,
  "displayName" : "displayName",
  "startTime" : "startTime",
  "_class" : "_class",
  "id" : "id",
  "state" : "state"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get log for a pipeline run node step
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * node String Name of the node
 * step String Name of the step
 * returns String
 **/
exports.getPipelineRunNodeStepLog = function(organization,pipeline,run,node,step) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve run node steps details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * node String Name of the node
 * returns PipelineRunNodeSteps
 **/
exports.getPipelineRunNodeSteps = function(organization,pipeline,run,node) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve run nodes details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * returns PipelineRunNodes
 **/
exports.getPipelineRunNodes = function(organization,pipeline,run) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve all runs details for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * returns PipelineRuns
 **/
exports.getPipelineRuns = function(organization,pipeline) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve all pipelines details for an organization
 *
 * organization String Name of the organization
 * returns Pipelines
 **/
exports.getPipelines = function(organization) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve SCM details for an organization
 *
 * organization String Name of the organization
 * scm String Name of SCM
 * returns GithubScm
 **/
exports.getSCM = function(organization,scm) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "_links" : {
    "self" : {
      "_class" : "_class",
      "href" : "href"
    },
    "_class" : "_class"
  },
  "credentialId" : "credentialId",
  "_class" : "_class",
  "id" : "id",
  "uri" : "uri"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve SCM organization repositories details for an organization
 *
 * organization String Name of the organization
 * scm String Name of SCM
 * scmOrganisation String Name of the SCM organization
 * credentialId String Credential ID (optional)
 * pageSize Integer Number of items in a page (optional)
 * pageNumber Integer Page number (optional)
 * returns ScmOrganisations
 **/
exports.getSCMOrganisationRepositories = function(organization,scm,scmOrganisation,credentialId,pageSize,pageNumber) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve SCM organization repository details for an organization
 *
 * organization String Name of the organization
 * scm String Name of SCM
 * scmOrganisation String Name of the SCM organization
 * repository String Name of the SCM repository
 * credentialId String Credential ID (optional)
 * returns ScmOrganisations
 **/
exports.getSCMOrganisationRepository = function(organization,scm,scmOrganisation,repository,credentialId) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve SCM organizations details for an organization
 *
 * organization String Name of the organization
 * scm String Name of SCM
 * credentialId String Credential ID (optional)
 * returns ScmOrganisations
 **/
exports.getSCMOrganisations = function(organization,scm,credentialId) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve user details for an organization
 *
 * organization String Name of the organization
 * user String Name of the user
 * returns User
 **/
exports.getUser = function(organization,user) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "name" : "name",
  "fullName" : "fullName",
  "_class" : "_class",
  "id" : "id",
  "email" : "email"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve user favorites details for an organization
 *
 * user String Name of the user
 * returns UserFavorites
 **/
exports.getUserFavorites = function(user) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = null;
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve users details for an organization
 *
 * organization String Name of the organization
 * returns User
 **/
exports.getUsers = function(organization) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "name" : "name",
  "fullName" : "fullName",
  "_class" : "_class",
  "id" : "id",
  "email" : "email"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Replay an organization pipeline run
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * returns QueueItemImpl
 **/
exports.postPipelineRun = function(organization,pipeline,run) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "pipeline" : "pipeline",
  "expectedBuildNumber" : 0,
  "queuedTime" : 6,
  "_class" : "_class",
  "id" : "id"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Start a build for an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * returns QueueItemImpl
 **/
exports.postPipelineRuns = function(organization,pipeline) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "pipeline" : "pipeline",
  "expectedBuildNumber" : 0,
  "queuedTime" : 6,
  "_class" : "_class",
  "id" : "id"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Favorite/unfavorite a pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * body Body Set JSON string body to {"favorite": true} to favorite, set value to false to unfavorite
 * returns FavoriteImpl
 **/
exports.putPipelineFavorite = function(organization,pipeline,body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "item" : {
    "weatherScore" : 6,
    "latestRun" : "latestRun",
    "_links" : {
      "self" : {
        "_class" : "_class",
        "href" : "href"
      },
      "_class" : "_class",
      "runs" : {
        "_class" : "_class",
        "href" : "href"
      },
      "actions" : {
        "_class" : "_class",
        "href" : "href"
      },
      "queue" : {
        "_class" : "_class",
        "href" : "href"
      }
    },
    "displayName" : "displayName",
    "organization" : "organization",
    "estimatedDurationInMillis" : 0,
    "name" : "name",
    "fullName" : "fullName",
    "_class" : "_class"
  },
  "_links" : {
    "self" : {
      "_class" : "_class",
      "href" : "href"
    },
    "_class" : "_class"
  },
  "_class" : "_class"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Stop a build of an organization pipeline
 *
 * organization String Name of the organization
 * pipeline String Name of the pipeline
 * run String Name of the run
 * blocking String Set to true to make blocking stop, default: false (optional)
 * timeOutInSecs Integer Timeout in seconds, default: 10 seconds (optional)
 * returns PipelineRun
 **/
exports.putPipelineRun = function(organization,pipeline,run,blocking,timeOutInSecs) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "runSummary" : "runSummary",
  "durationInMillis" : 6,
  "commitId" : "commitId",
  "type" : "type",
  "pipeline" : "pipeline",
  "result" : "result",
  "organization" : "organization",
  "estimatedDurationInMillis" : 1,
  "enQueueTime" : "enQueueTime",
  "startTime" : "startTime",
  "_class" : "_class",
  "endTime" : "endTime",
  "id" : "id",
  "state" : "state",
  "artifacts" : [ {
    "size" : 0,
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  }, {
    "size" : 0,
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Search for any resource details
 *
 * q String Query string
 * returns String
 **/
exports.search = function(q) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get classes details
 *
 * q String Query string containing an array of class names
 * returns String
 **/
exports.searchClasses = function(q) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}

