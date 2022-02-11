"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _AllView = _interopRequireDefault(require("./AllView"));

var _FreeStyleProject = _interopRequireDefault(require("./FreeStyleProject"));

var _HudsonassignedLabels = _interopRequireDefault(require("./HudsonassignedLabels"));

var _UnlabeledLoadStatistics = _interopRequireDefault(require("./UnlabeledLoadStatistics"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The Hudson model module.
 * @module model/Hudson
 * @version 1.1.2-pre.0
 */
var Hudson = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>Hudson</code>.
   * @alias module:model/Hudson
   */
  function Hudson() {
    _classCallCheck(this, Hudson);

    Hudson.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(Hudson, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>Hudson</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Hudson} obj Optional instance to populate.
     * @return {module:model/Hudson} The populated <code>Hudson</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new Hudson();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('assignedLabels')) {
          obj['assignedLabels'] = _ApiClient["default"].convertToType(data['assignedLabels'], [_HudsonassignedLabels["default"]]);
        }

        if (data.hasOwnProperty('mode')) {
          obj['mode'] = _ApiClient["default"].convertToType(data['mode'], 'String');
        }

        if (data.hasOwnProperty('nodeDescription')) {
          obj['nodeDescription'] = _ApiClient["default"].convertToType(data['nodeDescription'], 'String');
        }

        if (data.hasOwnProperty('nodeName')) {
          obj['nodeName'] = _ApiClient["default"].convertToType(data['nodeName'], 'String');
        }

        if (data.hasOwnProperty('numExecutors')) {
          obj['numExecutors'] = _ApiClient["default"].convertToType(data['numExecutors'], 'Number');
        }

        if (data.hasOwnProperty('description')) {
          obj['description'] = _ApiClient["default"].convertToType(data['description'], 'String');
        }

        if (data.hasOwnProperty('jobs')) {
          obj['jobs'] = _ApiClient["default"].convertToType(data['jobs'], [_FreeStyleProject["default"]]);
        }

        if (data.hasOwnProperty('primaryView')) {
          obj['primaryView'] = _AllView["default"].constructFromObject(data['primaryView']);
        }

        if (data.hasOwnProperty('quietingDown')) {
          obj['quietingDown'] = _ApiClient["default"].convertToType(data['quietingDown'], 'Boolean');
        }

        if (data.hasOwnProperty('slaveAgentPort')) {
          obj['slaveAgentPort'] = _ApiClient["default"].convertToType(data['slaveAgentPort'], 'Number');
        }

        if (data.hasOwnProperty('unlabeledLoad')) {
          obj['unlabeledLoad'] = _UnlabeledLoadStatistics["default"].constructFromObject(data['unlabeledLoad']);
        }

        if (data.hasOwnProperty('useCrumbs')) {
          obj['useCrumbs'] = _ApiClient["default"].convertToType(data['useCrumbs'], 'Boolean');
        }

        if (data.hasOwnProperty('useSecurity')) {
          obj['useSecurity'] = _ApiClient["default"].convertToType(data['useSecurity'], 'Boolean');
        }

        if (data.hasOwnProperty('views')) {
          obj['views'] = _ApiClient["default"].convertToType(data['views'], [_AllView["default"]]);
        }
      }

      return obj;
    }
  }]);

  return Hudson;
}();
/**
 * @member {String} _class
 */


Hudson.prototype['_class'] = undefined;
/**
 * @member {Array.<module:model/HudsonassignedLabels>} assignedLabels
 */

Hudson.prototype['assignedLabels'] = undefined;
/**
 * @member {String} mode
 */

Hudson.prototype['mode'] = undefined;
/**
 * @member {String} nodeDescription
 */

Hudson.prototype['nodeDescription'] = undefined;
/**
 * @member {String} nodeName
 */

Hudson.prototype['nodeName'] = undefined;
/**
 * @member {Number} numExecutors
 */

Hudson.prototype['numExecutors'] = undefined;
/**
 * @member {String} description
 */

Hudson.prototype['description'] = undefined;
/**
 * @member {Array.<module:model/FreeStyleProject>} jobs
 */

Hudson.prototype['jobs'] = undefined;
/**
 * @member {module:model/AllView} primaryView
 */

Hudson.prototype['primaryView'] = undefined;
/**
 * @member {Boolean} quietingDown
 */

Hudson.prototype['quietingDown'] = undefined;
/**
 * @member {Number} slaveAgentPort
 */

Hudson.prototype['slaveAgentPort'] = undefined;
/**
 * @member {module:model/UnlabeledLoadStatistics} unlabeledLoad
 */

Hudson.prototype['unlabeledLoad'] = undefined;
/**
 * @member {Boolean} useCrumbs
 */

Hudson.prototype['useCrumbs'] = undefined;
/**
 * @member {Boolean} useSecurity
 */

Hudson.prototype['useSecurity'] = undefined;
/**
 * @member {Array.<module:model/AllView>} views
 */

Hudson.prototype['views'] = undefined;
var _default = Hudson;
exports["default"] = _default;