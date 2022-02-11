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
 * The DiskSpaceMonitorDescriptorDiskSpace model module.
 * @module model/DiskSpaceMonitorDescriptorDiskSpace
 * @version 1.1.2-pre.0
 */
var DiskSpaceMonitorDescriptorDiskSpace = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>DiskSpaceMonitorDescriptorDiskSpace</code>.
   * @alias module:model/DiskSpaceMonitorDescriptorDiskSpace
   */
  function DiskSpaceMonitorDescriptorDiskSpace() {
    _classCallCheck(this, DiskSpaceMonitorDescriptorDiskSpace);

    DiskSpaceMonitorDescriptorDiskSpace.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(DiskSpaceMonitorDescriptorDiskSpace, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>DiskSpaceMonitorDescriptorDiskSpace</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DiskSpaceMonitorDescriptorDiskSpace} obj Optional instance to populate.
     * @return {module:model/DiskSpaceMonitorDescriptorDiskSpace} The populated <code>DiskSpaceMonitorDescriptorDiskSpace</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new DiskSpaceMonitorDescriptorDiskSpace();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('timestamp')) {
          obj['timestamp'] = _ApiClient["default"].convertToType(data['timestamp'], 'Number');
        }

        if (data.hasOwnProperty('path')) {
          obj['path'] = _ApiClient["default"].convertToType(data['path'], 'String');
        }

        if (data.hasOwnProperty('size')) {
          obj['size'] = _ApiClient["default"].convertToType(data['size'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return DiskSpaceMonitorDescriptorDiskSpace;
}();
/**
 * @member {String} _class
 */


DiskSpaceMonitorDescriptorDiskSpace.prototype['_class'] = undefined;
/**
 * @member {Number} timestamp
 */

DiskSpaceMonitorDescriptorDiskSpace.prototype['timestamp'] = undefined;
/**
 * @member {String} path
 */

DiskSpaceMonitorDescriptorDiskSpace.prototype['path'] = undefined;
/**
 * @member {Number} size
 */

DiskSpaceMonitorDescriptorDiskSpace.prototype['size'] = undefined;
var _default = DiskSpaceMonitorDescriptorDiskSpace;
exports["default"] = _default;