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
    define(['ApiClient', 'model/CauseAction', 'model/FreeStyleBuild', 'model/FreeStyleProject'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./CauseAction'), require('./FreeStyleBuild'), require('./FreeStyleProject'));
  } else {
    // Browser globals (root is window)
    if (!root.SwaggyJenkins) {
      root.SwaggyJenkins = {};
    }
    root.SwaggyJenkins.QueueLeftItem = factory(root.SwaggyJenkins.ApiClient, root.SwaggyJenkins.CauseAction, root.SwaggyJenkins.FreeStyleBuild, root.SwaggyJenkins.FreeStyleProject);
  }
}(this, function(ApiClient, CauseAction, FreeStyleBuild, FreeStyleProject) {
  'use strict';




  /**
   * The QueueLeftItem model module.
   * @module model/QueueLeftItem
   * @version 1.1.1
   */

  /**
   * Constructs a new <code>QueueLeftItem</code>.
   * @alias module:model/QueueLeftItem
   * @class
   */
  var exports = function() {
    var _this = this;














  };

  /**
   * Constructs a <code>QueueLeftItem</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/QueueLeftItem} obj Optional instance to populate.
   * @return {module:model/QueueLeftItem} The populated <code>QueueLeftItem</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('_class')) {
        obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
      }
      if (data.hasOwnProperty('actions')) {
        obj['actions'] = ApiClient.convertToType(data['actions'], [CauseAction]);
      }
      if (data.hasOwnProperty('blocked')) {
        obj['blocked'] = ApiClient.convertToType(data['blocked'], 'Boolean');
      }
      if (data.hasOwnProperty('buildable')) {
        obj['buildable'] = ApiClient.convertToType(data['buildable'], 'Boolean');
      }
      if (data.hasOwnProperty('id')) {
        obj['id'] = ApiClient.convertToType(data['id'], 'Number');
      }
      if (data.hasOwnProperty('inQueueSince')) {
        obj['inQueueSince'] = ApiClient.convertToType(data['inQueueSince'], 'Number');
      }
      if (data.hasOwnProperty('params')) {
        obj['params'] = ApiClient.convertToType(data['params'], 'String');
      }
      if (data.hasOwnProperty('stuck')) {
        obj['stuck'] = ApiClient.convertToType(data['stuck'], 'Boolean');
      }
      if (data.hasOwnProperty('task')) {
        obj['task'] = FreeStyleProject.constructFromObject(data['task']);
      }
      if (data.hasOwnProperty('url')) {
        obj['url'] = ApiClient.convertToType(data['url'], 'String');
      }
      if (data.hasOwnProperty('why')) {
        obj['why'] = ApiClient.convertToType(data['why'], 'String');
      }
      if (data.hasOwnProperty('cancelled')) {
        obj['cancelled'] = ApiClient.convertToType(data['cancelled'], 'Boolean');
      }
      if (data.hasOwnProperty('executable')) {
        obj['executable'] = FreeStyleBuild.constructFromObject(data['executable']);
      }
    }
    return obj;
  }

  /**
   * @member {String} _class
   */
  exports.prototype['_class'] = undefined;
  /**
   * @member {Array.<module:model/CauseAction>} actions
   */
  exports.prototype['actions'] = undefined;
  /**
   * @member {Boolean} blocked
   */
  exports.prototype['blocked'] = undefined;
  /**
   * @member {Boolean} buildable
   */
  exports.prototype['buildable'] = undefined;
  /**
   * @member {Number} id
   */
  exports.prototype['id'] = undefined;
  /**
   * @member {Number} inQueueSince
   */
  exports.prototype['inQueueSince'] = undefined;
  /**
   * @member {String} params
   */
  exports.prototype['params'] = undefined;
  /**
   * @member {Boolean} stuck
   */
  exports.prototype['stuck'] = undefined;
  /**
   * @member {module:model/FreeStyleProject} task
   */
  exports.prototype['task'] = undefined;
  /**
   * @member {String} url
   */
  exports.prototype['url'] = undefined;
  /**
   * @member {String} why
   */
  exports.prototype['why'] = undefined;
  /**
   * @member {Boolean} cancelled
   */
  exports.prototype['cancelled'] = undefined;
  /**
   * @member {module:model/FreeStyleBuild} executable
   */
  exports.prototype['executable'] = undefined;



  return exports;
}));


