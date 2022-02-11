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
 * The GithubRepositorypermissions model module.
 * @module model/GithubRepositorypermissions
 * @version 1.1.2-pre.0
 */
var GithubRepositorypermissions = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GithubRepositorypermissions</code>.
   * @alias module:model/GithubRepositorypermissions
   */
  function GithubRepositorypermissions() {
    _classCallCheck(this, GithubRepositorypermissions);

    GithubRepositorypermissions.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GithubRepositorypermissions, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GithubRepositorypermissions</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubRepositorypermissions} obj Optional instance to populate.
     * @return {module:model/GithubRepositorypermissions} The populated <code>GithubRepositorypermissions</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GithubRepositorypermissions();

        if (data.hasOwnProperty('admin')) {
          obj['admin'] = _ApiClient["default"].convertToType(data['admin'], 'Boolean');
        }

        if (data.hasOwnProperty('push')) {
          obj['push'] = _ApiClient["default"].convertToType(data['push'], 'Boolean');
        }

        if (data.hasOwnProperty('pull')) {
          obj['pull'] = _ApiClient["default"].convertToType(data['pull'], 'Boolean');
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return GithubRepositorypermissions;
}();
/**
 * @member {Boolean} admin
 */


GithubRepositorypermissions.prototype['admin'] = undefined;
/**
 * @member {Boolean} push
 */

GithubRepositorypermissions.prototype['push'] = undefined;
/**
 * @member {Boolean} pull
 */

GithubRepositorypermissions.prototype['pull'] = undefined;
/**
 * @member {String} _class
 */

GithubRepositorypermissions.prototype['_class'] = undefined;
var _default = GithubRepositorypermissions;
exports["default"] = _default;