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
 * The FreeStyleProjectactions model module.
 * @module model/FreeStyleProjectactions
 * @version 1.1.2-pre.0
 */
var FreeStyleProjectactions = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>FreeStyleProjectactions</code>.
   * @alias module:model/FreeStyleProjectactions
   */
  function FreeStyleProjectactions() {
    _classCallCheck(this, FreeStyleProjectactions);

    FreeStyleProjectactions.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(FreeStyleProjectactions, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>FreeStyleProjectactions</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FreeStyleProjectactions} obj Optional instance to populate.
     * @return {module:model/FreeStyleProjectactions} The populated <code>FreeStyleProjectactions</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new FreeStyleProjectactions();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return FreeStyleProjectactions;
}();
/**
 * @member {String} _class
 */


FreeStyleProjectactions.prototype['_class'] = undefined;
var _default = FreeStyleProjectactions;
exports["default"] = _default;