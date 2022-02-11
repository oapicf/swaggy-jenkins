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
 * The UnlabeledLoadStatistics model module.
 * @module model/UnlabeledLoadStatistics
 * @version 1.1.2-pre.0
 */
var UnlabeledLoadStatistics = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>UnlabeledLoadStatistics</code>.
   * @alias module:model/UnlabeledLoadStatistics
   */
  function UnlabeledLoadStatistics() {
    _classCallCheck(this, UnlabeledLoadStatistics);

    UnlabeledLoadStatistics.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(UnlabeledLoadStatistics, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>UnlabeledLoadStatistics</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UnlabeledLoadStatistics} obj Optional instance to populate.
     * @return {module:model/UnlabeledLoadStatistics} The populated <code>UnlabeledLoadStatistics</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new UnlabeledLoadStatistics();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return UnlabeledLoadStatistics;
}();
/**
 * @member {String} _class
 */


UnlabeledLoadStatistics.prototype['_class'] = undefined;
var _default = UnlabeledLoadStatistics;
exports["default"] = _default;