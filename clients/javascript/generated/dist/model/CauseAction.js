"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _CauseUserIdCause = _interopRequireDefault(require("./CauseUserIdCause"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The CauseAction model module.
 * @module model/CauseAction
 * @version 1.1.2-pre.0
 */
var CauseAction = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>CauseAction</code>.
   * @alias module:model/CauseAction
   */
  function CauseAction() {
    _classCallCheck(this, CauseAction);

    CauseAction.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(CauseAction, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>CauseAction</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CauseAction} obj Optional instance to populate.
     * @return {module:model/CauseAction} The populated <code>CauseAction</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new CauseAction();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('causes')) {
          obj['causes'] = _ApiClient["default"].convertToType(data['causes'], [_CauseUserIdCause["default"]]);
        }
      }

      return obj;
    }
  }]);

  return CauseAction;
}();
/**
 * @member {String} _class
 */


CauseAction.prototype['_class'] = undefined;
/**
 * @member {Array.<module:model/CauseUserIdCause>} causes
 */

CauseAction.prototype['causes'] = undefined;
var _default = CauseAction;
exports["default"] = _default;