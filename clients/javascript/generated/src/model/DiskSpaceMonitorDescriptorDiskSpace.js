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
    root.SwaggyJenkins.DiskSpaceMonitorDescriptorDiskSpace = factory(root.SwaggyJenkins.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The DiskSpaceMonitorDescriptorDiskSpace model module.
   * @module model/DiskSpaceMonitorDescriptorDiskSpace
   * @version 1.1.1
   */

  /**
   * Constructs a new <code>DiskSpaceMonitorDescriptorDiskSpace</code>.
   * @alias module:model/DiskSpaceMonitorDescriptorDiskSpace
   * @class
   */
  var exports = function() {
    var _this = this;





  };

  /**
   * Constructs a <code>DiskSpaceMonitorDescriptorDiskSpace</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/DiskSpaceMonitorDescriptorDiskSpace} obj Optional instance to populate.
   * @return {module:model/DiskSpaceMonitorDescriptorDiskSpace} The populated <code>DiskSpaceMonitorDescriptorDiskSpace</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('_class')) {
        obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
      }
      if (data.hasOwnProperty('timestamp')) {
        obj['timestamp'] = ApiClient.convertToType(data['timestamp'], 'Number');
      }
      if (data.hasOwnProperty('path')) {
        obj['path'] = ApiClient.convertToType(data['path'], 'String');
      }
      if (data.hasOwnProperty('size')) {
        obj['size'] = ApiClient.convertToType(data['size'], 'Number');
      }
    }
    return obj;
  }

  /**
   * @member {String} _class
   */
  exports.prototype['_class'] = undefined;
  /**
   * @member {Number} timestamp
   */
  exports.prototype['timestamp'] = undefined;
  /**
   * @member {String} path
   */
  exports.prototype['path'] = undefined;
  /**
   * @member {Number} size
   */
  exports.prototype['size'] = undefined;



  return exports;
}));


