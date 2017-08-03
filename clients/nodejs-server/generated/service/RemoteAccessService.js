'use strict';


/**
 * Retrieve computer details
 *
 * depth Integer Recursion depth in response model
 * returns ComputerSet
 **/
exports.getComputer = function(depth) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "busyExecutors" : 0,
  "totalExecutors" : 1,
  "computer" : [ {
    "idle" : true,
    "displayName" : "displayName",
    "jnlpAgent" : true,
    "launchSupported" : true,
    "icon" : "icon",
    "iconClassName" : "iconClassName",
    "offlineCause" : "offlineCause",
    "temporarilyOffline" : true,
    "numExecutors" : 1,
    "offline" : true,
    "executors" : [ {
      "currentExecutable" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "number" : 6,
      "idle" : true,
      "likelyStuck" : true,
      "progress" : 1,
      "_class" : "_class"
    }, {
      "currentExecutable" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "number" : 6,
      "idle" : true,
      "likelyStuck" : true,
      "progress" : 1,
      "_class" : "_class"
    } ],
    "monitorData" : {
      "hudson.node_monitors.SwapSpaceMonitor" : {
        "totalSwapSpace" : 7,
        "availableSwapSpace" : 5,
        "_class" : "_class",
        "availablePhysicalMemory" : 5,
        "totalPhysicalMemory" : 2
      },
      "hudson.node_monitors.TemporarySpaceMonitor" : {
        "path" : "path",
        "size" : 3,
        "_class" : "_class",
        "timestamp" : 9
      },
      "hudson.node_monitors.DiskSpaceMonitor" : {
        "path" : "path",
        "size" : 3,
        "_class" : "_class",
        "timestamp" : 9
      },
      "hudson.node_monitors.ArchitectureMonitor" : "hudson.node_monitors.ArchitectureMonitor",
      "_class" : "_class",
      "hudson.node_monitors.ResponseTimeMonitor" : {
        "average" : 4,
        "_class" : "_class",
        "timestamp" : 2
      },
      "hudson.node_monitors.ClockMonitor" : {
        "diff" : 7,
        "_class" : "_class"
      }
    },
    "_class" : "_class",
    "loadStatistics" : {
      "_class" : "_class"
    },
    "manualLaunchAllowed" : true,
    "offlineCauseReason" : "offlineCauseReason"
  }, {
    "idle" : true,
    "displayName" : "displayName",
    "jnlpAgent" : true,
    "launchSupported" : true,
    "icon" : "icon",
    "iconClassName" : "iconClassName",
    "offlineCause" : "offlineCause",
    "temporarilyOffline" : true,
    "numExecutors" : 1,
    "offline" : true,
    "executors" : [ {
      "currentExecutable" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "number" : 6,
      "idle" : true,
      "likelyStuck" : true,
      "progress" : 1,
      "_class" : "_class"
    }, {
      "currentExecutable" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "number" : 6,
      "idle" : true,
      "likelyStuck" : true,
      "progress" : 1,
      "_class" : "_class"
    } ],
    "monitorData" : {
      "hudson.node_monitors.SwapSpaceMonitor" : {
        "totalSwapSpace" : 7,
        "availableSwapSpace" : 5,
        "_class" : "_class",
        "availablePhysicalMemory" : 5,
        "totalPhysicalMemory" : 2
      },
      "hudson.node_monitors.TemporarySpaceMonitor" : {
        "path" : "path",
        "size" : 3,
        "_class" : "_class",
        "timestamp" : 9
      },
      "hudson.node_monitors.DiskSpaceMonitor" : {
        "path" : "path",
        "size" : 3,
        "_class" : "_class",
        "timestamp" : 9
      },
      "hudson.node_monitors.ArchitectureMonitor" : "hudson.node_monitors.ArchitectureMonitor",
      "_class" : "_class",
      "hudson.node_monitors.ResponseTimeMonitor" : {
        "average" : 4,
        "_class" : "_class",
        "timestamp" : 2
      },
      "hudson.node_monitors.ClockMonitor" : {
        "diff" : 7,
        "_class" : "_class"
      }
    },
    "_class" : "_class",
    "loadStatistics" : {
      "_class" : "_class"
    },
    "manualLaunchAllowed" : true,
    "offlineCauseReason" : "offlineCauseReason"
  } ],
  "displayName" : "displayName",
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
 * Retrieve CSRF protection token
 *
 * returns DefaultCrumbIssuer
 **/
