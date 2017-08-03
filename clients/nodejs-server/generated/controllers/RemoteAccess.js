'use strict';

var utils = require('../utils/writer.js');
var RemoteAccess = require('../service/RemoteAccessService');

module.exports.getComputer = function getComputer (req, res, next) {
  var depth = req.swagger.params['depth'].value;
  RemoteAccess.getComputer(depth)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getCrumb = function getCrumb (req, res, next) {
  RemoteAccess.getCrumb()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getJenkins = function getJenkins (req, res, next) {
  RemoteAccess.getJenkins()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getJob = function getJob (req, res, next) {
  var name = req.swagger.params['name'].value;
  RemoteAccess.getJob(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getJobConfig = function getJobConfig (req, res, next) {
  var name = req.swagger.params['name'].value;
  RemoteAccess.getJobConfig(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getJobLastBuild = function getJobLastBuild (req, res, next) {
  var name = req.swagger.params['name'].value;
  RemoteAccess.getJobLastBuild(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getJobProgressiveText = function getJobProgressiveText (req, res, next) {
  var name = req.swagger.params['name'].value;
  var number = req.swagger.params['number'].value;
  var start = req.swagger.params['start'].value;
  RemoteAccess.getJobProgressiveText(name,number,start)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQueue = function getQueue (req, res, next) {
  RemoteAccess.getQueue()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQueueItem = function getQueueItem (req, res, next) {
  var number = req.swagger.params['number'].value;
  RemoteAccess.getQueueItem(number)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getView = function getView (req, res, next) {
  var name = req.swagger.params['name'].value;
  RemoteAccess.getView(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getViewConfig = function getViewConfig (req, res, next) {
  var name = req.swagger.params['name'].value;
  RemoteAccess.getViewConfig(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.headJenkins = function headJenkins (req, res, next) {
  RemoteAccess.headJenkins()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postCreateItem = function postCreateItem (req, res, next) {
  var name = req.swagger.params['name'].value;
  var from = req.swagger.params['from'].value;
  var mode = req.swagger.params['mode'].value;
  var body = req.swagger.params['body'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  var contentType = req.swagger.params['Content-Type'].value;
  RemoteAccess.postCreateItem(name,from,mode,body,jenkinsCrumb,contentType)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postCreateView = function postCreateView (req, res, next) {
  var name = req.swagger.params['name'].value;
  var body = req.swagger.params['body'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  var contentType = req.swagger.params['Content-Type'].value;
  RemoteAccess.postCreateView(name,body,jenkinsCrumb,contentType)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postJobBuild = function postJobBuild (req, res, next) {
  var name = req.swagger.params['name'].value;
  var json = req.swagger.params['json'].value;
  var token = req.swagger.params['token'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  RemoteAccess.postJobBuild(name,json,token,jenkinsCrumb)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postJobConfig = function postJobConfig (req, res, next) {
  var name = req.swagger.params['name'].value;
  var body = req.swagger.params['body'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  RemoteAccess.postJobConfig(name,body,jenkinsCrumb)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postJobDelete = function postJobDelete (req, res, next) {
  var name = req.swagger.params['name'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  RemoteAccess.postJobDelete(name,jenkinsCrumb)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postJobDisable = function postJobDisable (req, res, next) {
  var name = req.swagger.params['name'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  RemoteAccess.postJobDisable(name,jenkinsCrumb)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postJobEnable = function postJobEnable (req, res, next) {
  var name = req.swagger.params['name'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  RemoteAccess.postJobEnable(name,jenkinsCrumb)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postJobLastBuildStop = function postJobLastBuildStop (req, res, next) {
  var name = req.swagger.params['name'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  RemoteAccess.postJobLastBuildStop(name,jenkinsCrumb)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postViewConfig = function postViewConfig (req, res, next) {
  var name = req.swagger.params['name'].value;
  var body = req.swagger.params['body'].value;
  var jenkinsCrumb = req.swagger.params['Jenkins-Crumb'].value;
  RemoteAccess.postViewConfig(name,body,jenkinsCrumb)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
