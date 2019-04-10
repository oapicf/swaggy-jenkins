/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
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
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.SwaggyJenkins) {
      root.SwaggyJenkins = {};
    }
    root.SwaggyJenkins.SwapSpaceMonitorMemoryUsage2 = factory(root.SwaggyJenkins.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The SwapSpaceMonitorMemoryUsage2 model module.
   * @module model/SwapSpaceMonitorMemoryUsage2
   * @version 1.1.1
   */

  /**
   * Constructs a new <code>SwapSpaceMonitorMemoryUsage2</code>.
   * @alias module:model/SwapSpaceMonitorMemoryUsage2
   * @class
   */
  var exports = function() {
    var _this = this;






  };

  /**
   * Constructs a <code>SwapSpaceMonitorMemoryUsage2</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/SwapSpaceMonitorMemoryUsage2} obj Optional instance to populate.
   * @return {module:model/SwapSpaceMonitorMemoryUsage2} The populated <code>SwapSpaceMonitorMemoryUsage2</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('_class')) {
        obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
      }
      if (data.hasOwnProperty('availablePhysicalMemory')) {
        obj['availablePhysicalMemory'] = ApiClient.convertToType(data['availablePhysicalMemory'], 'Number');
      }
      if (data.hasOwnProperty('availableSwapSpace')) {
        obj['availableSwapSpace'] = ApiClient.convertToType(data['availableSwapSpace'], 'Number');
      }
      if (data.hasOwnProperty('totalPhysicalMemory')) {
        obj['totalPhysicalMemory'] = ApiClient.convertToType(data['totalPhysicalMemory'], 'Number');
      }
      if (data.hasOwnProperty('totalSwapSpace')) {
        obj['totalSwapSpace'] = ApiClient.convertToType(data['totalSwapSpace'], 'Number');
      }
    }
    return obj;
  }

  /**
   * @member {String} _class
   */
  exports.prototype['_class'] = undefined;
  /**
   * @member {Number} availablePhysicalMemory
   */
  exports.prototype['availablePhysicalMemory'] = undefined;
  /**
   * @member {Number} availableSwapSpace
   */
  exports.prototype['availableSwapSpace'] = undefined;
  /**
   * @member {Number} totalPhysicalMemory
   */
  exports.prototype['totalPhysicalMemory'] = undefined;
  /**
   * @member {Number} totalSwapSpace
   */
  exports.prototype['totalSwapSpace'] = undefined;



  return exports;
}));


