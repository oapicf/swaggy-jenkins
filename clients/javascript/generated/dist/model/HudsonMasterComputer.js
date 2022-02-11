"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _HudsonMasterComputerexecutors = _interopRequireDefault(require("./HudsonMasterComputerexecutors"));

var _HudsonMasterComputermonitorData = _interopRequireDefault(require("./HudsonMasterComputermonitorData"));

var _Label = _interopRequireDefault(require("./Label1"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The HudsonMasterComputer model module.
 * @module model/HudsonMasterComputer
 * @version 1.1.2-pre.0
 */
var HudsonMasterComputer = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>HudsonMasterComputer</code>.
   * @alias module:model/HudsonMasterComputer
   */
  function HudsonMasterComputer() {
    _classCallCheck(this, HudsonMasterComputer);

    HudsonMasterComputer.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(HudsonMasterComputer, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>HudsonMasterComputer</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/HudsonMasterComputer} obj Optional instance to populate.
     * @return {module:model/HudsonMasterComputer} The populated <code>HudsonMasterComputer</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new HudsonMasterComputer();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('executors')) {
          obj['executors'] = _ApiClient["default"].convertToType(data['executors'], [_HudsonMasterComputerexecutors["default"]]);
        }

        if (data.hasOwnProperty('icon')) {
          obj['icon'] = _ApiClient["default"].convertToType(data['icon'], 'String');
        }

        if (data.hasOwnProperty('iconClassName')) {
          obj['iconClassName'] = _ApiClient["default"].convertToType(data['iconClassName'], 'String');
        }

        if (data.hasOwnProperty('idle')) {
          obj['idle'] = _ApiClient["default"].convertToType(data['idle'], 'Boolean');
        }

        if (data.hasOwnProperty('jnlpAgent')) {
          obj['jnlpAgent'] = _ApiClient["default"].convertToType(data['jnlpAgent'], 'Boolean');
        }

        if (data.hasOwnProperty('launchSupported')) {
          obj['launchSupported'] = _ApiClient["default"].convertToType(data['launchSupported'], 'Boolean');
        }

        if (data.hasOwnProperty('loadStatistics')) {
          obj['loadStatistics'] = _Label["default"].constructFromObject(data['loadStatistics']);
        }

        if (data.hasOwnProperty('manualLaunchAllowed')) {
          obj['manualLaunchAllowed'] = _ApiClient["default"].convertToType(data['manualLaunchAllowed'], 'Boolean');
        }

        if (data.hasOwnProperty('monitorData')) {
          obj['monitorData'] = _HudsonMasterComputermonitorData["default"].constructFromObject(data['monitorData']);
        }

        if (data.hasOwnProperty('numExecutors')) {
          obj['numExecutors'] = _ApiClient["default"].convertToType(data['numExecutors'], 'Number');
        }

        if (data.hasOwnProperty('offline')) {
          obj['offline'] = _ApiClient["default"].convertToType(data['offline'], 'Boolean');
        }

        if (data.hasOwnProperty('offlineCause')) {
          obj['offlineCause'] = _ApiClient["default"].convertToType(data['offlineCause'], 'String');
        }

        if (data.hasOwnProperty('offlineCauseReason')) {
          obj['offlineCauseReason'] = _ApiClient["default"].convertToType(data['offlineCauseReason'], 'String');
        }

        if (data.hasOwnProperty('temporarilyOffline')) {
          obj['temporarilyOffline'] = _ApiClient["default"].convertToType(data['temporarilyOffline'], 'Boolean');
        }
      }

      return obj;
    }
  }]);

  return HudsonMasterComputer;
}();
/**
 * @member {String} _class
 */


HudsonMasterComputer.prototype['_class'] = undefined;
/**
 * @member {String} displayName
 */

HudsonMasterComputer.prototype['displayName'] = undefined;
/**
 * @member {Array.<module:model/HudsonMasterComputerexecutors>} executors
 */

HudsonMasterComputer.prototype['executors'] = undefined;
/**
 * @member {String} icon
 */

HudsonMasterComputer.prototype['icon'] = undefined;
/**
 * @member {String} iconClassName
 */

HudsonMasterComputer.prototype['iconClassName'] = undefined;
/**
 * @member {Boolean} idle
 */

HudsonMasterComputer.prototype['idle'] = undefined;
/**
 * @member {Boolean} jnlpAgent
 */

HudsonMasterComputer.prototype['jnlpAgent'] = undefined;
/**
 * @member {Boolean} launchSupported
 */

HudsonMasterComputer.prototype['launchSupported'] = undefined;
/**
 * @member {module:model/Label1} loadStatistics
 */

HudsonMasterComputer.prototype['loadStatistics'] = undefined;
/**
 * @member {Boolean} manualLaunchAllowed
 */

HudsonMasterComputer.prototype['manualLaunchAllowed'] = undefined;
/**
 * @member {module:model/HudsonMasterComputermonitorData} monitorData
 */

HudsonMasterComputer.prototype['monitorData'] = undefined;
/**
 * @member {Number} numExecutors
 */

HudsonMasterComputer.prototype['numExecutors'] = undefined;
/**
 * @member {Boolean} offline
 */

HudsonMasterComputer.prototype['offline'] = undefined;
/**
 * @member {String} offlineCause
 */

HudsonMasterComputer.prototype['offlineCause'] = undefined;
/**
 * @member {String} offlineCauseReason
 */

HudsonMasterComputer.prototype['offlineCauseReason'] = undefined;
/**
 * @member {Boolean} temporarilyOffline
 */

HudsonMasterComputer.prototype['temporarilyOffline'] = undefined;
var _default = HudsonMasterComputer;
exports["default"] = _default;