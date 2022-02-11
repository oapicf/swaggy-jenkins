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
 * The FreeStyleProjecthealthReport model module.
 * @module model/FreeStyleProjecthealthReport
 * @version 1.1.2-pre.0
 */
var FreeStyleProjecthealthReport = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>FreeStyleProjecthealthReport</code>.
   * @alias module:model/FreeStyleProjecthealthReport
   */
  function FreeStyleProjecthealthReport() {
    _classCallCheck(this, FreeStyleProjecthealthReport);

    FreeStyleProjecthealthReport.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(FreeStyleProjecthealthReport, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>FreeStyleProjecthealthReport</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FreeStyleProjecthealthReport} obj Optional instance to populate.
     * @return {module:model/FreeStyleProjecthealthReport} The populated <code>FreeStyleProjecthealthReport</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new FreeStyleProjecthealthReport();

        if (data.hasOwnProperty('description')) {
          obj['description'] = _ApiClient["default"].convertToType(data['description'], 'String');
        }

        if (data.hasOwnProperty('iconClassName')) {
          obj['iconClassName'] = _ApiClient["default"].convertToType(data['iconClassName'], 'String');
        }

        if (data.hasOwnProperty('iconUrl')) {
          obj['iconUrl'] = _ApiClient["default"].convertToType(data['iconUrl'], 'String');
        }

        if (data.hasOwnProperty('score')) {
          obj['score'] = _ApiClient["default"].convertToType(data['score'], 'Number');
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return FreeStyleProjecthealthReport;
}();
/**
 * @member {String} description
 */


FreeStyleProjecthealthReport.prototype['description'] = undefined;
/**
 * @member {String} iconClassName
 */

FreeStyleProjecthealthReport.prototype['iconClassName'] = undefined;
/**
 * @member {String} iconUrl
 */

FreeStyleProjecthealthReport.prototype['iconUrl'] = undefined;
/**
 * @member {Number} score
 */

FreeStyleProjecthealthReport.prototype['score'] = undefined;
/**
 * @member {String} _class
 */

FreeStyleProjecthealthReport.prototype['_class'] = undefined;
var _default = FreeStyleProjecthealthReport;
exports["default"] = _default;