exports.getCrumb = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "crumb" : "crumb",
  "_class" : "_class",
  "crumbRequestField" : "crumbRequestField"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve Jenkins details
 *
 * returns Hudson
 **/
exports.getJenkins = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "nodeName" : "nodeName",
  "assignedLabels" : [ {
    "_class" : "_class"
  }, {
    "_class" : "_class"
  } ],
  "jobs" : [ {
    "color" : "color",
    "displayName" : "displayName",
    "lastSuccessfulBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "lastUnstableBuild" : "lastUnstableBuild",
    "queueItem" : "queueItem",
    "buildable" : true,
    "firstBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastFailedBuild" : "lastFailedBuild",
    "lastBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "nextBuildNumber" : 9,
    "builds" : [ {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    }, {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    } ],
    "scm" : {
      "_class" : "_class"
    },
    "keepDependencies" : true,
    "displayNameOrNull" : "displayNameOrNull",
    "inQueue" : true,
    "lastCompletedBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "fullName" : "fullName",
    "healthReport" : [ {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    }, {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    } ],
    "lastStableBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
    "url" : "url",
    "concurrentBuild" : true,
    "name" : "name",
    "_class" : "_class",
    "actions" : [ {
      "_class" : "_class"
    }, {
      "_class" : "_class"
    } ]
  }, {
    "color" : "color",
    "displayName" : "displayName",
    "lastSuccessfulBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "lastUnstableBuild" : "lastUnstableBuild",
    "queueItem" : "queueItem",
    "buildable" : true,
    "firstBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastFailedBuild" : "lastFailedBuild",
    "lastBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "nextBuildNumber" : 9,
    "builds" : [ {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    }, {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    } ],
    "scm" : {
      "_class" : "_class"
    },
    "keepDependencies" : true,
    "displayNameOrNull" : "displayNameOrNull",
    "inQueue" : true,
    "lastCompletedBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "fullName" : "fullName",
    "healthReport" : [ {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    }, {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    } ],
    "lastStableBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
    "url" : "url",
    "concurrentBuild" : true,
    "name" : "name",
    "_class" : "_class",
    "actions" : [ {
      "_class" : "_class"
    }, {
      "_class" : "_class"
    } ]
  } ],
  "slaveAgentPort" : 3,
  "description" : "description",
  "useCrumbs" : true,
  "nodeDescription" : "nodeDescription",
  "primaryView" : {
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  },
  "unlabeledLoad" : {
    "_class" : "_class"
  },
  "mode" : "mode",
  "numExecutors" : 0,
  "quietingDown" : true,
  "useSecurity" : true,
  "_class" : "_class",
  "views" : [ {
    "name" : "name",
    "_class" : "_class",
    "url" : "url"
  }, {
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
 * Retrieve job details
 *
 * name String Name of the job
 * returns FreeStyleProject
 **/
exports.getJob = function(name) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "color" : "color",
  "displayName" : "displayName",
  "lastSuccessfulBuild" : {
    "queueId" : 5,
    "displayName" : "displayName",
    "keepLog" : true,
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "estimatedDuration" : 5,
    "url" : "url",
    "building" : true,
    "changeSet" : {
      "kind" : "kind",
      "_class" : "_class"
    },
    "duration" : 1,
    "result" : "result",
    "number" : 6,
    "executor" : "executor",
    "builtOn" : "builtOn",
    "_class" : "_class",
    "id" : "id",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "timestamp" : 2
  },
  "description" : "description",
  "fullDisplayName" : "fullDisplayName",
  "lastUnstableBuild" : "lastUnstableBuild",
  "queueItem" : "queueItem",
  "buildable" : true,
  "firstBuild" : {
    "queueId" : 5,
    "displayName" : "displayName",
    "keepLog" : true,
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "estimatedDuration" : 5,
    "url" : "url",
    "building" : true,
    "changeSet" : {
      "kind" : "kind",
      "_class" : "_class"
    },
    "duration" : 1,
    "result" : "result",
    "number" : 6,
    "executor" : "executor",
    "builtOn" : "builtOn",
    "_class" : "_class",
    "id" : "id",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "timestamp" : 2
  },
  "lastFailedBuild" : "lastFailedBuild",
  "lastBuild" : {
    "queueId" : 5,
    "displayName" : "displayName",
    "keepLog" : true,
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "estimatedDuration" : 5,
    "url" : "url",
    "building" : true,
    "changeSet" : {
      "kind" : "kind",
      "_class" : "_class"
    },
    "duration" : 1,
    "result" : "result",
    "number" : 6,
    "executor" : "executor",
    "builtOn" : "builtOn",
    "_class" : "_class",
    "id" : "id",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "timestamp" : 2
  },
  "nextBuildNumber" : 9,
  "builds" : [ {
    "queueId" : 5,
    "displayName" : "displayName",
    "keepLog" : true,
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "estimatedDuration" : 5,
    "url" : "url",
    "building" : true,
    "changeSet" : {
      "kind" : "kind",
      "_class" : "_class"
    },
    "duration" : 1,
    "result" : "result",
    "number" : 6,
    "executor" : "executor",
    "builtOn" : "builtOn",
    "_class" : "_class",
    "id" : "id",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "timestamp" : 2
  }, {
    "queueId" : 5,
    "displayName" : "displayName",
    "keepLog" : true,
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "estimatedDuration" : 5,
    "url" : "url",
    "building" : true,
    "changeSet" : {
      "kind" : "kind",
      "_class" : "_class"
    },
    "duration" : 1,
    "result" : "result",
    "number" : 6,
    "executor" : "executor",
    "builtOn" : "builtOn",
    "_class" : "_class",
    "id" : "id",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "timestamp" : 2
  } ],
  "scm" : {
    "_class" : "_class"
  },
  "keepDependencies" : true,
  "displayNameOrNull" : "displayNameOrNull",
  "inQueue" : true,
  "lastCompletedBuild" : {
    "queueId" : 5,
    "displayName" : "displayName",
    "keepLog" : true,
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "estimatedDuration" : 5,
    "url" : "url",
    "building" : true,
    "changeSet" : {
      "kind" : "kind",
      "_class" : "_class"
    },
    "duration" : 1,
    "result" : "result",
    "number" : 6,
    "executor" : "executor",
    "builtOn" : "builtOn",
    "_class" : "_class",
    "id" : "id",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "timestamp" : 2
  },
  "fullName" : "fullName",
  "healthReport" : [ {
    "score" : 7,
    "description" : "description",
    "iconClassName" : "iconClassName",
    "iconUrl" : "iconUrl",
    "_class" : "_class"
  }, {
    "score" : 7,
    "description" : "description",
    "iconClassName" : "iconClassName",
    "iconUrl" : "iconUrl",
    "_class" : "_class"
  } ],
  "lastStableBuild" : {
    "queueId" : 5,
    "displayName" : "displayName",
    "keepLog" : true,
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "estimatedDuration" : 5,
    "url" : "url",
    "building" : true,
    "changeSet" : {
      "kind" : "kind",
      "_class" : "_class"
    },
    "duration" : 1,
    "result" : "result",
    "number" : 6,
    "executor" : "executor",
    "builtOn" : "builtOn",
    "_class" : "_class",
    "id" : "id",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "timestamp" : 2
  },
  "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
  "url" : "url",
  "concurrentBuild" : true,
  "name" : "name",
  "_class" : "_class",
  "actions" : [ {
    "_class" : "_class"
  }, {
    "_class" : "_class"
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
 * Retrieve job configuration
 *
 * name String Name of the job
 * returns String
 **/
exports.getJobConfig = function(name) {
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
 * Retrieve job's last build details
 *
 * name String Name of the job
 * returns FreeStyleBuild
 **/
exports.getJobLastBuild = function(name) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "queueId" : 5,
  "displayName" : "displayName",
  "keepLog" : true,
  "description" : "description",
  "fullDisplayName" : "fullDisplayName",
  "estimatedDuration" : 5,
  "url" : "url",
  "building" : true,
  "changeSet" : {
    "kind" : "kind",
    "_class" : "_class"
  },
  "duration" : 1,
  "result" : "result",
  "number" : 6,
  "executor" : "executor",
  "builtOn" : "builtOn",
  "_class" : "_class",
  "id" : "id",
  "actions" : [ {
    "causes" : [ {
      "_class" : "_class",
      "shortDescription" : "shortDescription",
      "userName" : "userName",
      "userId" : "userId"
    }, {
      "_class" : "_class",
      "shortDescription" : "shortDescription",
      "userName" : "userName",
      "userId" : "userId"
    } ],
    "_class" : "_class"
  }, {
    "causes" : [ {
      "_class" : "_class",
      "shortDescription" : "shortDescription",
      "userName" : "userName",
      "userId" : "userId"
    }, {
      "_class" : "_class",
      "shortDescription" : "shortDescription",
      "userName" : "userName",
      "userId" : "userId"
    } ],
    "_class" : "_class"
  } ],
  "timestamp" : 2
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve job's build progressive text output
 *
 * name String Name of the job
 * number String Build number
 * start String Starting point of progressive text output
 * no response value expected for this operation
 **/
exports.getJobProgressiveText = function(name,number,start) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Retrieve queue details
 *
 * returns Queue
 **/
exports.getQueue = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "_class" : "_class",
  "items" : [ {
    "task" : {
      "color" : "color",
      "displayName" : "displayName",
      "lastSuccessfulBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "lastUnstableBuild" : "lastUnstableBuild",
      "queueItem" : "queueItem",
      "buildable" : true,
      "firstBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastFailedBuild" : "lastFailedBuild",
      "lastBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "nextBuildNumber" : 9,
      "builds" : [ {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      }, {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      } ],
      "scm" : {
        "_class" : "_class"
      },
      "keepDependencies" : true,
      "displayNameOrNull" : "displayNameOrNull",
      "inQueue" : true,
      "lastCompletedBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "fullName" : "fullName",
      "healthReport" : [ {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      }, {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      } ],
      "lastStableBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
      "url" : "url",
      "concurrentBuild" : true,
      "name" : "name",
      "_class" : "_class",
      "actions" : [ {
        "_class" : "_class"
      }, {
        "_class" : "_class"
      } ]
    },
    "blocked" : true,
    "stuck" : true,
    "buildableStartMilliseconds" : 1,
    "why" : "why",
    "_class" : "_class",
    "id" : 0,
    "buildable" : true,
    "params" : "params",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "url" : "url",
    "inQueueSince" : 6
  }, {
    "task" : {
      "color" : "color",
      "displayName" : "displayName",
      "lastSuccessfulBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "lastUnstableBuild" : "lastUnstableBuild",
      "queueItem" : "queueItem",
      "buildable" : true,
      "firstBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastFailedBuild" : "lastFailedBuild",
      "lastBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "nextBuildNumber" : 9,
      "builds" : [ {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      }, {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      } ],
      "scm" : {
        "_class" : "_class"
      },
      "keepDependencies" : true,
      "displayNameOrNull" : "displayNameOrNull",
      "inQueue" : true,
      "lastCompletedBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "fullName" : "fullName",
      "healthReport" : [ {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      }, {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      } ],
      "lastStableBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
      "url" : "url",
      "concurrentBuild" : true,
      "name" : "name",
      "_class" : "_class",
      "actions" : [ {
        "_class" : "_class"
      }, {
        "_class" : "_class"
      } ]
    },
    "blocked" : true,
    "stuck" : true,
    "buildableStartMilliseconds" : 1,
    "why" : "why",
    "_class" : "_class",
    "id" : 0,
    "buildable" : true,
    "params" : "params",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "url" : "url",
    "inQueueSince" : 6
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
 * Retrieve queued item details
 *
 * number String Queue number
 * returns Queue
 **/
exports.getQueueItem = function(number) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "_class" : "_class",
  "items" : [ {
    "task" : {
      "color" : "color",
      "displayName" : "displayName",
      "lastSuccessfulBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "lastUnstableBuild" : "lastUnstableBuild",
      "queueItem" : "queueItem",
      "buildable" : true,
      "firstBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastFailedBuild" : "lastFailedBuild",
      "lastBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "nextBuildNumber" : 9,
      "builds" : [ {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      }, {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      } ],
      "scm" : {
        "_class" : "_class"
      },
      "keepDependencies" : true,
      "displayNameOrNull" : "displayNameOrNull",
      "inQueue" : true,
      "lastCompletedBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "fullName" : "fullName",
      "healthReport" : [ {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      }, {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      } ],
      "lastStableBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
      "url" : "url",
      "concurrentBuild" : true,
      "name" : "name",
      "_class" : "_class",
      "actions" : [ {
        "_class" : "_class"
      }, {
        "_class" : "_class"
      } ]
    },
    "blocked" : true,
    "stuck" : true,
    "buildableStartMilliseconds" : 1,
    "why" : "why",
    "_class" : "_class",
    "id" : 0,
    "buildable" : true,
    "params" : "params",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "url" : "url",
    "inQueueSince" : 6
  }, {
    "task" : {
      "color" : "color",
      "displayName" : "displayName",
      "lastSuccessfulBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "lastUnstableBuild" : "lastUnstableBuild",
      "queueItem" : "queueItem",
      "buildable" : true,
      "firstBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastFailedBuild" : "lastFailedBuild",
      "lastBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "nextBuildNumber" : 9,
      "builds" : [ {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      }, {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      } ],
      "scm" : {
        "_class" : "_class"
      },
      "keepDependencies" : true,
      "displayNameOrNull" : "displayNameOrNull",
      "inQueue" : true,
      "lastCompletedBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "fullName" : "fullName",
      "healthReport" : [ {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      }, {
        "score" : 7,
        "description" : "description",
        "iconClassName" : "iconClassName",
        "iconUrl" : "iconUrl",
        "_class" : "_class"
      } ],
      "lastStableBuild" : {
        "queueId" : 5,
        "displayName" : "displayName",
        "keepLog" : true,
        "description" : "description",
        "fullDisplayName" : "fullDisplayName",
        "estimatedDuration" : 5,
        "url" : "url",
        "building" : true,
        "changeSet" : {
          "kind" : "kind",
          "_class" : "_class"
        },
        "duration" : 1,
        "result" : "result",
        "number" : 6,
        "executor" : "executor",
        "builtOn" : "builtOn",
        "_class" : "_class",
        "id" : "id",
        "actions" : [ {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        }, {
          "causes" : [ {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          }, {
            "_class" : "_class",
            "shortDescription" : "shortDescription",
            "userName" : "userName",
            "userId" : "userId"
          } ],
          "_class" : "_class"
        } ],
        "timestamp" : 2
      },
      "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
      "url" : "url",
      "concurrentBuild" : true,
      "name" : "name",
      "_class" : "_class",
      "actions" : [ {
        "_class" : "_class"
      }, {
        "_class" : "_class"
      } ]
    },
    "blocked" : true,
    "stuck" : true,
    "buildableStartMilliseconds" : 1,
    "why" : "why",
    "_class" : "_class",
    "id" : 0,
    "buildable" : true,
    "params" : "params",
    "actions" : [ {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    }, {
      "causes" : [ {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      }, {
        "_class" : "_class",
        "shortDescription" : "shortDescription",
        "userName" : "userName",
        "userId" : "userId"
      } ],
      "_class" : "_class"
    } ],
    "url" : "url",
    "inQueueSince" : 6
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
 * Retrieve view details
 *
 * name String Name of the view
 * returns ListView
 **/
exports.getView = function(name) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "jobs" : [ {
    "color" : "color",
    "displayName" : "displayName",
    "lastSuccessfulBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "lastUnstableBuild" : "lastUnstableBuild",
    "queueItem" : "queueItem",
    "buildable" : true,
    "firstBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastFailedBuild" : "lastFailedBuild",
    "lastBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "nextBuildNumber" : 9,
    "builds" : [ {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    }, {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    } ],
    "scm" : {
      "_class" : "_class"
    },
    "keepDependencies" : true,
    "displayNameOrNull" : "displayNameOrNull",
    "inQueue" : true,
    "lastCompletedBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "fullName" : "fullName",
    "healthReport" : [ {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    }, {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    } ],
    "lastStableBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
    "url" : "url",
    "concurrentBuild" : true,
    "name" : "name",
    "_class" : "_class",
    "actions" : [ {
      "_class" : "_class"
    }, {
      "_class" : "_class"
    } ]
  }, {
    "color" : "color",
    "displayName" : "displayName",
    "lastSuccessfulBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "description" : "description",
    "fullDisplayName" : "fullDisplayName",
    "lastUnstableBuild" : "lastUnstableBuild",
    "queueItem" : "queueItem",
    "buildable" : true,
    "firstBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastFailedBuild" : "lastFailedBuild",
    "lastBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "nextBuildNumber" : 9,
    "builds" : [ {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    }, {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    } ],
    "scm" : {
      "_class" : "_class"
    },
    "keepDependencies" : true,
    "displayNameOrNull" : "displayNameOrNull",
    "inQueue" : true,
    "lastCompletedBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "fullName" : "fullName",
    "healthReport" : [ {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    }, {
      "score" : 7,
      "description" : "description",
      "iconClassName" : "iconClassName",
      "iconUrl" : "iconUrl",
      "_class" : "_class"
    } ],
    "lastStableBuild" : {
      "queueId" : 5,
      "displayName" : "displayName",
      "keepLog" : true,
      "description" : "description",
      "fullDisplayName" : "fullDisplayName",
      "estimatedDuration" : 5,
      "url" : "url",
      "building" : true,
      "changeSet" : {
        "kind" : "kind",
        "_class" : "_class"
      },
      "duration" : 1,
      "result" : "result",
      "number" : 6,
      "executor" : "executor",
      "builtOn" : "builtOn",
      "_class" : "_class",
      "id" : "id",
      "actions" : [ {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      }, {
        "causes" : [ {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        }, {
          "_class" : "_class",
          "shortDescription" : "shortDescription",
          "userName" : "userName",
          "userId" : "userId"
        } ],
        "_class" : "_class"
      } ],
      "timestamp" : 2
    },
    "lastUnsuccessfulBuild" : "lastUnsuccessfulBuild",
    "url" : "url",
    "concurrentBuild" : true,
    "name" : "name",
    "_class" : "_class",
    "actions" : [ {
      "_class" : "_class"
    }, {
      "_class" : "_class"
    } ]
  } ],
  "name" : "name",
  "description" : "description",
  "_class" : "_class",
  "url" : "url"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Retrieve view configuration
 *
 * name String Name of the view
 * returns String
 **/
exports.getViewConfig = function(name) {
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
 * Retrieve Jenkins headers
 *
 * no response value expected for this operation
 **/
exports.headJenkins = function() {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


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
exports.postCreateItem = function(name,from,mode,body,jenkinsCrumb,contentType) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Create a new view using view configuration
 *
 * name String Name of the new view
 * body String View configuration in config.xml format (optional)
 * jenkinsCrumb String CSRF protection token (optional)
 * contentType String Content type header application/xml (optional)
 * no response value expected for this operation
 **/
exports.postCreateView = function(name,body,jenkinsCrumb,contentType) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Build a job
 *
 * name String Name of the job
 * json String 
 * token String  (optional)
 * jenkinsCrumb String CSRF protection token (optional)
 * no response value expected for this operation
 **/
exports.postJobBuild = function(name,json,token,jenkinsCrumb) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Update job configuration
 *
 * name String Name of the job
 * body String Job configuration in config.xml format
 * jenkinsCrumb String CSRF protection token (optional)
 * no response value expected for this operation
 **/
exports.postJobConfig = function(name,body,jenkinsCrumb) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Delete a job
 *
 * name String Name of the job
 * jenkinsCrumb String CSRF protection token (optional)
 * no response value expected for this operation
 **/
exports.postJobDelete = function(name,jenkinsCrumb) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Disable a job
 *
 * name String Name of the job
 * jenkinsCrumb String CSRF protection token (optional)
 * no response value expected for this operation
 **/
exports.postJobDisable = function(name,jenkinsCrumb) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Enable a job
 *
 * name String Name of the job
 * jenkinsCrumb String CSRF protection token (optional)
 * no response value expected for this operation
 **/
exports.postJobEnable = function(name,jenkinsCrumb) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Stop a job
 *
 * name String Name of the job
 * jenkinsCrumb String CSRF protection token (optional)
 * no response value expected for this operation
 **/
exports.postJobLastBuildStop = function(name,jenkinsCrumb) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Update view configuration
 *
 * name String Name of the view
 * body String View configuration in config.xml format
 * jenkinsCrumb String CSRF protection token (optional)
 * no response value expected for this operation
 **/
exports.postViewConfig = function(name,body,jenkinsCrumb) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}

