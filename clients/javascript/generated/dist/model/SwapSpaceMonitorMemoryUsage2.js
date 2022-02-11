"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The SwapSpaceMonitorMemoryUsage2 model module.
 * @module model/SwapSpaceMonitorMemoryUsage2
 * @version 1.1.2-pre.0
 */
var SwapSpaceMonitorMemoryUsage2 = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>SwapSpaceMonitorMemoryUsage2</code>.
   * @alias module:model/SwapSpaceMonitorMemoryUsage2
   */
  function SwapSpaceMonitorMemoryUsage2() {
    _classCallCheck(this, SwapSpaceMonitorMemoryUsage2);

    SwapSpaceMonitorMemoryUsage2.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(SwapSpaceMonitorMemoryUsage2, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>SwapSpaceMonitorMemoryUsage2</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SwapSpaceMonitorMemoryUsage2} obj Optional instance to populate.
     * @return {module:model/SwapSpaceMonitorMemoryUsage2} The populated <code>SwapSpaceMonitorMemoryUsage2</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new SwapSpaceMonitorMemoryUsage2();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('availablePhysicalMemory')) {
          obj['availablePhysicalMemory'] = _ApiClient["default"].convertToType(data['availablePhysicalMemory'], 'Number');
        }

        if (data.hasOwnProperty('availableSwapSpace')) {
          obj['availableSwapSpace'] = _ApiClient["default"].convertToType(data['availableSwapSpace'], 'Number');
        }

        if (data.hasOwnProperty('totalPhysicalMemory')) {
          obj['totalPhysicalMemory'] = _ApiClient["default"].convertToType(data['totalPhysicalMemory'], 'Number');
        }

        if (data.hasOwnProperty('totalSwapSpace')) {
          obj['totalSwapSpace'] = _ApiClient["default"].convertToType(data['totalSwapSpace'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return SwapSpaceMonitorMemoryUsage2;
}();
/**
 * @member {String} _class
 */


SwapSpaceMonitorMemoryUsage2.prototype['_class'] = undefined;
/**
 * @member {Number} availablePhysicalMemory
 */

SwapSpaceMonitorMemoryUsage2.prototype['availablePhysicalMemory'] = undefined;
/**
 * @member {Number} availableSwapSpace
 */

SwapSpaceMonitorMemoryUsage2.prototype['availableSwapSpace'] = undefined;
/**
 * @member {Number} totalPhysicalMemory
 */

SwapSpaceMonitorMemoryUsage2.prototype['totalPhysicalMemory'] = undefined;
/**
 * @member {Number} totalSwapSpace
 */

SwapSpaceMonitorMemoryUsage2.prototype['totalSwapSpace'] = undefined;
var _default = SwapSpaceMonitorMemoryUsage2;
exports["default"] = _default;