'use strict';

exports.getComputer = function(args, res, next) {
  /**
   * Retrieve computer details
   *
   * returns hudsonmodelComputerSet
   **/
  var examples = {};
  examples['application/json'] = {
  "busyExecutors" : 0,
  "totalExecutors" : 4,
  "computer" : [ {
    "idle" : true,
    "displayName" : "aeiou",
    "jnlpAgent" : true,
    "launchSupported" : true,
    "icon" : "aeiou",
    "iconClassName" : "aeiou",
    "offlineCause" : "aeiou",
    "temporarilyOffline" : true,
    "numExecutors" : 1,
    "offline" : true,
    "executors" : [ {
      "currentExecutable" : {
        "queueId" : 5,
        "displayName" : "aeiou",
        "keepLog" : true,
        "description" : "aeiou",
        "fullDisplayName" : "aeiou",
        "estimatedDuration" : 5,
        "url" : "aeiou",
        "building" : true,
        "changeSet" : {
          "kind" : "aeiou",
          "_class" : "aeiou"
        },
        "duration" : 1,
        "result" : "aeiou",
        "number" : 6,
        "executor" : "aeiou",
        "builtOn" : "aeiou",
        "_class" : "aeiou",
        "id" : "aeiou",
        "actions" : [ {
          "causes" : [ {
            "_class" : "aeiou",
            "shortDescription" : "aeiou",
            "userName" : "aeiou",
            "userId" : "aeiou"
          } ],
          "_class" : "aeiou"
        } ],
        "timestamp" : 2
      },
      "number" : 7,
      "idle" : true,
      "likelyStuck" : true,
      "progress" : 9,
      "_class" : "aeiou"
    } ],
    "monitorData" : {
      "hudson.node_monitors.SwapSpaceMonitor" : {
        "totalSwapSpace" : 7,
        "availableSwapSpace" : 2,
        "_class" : "aeiou",
        "availablePhysicalMemory" : 3,
        "totalPhysicalMemory" : 4
      },
      "hudson.node_monitors.TemporarySpaceMonitor" : {
        "path" : "aeiou",
        "size" : 1,
        "_class" : "aeiou",
        "timestamp" : 1
      },
      "hudson.node_monitors.DiskSpaceMonitor" : "",
      "hudson.node_monitors.ArchitectureMonitor" : "aeiou",
      "_class" : "aeiou",
      "hudson.node_monitors.ResponseTimeMonitor" : {
        "average" : 6,
        "_class" : "aeiou",
        "timestamp" : 1
      },
      "hudson.node_monitors.ClockMonitor" : {
        "diff" : 7,
        "_class" : "aeiou"
      }
    },
    "_class" : "aeiou",
    "loadStatistics" : {
      "_class" : "aeiou"
    },
    "manualLaunchAllowed" : true,
    "offlineCauseReason" : "aeiou"
  } ],
  "displayName" : "aeiou",
  "_class" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getCrumb = function(args, res, next) {
  /**
   * Retrieve CSRF protection token
   *
   * returns hudsonsecuritycsrfDefaultCrumbIssuer
   **/
  var examples = {};
  examples['application/json'] = {
  "crumb" : "aeiou",
  "_class" : "aeiou",
  "crumbRequestField" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getJenkins = function(args, res, next) {
  /**
   * Retrieve Jenkins details
   *
   * returns hudsonmodelHudson
   **/
  var examples = {};
  examples['application/json'] = {
  "nodeName" : "aeiou",
  "assignedLabels" : [ {
    "_class" : "aeiou"
  } ],
  "jobs" : [ {
    "color" : "aeiou",
    "displayName" : "aeiou",
    "lastSuccessfulBuild" : "",
    "description" : "aeiou",
    "fullDisplayName" : "aeiou",
    "lastUnstableBuild" : "aeiou",
    "queueItem" : "aeiou",
    "buildable" : true,
    "firstBuild" : "",
    "lastFailedBuild" : "aeiou",
    "lastBuild" : "",
    "nextBuildNumber" : 9,
    "builds" : [ {
      "queueId" : 5,
      "displayName" : "aeiou",
      "keepLog" : true,
      "description" : "aeiou",
      "fullDisplayName" : "aeiou",
      "estimatedDuration" : 5,
      "url" : "aeiou",
      "building" : true,
      "changeSet" : {
        "kind" : "aeiou",
        "_class" : "aeiou"
      },
      "duration" : 1,
      "result" : "aeiou",
      "number" : 6,
      "executor" : "aeiou",
      "builtOn" : "aeiou",
      "_class" : "aeiou",
      "id" : "aeiou",
      "actions" : [ {
        "causes" : [ {
          "_class" : "aeiou",
          "shortDescription" : "aeiou",
          "userName" : "aeiou",
          "userId" : "aeiou"
        } ],
        "_class" : "aeiou"
      } ],
      "timestamp" : 2
    } ],
    "scm" : {
      "_class" : "aeiou"
    },
    "keepDependencies" : true,
    "displayNameOrNull" : "aeiou",
    "inQueue" : true,
    "lastCompletedBuild" : "",
    "fullName" : "aeiou",
    "healthReport" : [ {
      "score" : 7,
      "description" : "aeiou",
      "iconClassName" : "aeiou",
      "iconUrl" : "aeiou",
      "_class" : "aeiou"
    } ],
    "lastStableBuild" : "",
    "lastUnsuccessfulBuild" : "aeiou",
    "url" : "aeiou",
    "concurrentBuild" : true,
    "name" : "aeiou",
    "_class" : "aeiou",
    "actions" : [ {
      "_class" : "aeiou"
    } ]
  } ],
  "slaveAgentPort" : 3,
  "description" : "aeiou",
  "useCrumbs" : true,
  "nodeDescription" : "aeiou",
  "primaryView" : {
    "name" : "aeiou",
    "_class" : "aeiou",
    "url" : "aeiou"
  },
  "unlabeledLoad" : {
    "_class" : "aeiou"
  },
  "mode" : "aeiou",
  "numExecutors" : 0,
  "quietingDown" : true,
  "useSecurity" : true,
  "_class" : "aeiou",
  "views" : [ "" ]
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getJob = function(args, res, next) {
  /**
   * Retrieve job details
   *
   * name String Name of the job
   * returns hudsonmodelFreeStyleProject
   **/
  var examples = {};
  examples['application/json'] = {
  "color" : "aeiou",
  "displayName" : "aeiou",
  "lastSuccessfulBuild" : "",
  "description" : "aeiou",
  "fullDisplayName" : "aeiou",
  "lastUnstableBuild" : "aeiou",
  "queueItem" : "aeiou",
  "buildable" : true,
  "firstBuild" : "",
  "lastFailedBuild" : "aeiou",
  "lastBuild" : "",
  "nextBuildNumber" : 7,
  "builds" : [ {
    "queueId" : 5,
    "displayName" : "aeiou",
    "keepLog" : true,
    "description" : "aeiou",
    "fullDisplayName" : "aeiou",
    "estimatedDuration" : 1,
    "url" : "aeiou",
    "building" : true,
    "changeSet" : {
      "kind" : "aeiou",
      "_class" : "aeiou"
    },
    "duration" : 6,
    "result" : "aeiou",
    "number" : 0,
    "executor" : "aeiou",
    "builtOn" : "aeiou",
    "_class" : "aeiou",
    "id" : "aeiou",
    "actions" : [ {
      "causes" : [ {
        "_class" : "aeiou",
        "shortDescription" : "aeiou",
        "userName" : "aeiou",
        "userId" : "aeiou"
      } ],
      "_class" : "aeiou"
    } ],
    "timestamp" : 5
  } ],
  "scm" : {
    "_class" : "aeiou"
  },
  "keepDependencies" : true,
  "displayNameOrNull" : "aeiou",
  "inQueue" : true,
  "lastCompletedBuild" : "",
  "fullName" : "aeiou",
  "healthReport" : [ {
    "score" : 2,
    "description" : "aeiou",
    "iconClassName" : "aeiou",
    "iconUrl" : "aeiou",
    "_class" : "aeiou"
  } ],
  "lastStableBuild" : "",
  "lastUnsuccessfulBuild" : "aeiou",
  "url" : "aeiou",
  "concurrentBuild" : true,
  "name" : "aeiou",
  "_class" : "aeiou",
  "actions" : [ {
    "_class" : "aeiou"
  } ]
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getJobConfig = function(args, res, next) {
  /**
   * Retrieve job configuration
   *
   * name String Name of the job
   * returns String
   **/
  var examples = {};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getJobLastBuild = function(args, res, next) {
  /**
   * Retrieve job's last build details
   *
   * name String Name of the job
   * returns hudsonmodelFreeStyleBuild
   **/
  var examples = {};
  examples['application/json'] = {
  "queueId" : 5,
  "displayName" : "aeiou",
  "keepLog" : true,
  "description" : "aeiou",
  "fullDisplayName" : "aeiou",
  "estimatedDuration" : 1,
  "url" : "aeiou",
  "building" : true,
  "changeSet" : {
    "kind" : "aeiou",
    "_class" : "aeiou"
  },
  "duration" : 6,
  "result" : "aeiou",
  "number" : 0,
  "executor" : "aeiou",
  "builtOn" : "aeiou",
  "_class" : "aeiou",
  "id" : "aeiou",
  "actions" : [ {
    "causes" : [ {
      "_class" : "aeiou",
      "shortDescription" : "aeiou",
      "userName" : "aeiou",
      "userId" : "aeiou"
    } ],
    "_class" : "aeiou"
  } ],
  "timestamp" : 5
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getJobProgressiveText = function(args, res, next) {
  /**
   * Retrieve job's build progressive text output
   *
   * name String Name of the job
   * number String Build number
   * start String Starting point of progressive text output
   * no response value expected for this operation
   **/
  res.end();
}

exports.getQueue = function(args, res, next) {
  /**
   * Retrieve queue details
   *
   * returns hudsonmodelQueue
   **/
  var examples = {};
  examples['application/json'] = {
  "_class" : "aeiou",
  "items" : [ {
    "task" : {
      "color" : "aeiou",
      "displayName" : "aeiou",
      "lastSuccessfulBuild" : "",
      "description" : "aeiou",
      "fullDisplayName" : "aeiou",
      "lastUnstableBuild" : "aeiou",
      "queueItem" : "aeiou",
      "buildable" : true,
      "firstBuild" : "",
      "lastFailedBuild" : "aeiou",
      "lastBuild" : "",
      "nextBuildNumber" : 3,
      "builds" : [ {
        "queueId" : 2,
        "displayName" : "aeiou",
        "keepLog" : true,
        "description" : "aeiou",
        "fullDisplayName" : "aeiou",
        "estimatedDuration" : 5,
        "url" : "aeiou",
        "building" : true,
        "changeSet" : {
          "kind" : "aeiou",
          "_class" : "aeiou"
        },
        "duration" : 5,
        "result" : "aeiou",
        "number" : 1,
        "executor" : "aeiou",
        "builtOn" : "aeiou",
        "_class" : "aeiou",
        "id" : "aeiou",
        "actions" : [ "" ],
        "timestamp" : 7
      } ],
      "scm" : {
        "_class" : "aeiou"
      },
      "keepDependencies" : true,
      "displayNameOrNull" : "aeiou",
      "inQueue" : true,
      "lastCompletedBuild" : "",
      "fullName" : "aeiou",
      "healthReport" : [ {
        "score" : 9,
        "description" : "aeiou",
        "iconClassName" : "aeiou",
        "iconUrl" : "aeiou",
        "_class" : "aeiou"
      } ],
      "lastStableBuild" : "",
      "lastUnsuccessfulBuild" : "aeiou",
      "url" : "aeiou",
      "concurrentBuild" : true,
      "name" : "aeiou",
      "_class" : "aeiou",
      "actions" : [ {
        "_class" : "aeiou"
      } ]
    },
    "blocked" : true,
    "stuck" : true,
    "buildableStartMilliseconds" : 2,
    "why" : "aeiou",
    "_class" : "aeiou",
    "id" : 0,
    "buildable" : true,
    "params" : "aeiou",
    "actions" : [ {
      "causes" : [ {
        "_class" : "aeiou",
        "shortDescription" : "aeiou",
        "userName" : "aeiou",
        "userId" : "aeiou"
      } ],
      "_class" : "aeiou"
    } ],
    "url" : "aeiou",
    "inQueueSince" : 6
  } ]
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getQueueItem = function(args, res, next) {
  /**
   * Retrieve queued item details
   *
   * number String Queue number
   * returns hudsonmodelQueue
   **/
  var examples = {};
  examples['application/json'] = {
  "_class" : "aeiou",
  "items" : [ {
    "task" : {
      "color" : "aeiou",
      "displayName" : "aeiou",
      "lastSuccessfulBuild" : "",
      "description" : "aeiou",
      "fullDisplayName" : "aeiou",
      "lastUnstableBuild" : "aeiou",
      "queueItem" : "aeiou",
      "buildable" : true,
      "firstBuild" : "",
      "lastFailedBuild" : "aeiou",
      "lastBuild" : "",
      "nextBuildNumber" : 3,
      "builds" : [ {
        "queueId" : 2,
        "displayName" : "aeiou",
        "keepLog" : true,
        "description" : "aeiou",
        "fullDisplayName" : "aeiou",
        "estimatedDuration" : 5,
        "url" : "aeiou",
        "building" : true,
        "changeSet" : {
          "kind" : "aeiou",
          "_class" : "aeiou"
        },
        "duration" : 5,
        "result" : "aeiou",
        "number" : 1,
        "executor" : "aeiou",
        "builtOn" : "aeiou",
        "_class" : "aeiou",
        "id" : "aeiou",
        "actions" : [ "" ],
        "timestamp" : 7
      } ],
      "scm" : {
        "_class" : "aeiou"
      },
      "keepDependencies" : true,
      "displayNameOrNull" : "aeiou",
      "inQueue" : true,
      "lastCompletedBuild" : "",
      "fullName" : "aeiou",
      "healthReport" : [ {
        "score" : 9,
        "description" : "aeiou",
        "iconClassName" : "aeiou",
        "iconUrl" : "aeiou",
        "_class" : "aeiou"
      } ],
      "lastStableBuild" : "",
      "lastUnsuccessfulBuild" : "aeiou",
      "url" : "aeiou",
      "concurrentBuild" : true,
      "name" : "aeiou",
      "_class" : "aeiou",
      "actions" : [ {
        "_class" : "aeiou"
      } ]
    },
    "blocked" : true,
    "stuck" : true,
    "buildableStartMilliseconds" : 2,
    "why" : "aeiou",
    "_class" : "aeiou",
    "id" : 0,
    "buildable" : true,
    "params" : "aeiou",
    "actions" : [ {
      "causes" : [ {
        "_class" : "aeiou",
        "shortDescription" : "aeiou",
        "userName" : "aeiou",
        "userId" : "aeiou"
      } ],
      "_class" : "aeiou"
    } ],
    "url" : "aeiou",
    "inQueueSince" : 6
  } ]
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getView = function(args, res, next) {
  /**
   * Retrieve view details
   *
   * name String Name of the view
   * returns hudsonmodelListView
   **/
  var examples = {};
  examples['application/json'] = {
  "jobs" : [ {
    "color" : "aeiou",
    "displayName" : "aeiou",
    "lastSuccessfulBuild" : "",
    "description" : "aeiou",
    "fullDisplayName" : "aeiou",
    "lastUnstableBuild" : "aeiou",
    "queueItem" : "aeiou",
    "buildable" : true,
    "firstBuild" : "",
    "lastFailedBuild" : "aeiou",
    "lastBuild" : "",
    "nextBuildNumber" : 7,
    "builds" : [ {
      "queueId" : 5,
      "displayName" : "aeiou",
      "keepLog" : true,
      "description" : "aeiou",
      "fullDisplayName" : "aeiou",
      "estimatedDuration" : 1,
      "url" : "aeiou",
      "building" : true,
      "changeSet" : {
        "kind" : "aeiou",
        "_class" : "aeiou"
      },
      "duration" : 6,
      "result" : "aeiou",
      "number" : 0,
      "executor" : "aeiou",
      "builtOn" : "aeiou",
      "_class" : "aeiou",
      "id" : "aeiou",
      "actions" : [ {
        "causes" : [ {
          "_class" : "aeiou",
          "shortDescription" : "aeiou",
          "userName" : "aeiou",
          "userId" : "aeiou"
        } ],
        "_class" : "aeiou"
      } ],
      "timestamp" : 5
    } ],
    "scm" : {
      "_class" : "aeiou"
    },
    "keepDependencies" : true,
    "displayNameOrNull" : "aeiou",
    "inQueue" : true,
    "lastCompletedBuild" : "",
    "fullName" : "aeiou",
    "healthReport" : [ {
      "score" : 2,
      "description" : "aeiou",
      "iconClassName" : "aeiou",
      "iconUrl" : "aeiou",
      "_class" : "aeiou"
    } ],
    "lastStableBuild" : "",
    "lastUnsuccessfulBuild" : "aeiou",
    "url" : "aeiou",
    "concurrentBuild" : true,
    "name" : "aeiou",
    "_class" : "aeiou",
    "actions" : [ {
      "_class" : "aeiou"
    } ]
  } ],
  "name" : "aeiou",
  "description" : "aeiou",
  "_class" : "aeiou",
  "url" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.getViewConfig = function(args, res, next) {
  /**
   * Retrieve view configuration
   *
   * name String Name of the view
   * returns String
   **/
  var examples = {};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.headJenkins = function(args, res, next) {
  /**
   * Retrieve Jenkins headers
   *
   * no response value expected for this operation
   **/
  res.end();
}

exports.postCreateItem = function(args, res, next) {
  /**
   * Create a new job using job configuration, or copied from an existing job
   *
   * name String Name of the new job
   * from String Existing job to copy from (optional)
   * mode String Set to 'copy' for copying an existing job (optional)
   * body String Job configuration in config.xml format (optional)
   * jenkinsCrumb String CSRF protection token (optional)
   * contentType String Content type header application/xml (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postCreateView = function(args, res, next) {
  /**
   * Create a new view using view configuration
   *
   * name String Name of the new view
   * body String View configuration in config.xml format (optional)
   * jenkinsCrumb String CSRF protection token (optional)
   * contentType String Content type header application/xml (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postJobBuild = function(args, res, next) {
  /**
   * Build a job
   *
   * name String Name of the job
   * json String 
   * token String  (optional)
   * jenkinsCrumb String CSRF protection token (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postJobConfig = function(args, res, next) {
  /**
   * Update job configuration
   *
   * name String Name of the job
   * body String Job configuration in config.xml format
   * jenkinsCrumb String CSRF protection token (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postJobDelete = function(args, res, next) {
  /**
   * Delete a job
   *
   * name String Name of the job
   * jenkinsCrumb String CSRF protection token (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postJobDisable = function(args, res, next) {
  /**
   * Disable a job
   *
   * name String Name of the job
   * jenkinsCrumb String CSRF protection token (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postJobEnable = function(args, res, next) {
  /**
   * Enable a job
   *
   * name String Name of the job
   * jenkinsCrumb String CSRF protection token (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postJobLastBuildStop = function(args, res, next) {
  /**
   * Stop a job
   *
   * name String Name of the job
   * jenkinsCrumb String CSRF protection token (optional)
   * no response value expected for this operation
   **/
  res.end();
}

exports.postViewConfig = function(args, res, next) {
  /**
   * Update view configuration
   *
   * name String Name of the view
   * body String View configuration in config.xml format
   * jenkinsCrumb String CSRF protection token (optional)
   * no response value expected for this operation
   **/
  res.end();
}

