"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Link = _interopRequireDefault(require("./Link"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The BranchImpllinks model module.
 * @module model/BranchImpllinks
 * @version 1.1.2-pre.0
 */
var BranchImpllinks = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>BranchImpllinks</code>.
   * @alias module:model/BranchImpllinks
   */
  function BranchImpllinks() {
    _classCallCheck(this, BranchImpllinks);

    BranchImpllinks.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(BranchImpllinks, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>BranchImpllinks</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BranchImpllinks} obj Optional instance to populate.
     * @return {module:model/BranchImpllinks} The populated <code>BranchImpllinks</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new BranchImpllinks();

        if (data.hasOwnProperty('self')) {
          obj['self'] = _Link["default"].constructFromObject(data['self']);
        }

        if (data.hasOwnProperty('actions')) {
          obj['actions'] = _Link["default"].constructFromObject(data['actions']);
        }

        if (data.hasOwnProperty('runs')) {
          obj['runs'] = _Link["default"].constructFromObject(data['runs']);
        }

        if (data.hasOwnProperty('queue')) {
          obj['queue'] = _Link["default"].constructFromObject(data['queue']);
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return BranchImpllinks;
}();
/**
 * @member {module:model/Link} self
 */


BranchImpllinks.prototype['self'] = undefined;
/**
 * @member {module:model/Link} actions
 */

BranchImpllinks.prototype['actions'] = undefined;
/**
 * @member {module:model/Link} runs
 */

BranchImpllinks.prototype['runs'] = undefined;
/**
 * @member {module:model/Link} queue
 */

BranchImpllinks.prototype['queue'] = undefined;
/**
 * @member {String} _class
 */

BranchImpllinks.prototype['_class'] = undefined;
var _default = BranchImpllinks;
exports["default"] = _default;