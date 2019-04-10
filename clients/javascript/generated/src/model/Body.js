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
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.SwaggyJenkins) {
      root.SwaggyJenkins = {};
    }
    root.SwaggyJenkins.Body = factory(root.SwaggyJenkins.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The Body model module.
   * @module model/Body
   * @version 1.1.0
   */

  /**
   * Constructs a new <code>Body</code>.
   * @alias module:model/Body
   * @class
   * @param favorite {Boolean} 
   */
  var exports = function(favorite) {
    var _this = this;

    _this['favorite'] = favorite;
  };

  /**
   * Constructs a <code>Body</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Body} obj Optional instance to populate.
   * @return {module:model/Body} The populated <code>Body</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('favorite')) {
        obj['favorite'] = ApiClient.convertToType(data['favorite'], 'Boolean');
      }
    }
    return obj;
  }

  /**
   * @member {Boolean} favorite
   */
  exports.prototype['favorite'] = undefined;



  return exports;
}));


