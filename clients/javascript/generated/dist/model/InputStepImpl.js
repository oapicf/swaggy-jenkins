"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _InputStepImpllinks = _interopRequireDefault(require("./InputStepImpllinks"));

var _StringParameterDefinition = _interopRequireDefault(require("./StringParameterDefinition"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The InputStepImpl model module.
 * @module model/InputStepImpl
 * @version 1.1.2-pre.0
 */
var InputStepImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>InputStepImpl</code>.
   * @alias module:model/InputStepImpl
   */
  function InputStepImpl() {
    _classCallCheck(this, InputStepImpl);

    InputStepImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(InputStepImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>InputStepImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InputStepImpl} obj Optional instance to populate.
     * @return {module:model/InputStepImpl} The populated <code>InputStepImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new InputStepImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _InputStepImpllinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'String');
        }

        if (data.hasOwnProperty('message')) {
          obj['message'] = _ApiClient["default"].convertToType(data['message'], 'String');
        }

        if (data.hasOwnProperty('ok')) {
          obj['ok'] = _ApiClient["default"].convertToType(data['ok'], 'String');
        }

        if (data.hasOwnProperty('parameters')) {
          obj['parameters'] = _ApiClient["default"].convertToType(data['parameters'], [_StringParameterDefinition["default"]]);
        }

        if (data.hasOwnProperty('submitter')) {
          obj['submitter'] = _ApiClient["default"].convertToType(data['submitter'], 'String');
        }
      }

      return obj;
    }
  }]);

  return InputStepImpl;
}();
/**
 * @member {String} _class
 */


InputStepImpl.prototype['_class'] = undefined;
/**
 * @member {module:model/InputStepImpllinks} _links
 */

InputStepImpl.prototype['_links'] = undefined;
/**
 * @member {String} id
 */

InputStepImpl.prototype['id'] = undefined;
/**
 * @member {String} message
 */

InputStepImpl.prototype['message'] = undefined;
/**
 * @member {String} ok
 */

InputStepImpl.prototype['ok'] = undefined;
/**
 * @member {Array.<module:model/StringParameterDefinition>} parameters
 */

InputStepImpl.prototype['parameters'] = undefined;
/**
 * @member {String} submitter
 */

InputStepImpl.prototype['submitter'] = undefined;
var _default = InputStepImpl;
exports["default"] = _default;