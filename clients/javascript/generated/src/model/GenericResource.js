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
    root.SwaggyJenkins.GenericResource = factory(root.SwaggyJenkins.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The GenericResource model module.
   * @module model/GenericResource
   * @version 1.1.1
   */

  /**
   * Constructs a new <code>GenericResource</code>.
   * @alias module:model/GenericResource
   * @class
   */
  var exports = function() {
    var _this = this;







  };

  /**
   * Constructs a <code>GenericResource</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/GenericResource} obj Optional instance to populate.
   * @return {module:model/GenericResource} The populated <code>GenericResource</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('_class')) {
        obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
      }
      if (data.hasOwnProperty('displayName')) {
        obj['displayName'] = ApiClient.convertToType(data['displayName'], 'String');
      }
      if (data.hasOwnProperty('durationInMillis')) {
        obj['durationInMillis'] = ApiClient.convertToType(data['durationInMillis'], 'Number');
      }
      if (data.hasOwnProperty('id')) {
        obj['id'] = ApiClient.convertToType(data['id'], 'String');
      }
      if (data.hasOwnProperty('result')) {
        obj['result'] = ApiClient.convertToType(data['result'], 'String');
      }
      if (data.hasOwnProperty('startTime')) {
        obj['startTime'] = ApiClient.convertToType(data['startTime'], 'String');
      }
    }
    return obj;
  }

  /**
   * @member {String} _class
   */
  exports.prototype['_class'] = undefined;
  /**
   * @member {String} displayName
   */
  exports.prototype['displayName'] = undefined;
  /**
   * @member {Number} durationInMillis
   */
  exports.prototype['durationInMillis'] = undefined;
  /**
   * @member {String} id
   */
  exports.prototype['id'] = undefined;
  /**
   * @member {String} result
   */
  exports.prototype['result'] = undefined;
  /**
   * @member {String} startTime
   */
  exports.prototype['startTime'] = undefined;



  return exports;
}));


