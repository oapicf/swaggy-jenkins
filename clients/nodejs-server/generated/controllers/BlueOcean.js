'use strict';

var utils = require('../utils/writer.js');
var BlueOcean = require('../service/BlueOceanService');

module.exports.deletePipelineQueueItem = function deletePipelineQueueItem (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var queue = req.swagger.params['queue'].value;
  BlueOcean.deletePipelineQueueItem(organization,pipeline,queue)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getAuthenticatedUser = function getAuthenticatedUser (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  BlueOcean.getAuthenticatedUser(organization)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getClasses = function getClasses (req, res, next) {
  var _class = req.swagger.params['class'].value;
  BlueOcean.getClasses(_class)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getJsonWebKey = function getJsonWebKey (req, res, next) {
  var key = req.swagger.params['key'].value;
  BlueOcean.getJsonWebKey(key)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getJsonWebToken = function getJsonWebToken (req, res, next) {
  var expiryTimeInMins = req.swagger.params['expiryTimeInMins'].value;
  var maxExpiryTimeInMins = req.swagger.params['maxExpiryTimeInMins'].value;
  BlueOcean.getJsonWebToken(expiryTimeInMins,maxExpiryTimeInMins)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getOrganisation = function getOrganisation (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  BlueOcean.getOrganisation(organization)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getOrganisations = function getOrganisations (req, res, next) {
  BlueOcean.getOrganisations()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipeline = function getPipeline (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  BlueOcean.getPipeline(organization,pipeline)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineActivities = function getPipelineActivities (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  BlueOcean.getPipelineActivities(organization,pipeline)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineBranch = function getPipelineBranch (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var branch = req.swagger.params['branch'].value;
  BlueOcean.getPipelineBranch(organization,pipeline,branch)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineBranchRun = function getPipelineBranchRun (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var branch = req.swagger.params['branch'].value;
  var run = req.swagger.params['run'].value;
  BlueOcean.getPipelineBranchRun(organization,pipeline,branch,run)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineBranches = function getPipelineBranches (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  BlueOcean.getPipelineBranches(organization,pipeline)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineFolder = function getPipelineFolder (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var folder = req.swagger.params['folder'].value;
  BlueOcean.getPipelineFolder(organization,folder)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineFolderPipeline = function getPipelineFolderPipeline (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var folder = req.swagger.params['folder'].value;
  BlueOcean.getPipelineFolderPipeline(organization,pipeline,folder)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineQueue = function getPipelineQueue (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  BlueOcean.getPipelineQueue(organization,pipeline)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRun = function getPipelineRun (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  BlueOcean.getPipelineRun(organization,pipeline,run)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRunLog = function getPipelineRunLog (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  var start = req.swagger.params['start'].value;
  var download = req.swagger.params['download'].value;
  BlueOcean.getPipelineRunLog(organization,pipeline,run,start,download)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRunNode = function getPipelineRunNode (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  var node = req.swagger.params['node'].value;
  BlueOcean.getPipelineRunNode(organization,pipeline,run,node)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRunNodeStep = function getPipelineRunNodeStep (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  var node = req.swagger.params['node'].value;
  var step = req.swagger.params['step'].value;
  BlueOcean.getPipelineRunNodeStep(organization,pipeline,run,node,step)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRunNodeStepLog = function getPipelineRunNodeStepLog (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  var node = req.swagger.params['node'].value;
  var step = req.swagger.params['step'].value;
  BlueOcean.getPipelineRunNodeStepLog(organization,pipeline,run,node,step)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRunNodeSteps = function getPipelineRunNodeSteps (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  var node = req.swagger.params['node'].value;
  BlueOcean.getPipelineRunNodeSteps(organization,pipeline,run,node)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRunNodes = function getPipelineRunNodes (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  BlueOcean.getPipelineRunNodes(organization,pipeline,run)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelineRuns = function getPipelineRuns (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  BlueOcean.getPipelineRuns(organization,pipeline)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getPipelines = function getPipelines (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  BlueOcean.getPipelines(organization)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSCM = function getSCM (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var scm = req.swagger.params['scm'].value;
  BlueOcean.getSCM(organization,scm)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSCMOrganisationRepositories = function getSCMOrganisationRepositories (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var scm = req.swagger.params['scm'].value;
  var scmOrganisation = req.swagger.params['scmOrganisation'].value;
  var credentialId = req.swagger.params['credentialId'].value;
  var pageSize = req.swagger.params['pageSize'].value;
  var pageNumber = req.swagger.params['pageNumber'].value;
  BlueOcean.getSCMOrganisationRepositories(organization,scm,scmOrganisation,credentialId,pageSize,pageNumber)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSCMOrganisationRepository = function getSCMOrganisationRepository (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var scm = req.swagger.params['scm'].value;
  var scmOrganisation = req.swagger.params['scmOrganisation'].value;
  var repository = req.swagger.params['repository'].value;
  var credentialId = req.swagger.params['credentialId'].value;
  BlueOcean.getSCMOrganisationRepository(organization,scm,scmOrganisation,repository,credentialId)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSCMOrganisations = function getSCMOrganisations (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var scm = req.swagger.params['scm'].value;
  var credentialId = req.swagger.params['credentialId'].value;
  BlueOcean.getSCMOrganisations(organization,scm,credentialId)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getUser = function getUser (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var user = req.swagger.params['user'].value;
  BlueOcean.getUser(organization,user)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getUserFavorites = function getUserFavorites (req, res, next) {
  var user = req.swagger.params['user'].value;
  BlueOcean.getUserFavorites(user)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getUsers = function getUsers (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  BlueOcean.getUsers(organization)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postPipelineRun = function postPipelineRun (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  BlueOcean.postPipelineRun(organization,pipeline,run)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postPipelineRuns = function postPipelineRuns (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  BlueOcean.postPipelineRuns(organization,pipeline)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putPipelineFavorite = function putPipelineFavorite (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var body = req.swagger.params['Body'].value;
  BlueOcean.putPipelineFavorite(organization,pipeline,body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putPipelineRun = function putPipelineRun (req, res, next) {
  var organization = req.swagger.params['organization'].value;
  var pipeline = req.swagger.params['pipeline'].value;
  var run = req.swagger.params['run'].value;
  var blocking = req.swagger.params['blocking'].value;
  var timeOutInSecs = req.swagger.params['timeOutInSecs'].value;
  BlueOcean.putPipelineRun(organization,pipeline,run,blocking,timeOutInSecs)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.search = function search (req, res, next) {
  var q = req.swagger.params['q'].value;
  BlueOcean.search(q)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.searchClasses = function searchClasses (req, res, next) {
  var q = req.swagger.params['q'].value;
  BlueOcean.searchClasses(q)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
