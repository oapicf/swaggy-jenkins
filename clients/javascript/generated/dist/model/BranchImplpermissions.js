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
 * The BranchImplpermissions model module.
 * @module model/BranchImplpermissions
 * @version 1.1.2-pre.0
 */
var BranchImplpermissions = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>BranchImplpermissions</code>.
   * @alias module:model/BranchImplpermissions
   */
  function BranchImplpermissions() {
    _classCallCheck(this, BranchImplpermissions);

    BranchImplpermissions.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(BranchImplpermissions, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>BranchImplpermissions</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BranchImplpermissions} obj Optional instance to populate.
     * @return {module:model/BranchImplpermissions} The populated <code>BranchImplpermissions</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new BranchImplpermissions();

        if (data.hasOwnProperty('create')) {
          obj['create'] = _ApiClient["default"].convertToType(data['create'], 'Boolean');
        }

        if (data.hasOwnProperty('read')) {
          obj['read'] = _ApiClient["default"].convertToType(data['read'], 'Boolean');
        }

        if (data.hasOwnProperty('start')) {
          obj['start'] = _ApiClient["default"].convertToType(data['start'], 'Boolean');
        }

        if (data.hasOwnProperty('stop')) {
          obj['stop'] = _ApiClient["default"].convertToType(data['stop'], 'Boolean');
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return BranchImplpermissions;
}();
/**
 * @member {Boolean} create
 */


BranchImplpermissions.prototype['create'] = undefined;
/**
 * @member {Boolean} read
 */

BranchImplpermissions.prototype['read'] = undefined;
/**
 * @member {Boolean} start
 */

BranchImplpermissions.prototype['start'] = undefined;
/**
 * @member {Boolean} stop
 */

BranchImplpermissions.prototype['stop'] = undefined;
/**
 * @member {String} _class
 */

BranchImplpermissions.prototype['_class'] = undefined;
var _default = BranchImplpermissions;
exports["default"] = _default;