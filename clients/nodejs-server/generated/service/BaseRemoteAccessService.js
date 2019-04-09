'use strict';


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

