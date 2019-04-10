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
    define(['ApiClient', 'model/HudsonMasterComputer'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./HudsonMasterComputer'));
  } else {
    // Browser globals (root is window)
    if (!root.SwaggyJenkins) {
      root.SwaggyJenkins = {};
    }
    root.SwaggyJenkins.ComputerSet = factory(root.SwaggyJenkins.ApiClient, root.SwaggyJenkins.HudsonMasterComputer);
  }
}(this, function(ApiClient, HudsonMasterComputer) {
  'use strict';




  /**
   * The ComputerSet model module.
   * @module model/ComputerSet
   * @version 1.1.0
   */

  /**
   * Constructs a new <code>ComputerSet</code>.
   * @alias module:model/ComputerSet
   * @class
   */
  var exports = function() {
    var _this = this;






  };

  /**
   * Constructs a <code>ComputerSet</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ComputerSet} obj Optional instance to populate.
   * @return {module:model/ComputerSet} The populated <code>ComputerSet</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('_class')) {
        obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
      }
      if (data.hasOwnProperty('busyExecutors')) {
        obj['busyExecutors'] = ApiClient.convertToType(data['busyExecutors'], 'Number');
      }
      if (data.hasOwnProperty('computer')) {
        obj['computer'] = ApiClient.convertToType(data['computer'], [HudsonMasterComputer]);
      }
      if (data.hasOwnProperty('displayName')) {
        obj['displayName'] = ApiClient.convertToType(data['displayName'], 'String');
      }
      if (data.hasOwnProperty('totalExecutors')) {
        obj['totalExecutors'] = ApiClient.convertToType(data['totalExecutors'], 'Number');
      }
    }
    return obj;
  }

  /**
   * @member {String} _class
   */
  exports.prototype['_class'] = undefined;
  /**
   * @member {Number} busyExecutors
   */
  exports.prototype['busyExecutors'] = undefined;
  /**
   * @member {Array.<module:model/HudsonMasterComputer>} computer
   */
  exports.prototype['computer'] = undefined;
  /**
   * @member {String} displayName
   */
  exports.prototype['displayName'] = undefined;
  /**
   * @member {Number} totalExecutors
   */
  exports.prototype['totalExecutors'] = undefined;



  return exports;
}));


