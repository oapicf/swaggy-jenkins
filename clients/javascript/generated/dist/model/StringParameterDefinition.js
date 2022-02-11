"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _StringParameterValue = _interopRequireDefault(require("./StringParameterValue"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The StringParameterDefinition model module.
 * @module model/StringParameterDefinition
 * @version 1.1.2-pre.0
 */
var StringParameterDefinition = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>StringParameterDefinition</code>.
   * @alias module:model/StringParameterDefinition
   */
  function StringParameterDefinition() {
    _classCallCheck(this, StringParameterDefinition);

    StringParameterDefinition.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(StringParameterDefinition, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>StringParameterDefinition</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/StringParameterDefinition} obj Optional instance to populate.
     * @return {module:model/StringParameterDefinition} The populated <code>StringParameterDefinition</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new StringParameterDefinition();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('defaultParameterValue')) {
          obj['defaultParameterValue'] = _StringParameterValue["default"].constructFromObject(data['defaultParameterValue']);
        }

        if (data.hasOwnProperty('description')) {
          obj['description'] = _ApiClient["default"].convertToType(data['description'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('type')) {
          obj['type'] = _ApiClient["default"].convertToType(data['type'], 'String');
        }
      }

      return obj;
    }
  }]);

  return StringParameterDefinition;
}();
/**
 * @member {String} _class
 */


StringParameterDefinition.prototype['_class'] = undefined;
/**
 * @member {module:model/StringParameterValue} defaultParameterValue
 */

StringParameterDefinition.prototype['defaultParameterValue'] = undefined;
/**
 * @member {String} description
 */

StringParameterDefinition.prototype['description'] = undefined;
/**
 * @member {String} name
 */

StringParameterDefinition.prototype['name'] = undefined;
/**
 * @member {String} type
 */

StringParameterDefinition.prototype['type'] = undefined;
var _default = StringParameterDefinition;
exports["default"] = _default;