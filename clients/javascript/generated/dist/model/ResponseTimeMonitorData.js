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
 * The ResponseTimeMonitorData model module.
 * @module model/ResponseTimeMonitorData
 * @version 1.1.2-pre.0
 */
var ResponseTimeMonitorData = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>ResponseTimeMonitorData</code>.
   * @alias module:model/ResponseTimeMonitorData
   */
  function ResponseTimeMonitorData() {
    _classCallCheck(this, ResponseTimeMonitorData);

    ResponseTimeMonitorData.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(ResponseTimeMonitorData, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>ResponseTimeMonitorData</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeMonitorData} obj Optional instance to populate.
     * @return {module:model/ResponseTimeMonitorData} The populated <code>ResponseTimeMonitorData</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new ResponseTimeMonitorData();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('timestamp')) {
          obj['timestamp'] = _ApiClient["default"].convertToType(data['timestamp'], 'Number');
        }

        if (data.hasOwnProperty('average')) {
          obj['average'] = _ApiClient["default"].convertToType(data['average'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return ResponseTimeMonitorData;
}();
/**
 * @member {String} _class
 */


ResponseTimeMonitorData.prototype['_class'] = undefined;
/**
 * @member {Number} timestamp
 */

ResponseTimeMonitorData.prototype['timestamp'] = undefined;
/**
 * @member {Number} average
 */

ResponseTimeMonitorData.prototype['average'] = undefined;
var _default = ResponseTimeMonitorData;
exports["default"] = _default;