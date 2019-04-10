/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 3.2.1-SNAPSHOT
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/ExtensionClassImpl'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./ExtensionClassImpl'));
  } else {
    // Browser globals (root is window)
    if (!root.SwaggyJenkins) {
      root.SwaggyJenkins = {};
    }
    root.SwaggyJenkins.ExtensionClassContainerImpl1map = factory(root.SwaggyJenkins.ApiClient, root.SwaggyJenkins.ExtensionClassImpl);
  }
}(this, function(ApiClient, ExtensionClassImpl) {
  'use strict';




  /**
   * The ExtensionClassContainerImpl1map model module.
   * @module model/ExtensionClassContainerImpl1map
   * @version 1.1.0
   */

  /**
   * Constructs a new <code>ExtensionClassContainerImpl1map</code>.
   * @alias module:model/ExtensionClassContainerImpl1map
   * @class
   */
  var exports = function() {
    var _this = this;




  };

  /**
   * Constructs a <code>ExtensionClassContainerImpl1map</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ExtensionClassContainerImpl1map} obj Optional instance to populate.
   * @return {module:model/ExtensionClassContainerImpl1map} The populated <code>ExtensionClassContainerImpl1map</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('io.jenkins.blueocean.service.embedded.rest.PipelineImpl')) {
        obj['io.jenkins.blueocean.service.embedded.rest.PipelineImpl'] = ExtensionClassImpl.constructFromObject(data['io.jenkins.blueocean.service.embedded.rest.PipelineImpl']);
      }
      if (data.hasOwnProperty('io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl')) {
        obj['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'] = ExtensionClassImpl.constructFromObject(data['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl']);
      }
      if (data.hasOwnProperty('_class')) {
        obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
      }
    }
    return obj;
  }

  /**
   * @member {module:model/ExtensionClassImpl} io.jenkins.blueocean.service.embedded.rest.PipelineImpl
   */
  exports.prototype['io.jenkins.blueocean.service.embedded.rest.PipelineImpl'] = undefined;
  /**
   * @member {module:model/ExtensionClassImpl} io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl
   */
  exports.prototype['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'] = undefined;
  /**
   * @member {String} _class
   */
  exports.prototype['_class'] = undefined;



  return exports;
}));


