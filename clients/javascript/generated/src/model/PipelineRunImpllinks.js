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
    define(['ApiClient', 'model/Link'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./Link'));
  } else {
    // Browser globals (root is window)
    if (!root.SwaggyJenkins) {
      root.SwaggyJenkins = {};
    }
    root.SwaggyJenkins.PipelineRunImpllinks = factory(root.SwaggyJenkins.ApiClient, root.SwaggyJenkins.Link);
  }
}(this, function(ApiClient, Link) {
  'use strict';




  /**
   * The PipelineRunImpllinks model module.
   * @module model/PipelineRunImpllinks
   * @version 1.1.0
   */

  /**
   * Constructs a new <code>PipelineRunImpllinks</code>.
   * @alias module:model/PipelineRunImpllinks
   * @class
   */
  var exports = function() {
    var _this = this;







  };

  /**
   * Constructs a <code>PipelineRunImpllinks</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/PipelineRunImpllinks} obj Optional instance to populate.
   * @return {module:model/PipelineRunImpllinks} The populated <code>PipelineRunImpllinks</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('nodes')) {
        obj['nodes'] = Link.constructFromObject(data['nodes']);
      }
      if (data.hasOwnProperty('log')) {
        obj['log'] = Link.constructFromObject(data['log']);
      }
      if (data.hasOwnProperty('self')) {
        obj['self'] = Link.constructFromObject(data['self']);
      }
      if (data.hasOwnProperty('actions')) {
        obj['actions'] = Link.constructFromObject(data['actions']);
      }
      if (data.hasOwnProperty('steps')) {
        obj['steps'] = Link.constructFromObject(data['steps']);
      }
      if (data.hasOwnProperty('_class')) {
        obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
      }
    }
    return obj;
  }

  /**
   * @member {module:model/Link} nodes
   */
  exports.prototype['nodes'] = undefined;
  /**
   * @member {module:model/Link} log
   */
  exports.prototype['log'] = undefined;
  /**
   * @member {module:model/Link} self
   */
  exports.prototype['self'] = undefined;
  /**
   * @member {module:model/Link} actions
   */
  exports.prototype['actions'] = undefined;
  /**
   * @member {module:model/Link} steps
   */
  exports.prototype['steps'] = undefined;
  /**
   * @member {String} _class
   */
  exports.prototype['_class'] = undefined;



  return exports;
}));


