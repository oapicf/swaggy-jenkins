"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ClockDifference = _interopRequireDefault(require("./ClockDifference"));

var _DiskSpaceMonitorDescriptorDiskSpace = _interopRequireDefault(require("./DiskSpaceMonitorDescriptorDiskSpace"));

var _ResponseTimeMonitorData = _interopRequireDefault(require("./ResponseTimeMonitorData"));

var _SwapSpaceMonitorMemoryUsage = _interopRequireDefault(require("./SwapSpaceMonitorMemoryUsage2"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The HudsonMasterComputermonitorData model module.
 * @module model/HudsonMasterComputermonitorData
 * @version 1.1.2-pre.0
 */
var HudsonMasterComputermonitorData = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>HudsonMasterComputermonitorData</code>.
   * @alias module:model/HudsonMasterComputermonitorData
   */
  function HudsonMasterComputermonitorData() {
    _classCallCheck(this, HudsonMasterComputermonitorData);

    HudsonMasterComputermonitorData.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(HudsonMasterComputermonitorData, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>HudsonMasterComputermonitorData</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/HudsonMasterComputermonitorData} obj Optional instance to populate.
     * @return {module:model/HudsonMasterComputermonitorData} The populated <code>HudsonMasterComputermonitorData</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new HudsonMasterComputermonitorData();

        if (data.hasOwnProperty('hudson.node_monitors.SwapSpaceMonitor')) {
          obj['hudson.node_monitors.SwapSpaceMonitor'] = _SwapSpaceMonitorMemoryUsage["default"].constructFromObject(data['hudson.node_monitors.SwapSpaceMonitor']);
        }

        if (data.hasOwnProperty('hudson.node_monitors.TemporarySpaceMonitor')) {
          obj['hudson.node_monitors.TemporarySpaceMonitor'] = _DiskSpaceMonitorDescriptorDiskSpace["default"].constructFromObject(data['hudson.node_monitors.TemporarySpaceMonitor']);
        }

        if (data.hasOwnProperty('hudson.node_monitors.DiskSpaceMonitor')) {
          obj['hudson.node_monitors.DiskSpaceMonitor'] = _DiskSpaceMonitorDescriptorDiskSpace["default"].constructFromObject(data['hudson.node_monitors.DiskSpaceMonitor']);
        }

        if (data.hasOwnProperty('hudson.node_monitors.ArchitectureMonitor')) {
          obj['hudson.node_monitors.ArchitectureMonitor'] = _ApiClient["default"].convertToType(data['hudson.node_monitors.ArchitectureMonitor'], 'String');
        }

        if (data.hasOwnProperty('hudson.node_monitors.ResponseTimeMonitor')) {
          obj['hudson.node_monitors.ResponseTimeMonitor'] = _ResponseTimeMonitorData["default"].constructFromObject(data['hudson.node_monitors.ResponseTimeMonitor']);
        }

        if (data.hasOwnProperty('hudson.node_monitors.ClockMonitor')) {
          obj['hudson.node_monitors.ClockMonitor'] = _ClockDifference["default"].constructFromObject(data['hudson.node_monitors.ClockMonitor']);
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return HudsonMasterComputermonitorData;
}();
/**
 * @member {module:model/SwapSpaceMonitorMemoryUsage2} hudson.node_monitors.SwapSpaceMonitor
 */


HudsonMasterComputermonitorData.prototype['hudson.node_monitors.SwapSpaceMonitor'] = undefined;
/**
 * @member {module:model/DiskSpaceMonitorDescriptorDiskSpace} hudson.node_monitors.TemporarySpaceMonitor
 */

HudsonMasterComputermonitorData.prototype['hudson.node_monitors.TemporarySpaceMonitor'] = undefined;
/**
 * @member {module:model/DiskSpaceMonitorDescriptorDiskSpace} hudson.node_monitors.DiskSpaceMonitor
 */

HudsonMasterComputermonitorData.prototype['hudson.node_monitors.DiskSpaceMonitor'] = undefined;
/**
 * @member {String} hudson.node_monitors.ArchitectureMonitor
 */

HudsonMasterComputermonitorData.prototype['hudson.node_monitors.ArchitectureMonitor'] = undefined;
/**
 * @member {module:model/ResponseTimeMonitorData} hudson.node_monitors.ResponseTimeMonitor
 */

HudsonMasterComputermonitorData.prototype['hudson.node_monitors.ResponseTimeMonitor'] = undefined;
/**
 * @member {module:model/ClockDifference} hudson.node_monitors.ClockMonitor
 */

HudsonMasterComputermonitorData.prototype['hudson.node_monitors.ClockMonitor'] = undefined;
/**
 * @member {String} _class
 */

HudsonMasterComputermonitorData.prototype['_class'] = undefined;
var _default = HudsonMasterComputermonitorData;
exports["default"] = _default;